package com.tekglobal.casestudyexample.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tekglobal.casestudyexample.customexception.DeleteFailedException;
import com.tekglobal.casestudyexample.models.Entry;
import com.tekglobal.casestudyexample.models.User;
import com.tekglobal.casestudyexample.services.EntryService;
import com.tekglobal.casestudyexample.services.UserService;


import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class HomeController {

	private UserService userService;

	@Autowired
	public HomeController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/")
	public String showIndexPage() {
		return "index";
	}
	
	@GetMapping("/signup")
	public String showSignupPage() {
		return "signup";
	}
	
	@GetMapping("/signin")
	public String showSigninPage() {
		return "signin";
	}


	@GetMapping("/contact")
	public String showContactPage() {
		return "contact";
	}
	
	@GetMapping("/addentry")
	public String showAddEntryPage() {
		return "addentry";
	}
	
	@GetMapping("/contactus")
	public String showContactUsPage() {
		return "contactus";
	}
	

	@GetMapping("/registration")
	public String showRegistrationPage() {
		return "registration";
	}
	
	
	
//register

	@GetMapping("/register")
	public String showRegisterPage(Model model){
		model.addAttribute("user", new User());
		return "registration";
	}
	
	@PostMapping("/register")
	public String registerNewUser(@Valid @ModelAttribute("user") User user, BindingResult result){
		if(result.hasErrors()){
			return "registration";
		}
		userService.saveUser(user);
		return "redirect:/login";
	}
	
	
//login
	
	@GetMapping("/login")
	public String showLoginPage() {
		return "login";
	}

	@PostMapping("/login")
	public String ProcessLoginRequest(@RequestParam("username") String username,
			@RequestParam("password") String password, Model model, HttpSession session) {
		User user = userService.findUserByUsername(username);

		if (user != null && password.equals(user.getPassword())) {
			session.setAttribute("currentUser", user);
			return "results";
		} else {
			System.out.println("Login failed.");
		}
		model.addAttribute("loginFailedMessage", "Login Failed");
		return "login";
	}
	
	//entry

    @Autowired
    private EntryService entryService;
    @RequestMapping("/results")
    public ModelAndView home() {
        List<Entry> listEntry = entryService.listAll();
        ModelAndView mav = new ModelAndView("results");
        mav.addObject("listEntry", listEntry);
        return mav;
    }
    
    @RequestMapping("/new")
    public String newCustomerForm(Map<String, Object> model) {
        Entry entry = new Entry();
        model.put("entry", entry);
        return "new_entry";
    }
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveCustomer(@ModelAttribute("entry") Entry entry){
        entryService.save(entry);
        return "redirect:/results";
    }
    
    @RequestMapping("/edit")
    public ModelAndView editCustomerForm(@RequestParam long id) {
        ModelAndView mav = new ModelAndView("edit_entry");
        Entry entry = entryService.get(id);
        mav.addObject("entry", entry);
     
        return mav;
    }
    
    @RequestMapping("/delete")
    public String deleteCustomerForm(@RequestParam long id) throws DeleteFailedException {
        entryService.delete(id);
        return "redirect:/results";       
    }
    
    

}
