package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EmployeeService;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
  @Autowired
  private AdminService adminService;
  
  @Autowired
  private EmployeeService employeeService;
  
  @GetMapping("/")
  public String main() 
  {
    return "index";
    
  }
  
  
  
  @GetMapping("empreg")// URI and method name can be different
  public ModelAndView empregistration()
  {
     ModelAndView mv = new ModelAndView();
     mv.setViewName("empreg");
     return mv;
  }
  
  @GetMapping("emplogin") 
  public ModelAndView employeelogin()
  {
    ModelAndView mv = new ModelAndView();
      mv.setViewName("emplogin");
      return mv;
  }
  
  @PostMapping("checkemplogin")
  public ModelAndView checkemplogin(HttpServletRequest request) {
    
    ModelAndView mv = new ModelAndView();
    String email = request.getParameter("email");
    String pwd = request.getParameter("pwd");
    
    Employee emp = employeeService.checkemplogin(email, pwd);
    
    if(emp!=null)
    {
      //session
      HttpSession session  = request.getSession();
      session.setAttribute("eid", emp.getId()); //eid is a session variable
      session.setAttribute("ename", emp.getName());//ename is a session variable
      
      //session
      mv.setViewName("emphome");
    }
    else {
      mv.setViewName("emplogin");
      mv.addObject("message","Login Failed");
    }
    return mv;
    
  }
  
  @GetMapping("emphome")
     public ModelAndView emphome(HttpServletRequest request)
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("emphome");
       
       HttpSession session = request.getSession();
       
       int eid = (int)session.getAttribute("eid");//eid is a session id
       String ename = (String)session.getAttribute("ename");//ename is a session variable
       
       mv.addObject("eid",eid);
       mv.addObject("ename",ename);
       
       
       return mv;
     }
  
  @GetMapping("dog")
  public ModelAndView dog()
  {
	  ModelAndView mv=new ModelAndView();
	  mv.setViewName("dog");
	  return mv;
  }
  
  @GetMapping("cat")
  public ModelAndView cat()
  {
	  ModelAndView mv=new ModelAndView();
	  mv.setViewName("cat");
	  return mv;
  }
  
  @GetMapping("bird")
  public ModelAndView bird()
  {
	  ModelAndView mv=new ModelAndView();
	  mv.setViewName("bird");
	  return mv;
  }
  
  @GetMapping("fish")
  public ModelAndView fish()
  {
	  ModelAndView mv=new ModelAndView();
	  mv.setViewName("fish");
	  return mv;
  }
  
  @GetMapping("acc")
  public ModelAndView acc()
  {
	  ModelAndView mv=new ModelAndView();
	  mv.setViewName("acc");
	  return mv;
  }
  
  @GetMapping("adminlogin") 
  public ModelAndView adminlogin()
  {
    ModelAndView mv = new ModelAndView();
      mv.setViewName("adminlogin");
      return mv;
  }
  
  @PostMapping("checkadminlogin")
  public ModelAndView checkadminlogin(HttpServletRequest request) 
  {
    String uname = request.getParameter("uname");
    String pwd = request.getParameter("pwd");
    
    Admin a = adminService.checkadminlogin(uname, pwd);
    
    ModelAndView mv = new ModelAndView();
    if(a!=null) 
    {
      mv.setViewName("adminhome");
      
      long empcount=adminService.employeecount();
	  long customercount=adminService.customercount();
	  
      mv.addObject("ccount", empcount);
      mv.addObject("ecount", customercount);
      
    } 
    else 
    {
      mv.setViewName("adminlogin");
      mv.addObject("message", "Login Failed");
      
    }
    
    return mv;
  }
  
  @GetMapping("viewallemps")
  public ModelAndView viewallemps() 
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("viewallemps");
    
    List<Employee> emplist = adminService.viewallemps();
    mv.addObject("empdata",emplist);
    
    return mv;
    
  }
  
  @PostMapping("insertemp")
  public ModelAndView insertaction(HttpServletRequest request) 
  {
    
    ModelAndView mv = new ModelAndView();
    
    String msg = null;
    
    
    try
    {
      String name = request.getParameter("name");
      String gender = request.getParameter("gender");
      String email = request.getParameter("email");
      String pwd = request.getParameter("pwd");
     
      
      Employee emp = new Employee();
      
       emp.setName(name);
         emp.setGender(gender);
         emp.setEmail(email);
         emp.setPassword(pwd);
         
         msg = employeeService.addemployee(emp);
         
         mv.setViewName("displaymsg");
         mv.addObject("message", msg);
    }
    catch(Exception e) 
    {
      mv.setViewName("displayerror");
      msg = e.getMessage();
      mv.addObject("message", msg);
    }
    
    return mv;
  }
  
  @GetMapping("adminhome")
     public ModelAndView adminhome()
     {
	  long empcount=adminService.employeecount();
	  long customercount=adminService.customercount();
	  
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminhome");
       mv.addObject("ecount", empcount);
       mv.addObject("ccount", customercount);
       
       return mv;
     }
  
  @GetMapping("view")
     public ModelAndView viewempdemo(@RequestParam("id") int eid)
     {
       Employee emp = adminService.viewempbyid(eid);
       ModelAndView mv = new ModelAndView();
       mv.setViewName("viewempbyid");
       mv.addObject("emp", emp);
       return mv;
     }
  
  
  @GetMapping("deleteemp")
     public ModelAndView deleteemp()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("deleteemp");
       
       List<Employee> emplist =  adminService.viewallemps();
       
       mv.addObject("empdata", emplist);
       
       return mv;
     }
  
  @GetMapping("delete/{id}")
     public String deleteaction(@PathVariable("id") int eid)
     {
       adminService.deleteemp(eid);
       return "redirect:/deleteemp";
     }
  
  @GetMapping("updateprofile")
    public ModelAndView updateemp(HttpServletRequest request)
    {
      ModelAndView mv = new ModelAndView();
      
      HttpSession session = request.getSession();
      
      mv.setViewName("updateprofile");
      
      mv.addObject("eid", session.getAttribute("eid"));
      mv.addObject("ename", session.getAttribute("ename"));
      
      int id = (int) session.getAttribute("eid");
      
      Employee emp = employeeService.viewemployeebyid(id);
      
      mv.addObject("emp", emp);
      
      return mv;
    }
    
    @PostMapping("update")
    public ModelAndView updateaction(HttpServletRequest request)
    {
      String msg = null;
      
      ModelAndView mv = new ModelAndView();
      
        HttpSession session = request.getSession();
      
      mv.addObject("eid", session.getAttribute("eid"));
      mv.addObject("ename", session.getAttribute("ename"));
      
      int id = (int) session.getAttribute("eid");
      
     try
     {
       String name = request.getParameter("name");
       String email = request.getParameter("email");
       String pwd = request.getParameter("pwd");
       
       Employee emp = new Employee();
        emp.setId(id);
        emp.setName(name);
        emp.setEmail(email);
        emp.setPassword(pwd);
        
        msg = employeeService.updateemployee(emp);
        
        mv.setViewName("emplogin");
        mv.addObject("message",msg);
       
     }
     catch(Exception e)
     {
       msg = e.getMessage();
       
       mv.setViewName("updateerror");
        mv.addObject("message",msg);
     }
      
     
      return mv;

    }
    
    @GetMapping("addcustomer")
    public String addcustomer(Model m)
    {
    	m.addAttribute("customer",new Customer());
    	return "addcustomer";
    }
    
    @PostMapping("insertcustomer")
    public ModelAndView insertcustomer(@ModelAttribute("customer") Customer c)
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("customermsg"); //addcustomer.jsp
    	
    	String msg=adminService.addcustomer(c);
    	mv.addObject("message", msg);
    	
    	return mv;
    }
    
    @GetMapping("updatestatus")
    public ModelAndView updatestatus()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("updatestatus");
      
      List<Employee> emplist = adminService.viewallemps();
      mv.addObject("empdata", emplist);
      
      return mv;
    }
    
    
    
    @GetMapping("emplogout")
    public ModelAndView emplogout()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("emplogin");
    	mv.addObject("message","Logout Successfully");
    	return mv;
    }
    
    
    
  

}
