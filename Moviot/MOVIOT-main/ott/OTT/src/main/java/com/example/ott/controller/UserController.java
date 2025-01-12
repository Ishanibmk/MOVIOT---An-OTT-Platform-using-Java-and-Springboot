package com.example.ott.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.ott.model.User;
import com.example.ott.model.UserRepo;

@Controller
public class UserController {
	
		@Autowired
		UserRepo urepo;
@RequestMapping("indexheader")
	public String IndexHeader()
	{
		return "index_header";
	}
@RequestMapping("indexfooter")
public String IndexFooter()
{
	return "index_footer";
}
@RequestMapping("index")
public String Index()
{
	return "index";
}
@RequestMapping("signup")
public String signup()
{
	return "signup";
}
@RequestMapping("about")
public String about()
{
	return "about";
}

@RequestMapping("catagory")
public String catagory()
{
	return "catagory";
}
@RequestMapping(value = "/login", method = RequestMethod.GET)
public String showLoginPage() {
    return "login";
}

@RequestMapping(value = "/login", method = RequestMethod.POST)
public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password) {
    // Implement your login logic here
    // You can check the credentials, authenticate the user, and redirect accordingly
    return "redirect:/home"; // Redirect to home page after successful login
}

@RequestMapping("regprocess")
public String register(@RequestParam("uname") String name, @RequestParam("uemail") String email, @RequestParam("uphno") String phno, @RequestParam("upass") String pass, @RequestParam("upass") String password, @RequestParam("uans") String answer)
{
	User u=new User();
	u.setName(name);
	u.setEmail(email);
	u.setPhno(phno);
	u.setPassword(password);
	u.setAnswer(answer);
	urepo.save(u);
	return "index";
	
}
}