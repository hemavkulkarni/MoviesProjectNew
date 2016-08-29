package com.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;  
import org.springframework.web.servlet.ModelAndView;  
  
@Controller  
public class LoginController 
{  
  
	//---------------------------------Registration----------------------------------------	//
	 
	 
	  @Autowired
	 UserService userService;
	  
	  @RequestMapping(value="/saveUser", method=RequestMethod.POST)
	  public String addUser(@Valid @ModelAttribute("userData") UserLogin reg,BindingResult result)
	  {
		  
		  System.out.println("INside Save User");
		  if(result.hasErrors())
		  {
			return "personadd";  
		  }
		  else
		  {
			  userService.addUser(reg);
		  }
		  return "index";
	  }
		
	  @RequestMapping("/personadd")
	  public ModelAndView register()
	  {
		  UserLogin register=getUserObject();
		
		  ModelAndView model=new ModelAndView("personadd");
		 
		  model.addObject("userData", register);
		
		  return model;
	  }
	  @ModelAttribute("userData")
	  public UserLogin getUserObject()
	  {
		  return new UserLogin();
	  }
	  
	  
	  @RequestMapping(value="/Logout", method = RequestMethod.GET)
	  public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      if (auth != null){    
	          new SecurityContextLogoutHandler().logout(request, response, auth);
	      }
	      return "redirect:/Login?logout";
	  }
 @RequestMapping("admin")  
 public String geAdminPage() {  
  return "admin";  
 }  
  
 @RequestMapping("403page")  
 public String ge403denied() {  
  return "redirect:login?denied";  
 }  
  
}  