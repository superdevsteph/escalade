package fr.ocr.escalade.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fr.ocr.escalade.model.Site;
import fr.ocr.escalade.model.Topo;
import fr.ocr.escalade.model.User;
import fr.ocr.escalade.model.UserProfile;
import fr.ocr.escalade.security.SiteValidator;
import fr.ocr.escalade.security.TopoValidator;
import fr.ocr.escalade.service.SiteService;
import fr.ocr.escalade.service.TopoService;
import fr.ocr.escalade.service.UserProfileService;
import fr.ocr.escalade.service.UserService;

@Controller
@RequestMapping("/")
@SessionAttributes({"roles", "user"})

public class AppController {

	@Autowired
	UserService userService;
	@Autowired
	TopoService topoService;
	@Autowired
	TopoValidator topoValidator;
	@Autowired
	SiteValidator siteValidator;
	
	
	  @Autowired 
	SiteService siteService;
	
	
	@Autowired
	UserProfileService userProfileService;

	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;

	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, null, new CustomDateEditor(dateFormat, true));
	}

	/**
	 * This method will list all existing users.
	 */
	@RequestMapping(value = { "/", "/list" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model) {

		List<User> users = userService.findAllUsers();
		model.addAttribute("users", users);
		model.addAttribute("loggedinuser", getPrincipal());
		return "userslist";
	}

	
	
	@RequestMapping(value = { "/espaceMembre-user-{ssoId}" }, method = RequestMethod.GET)
	
	public String espaceMembre(@PathVariable String ssoId, User user, Model model, ModelMap modelMap, HttpServletRequest request) {
		HttpSession session = request.getSession();
		user=(User) session.getAttribute("user");
		model.addAttribute("loggedinuser", getPrincipal());
		 if (isCurrentAuthenticationAnonymous()) {
	            return "login";
	            }
	        modelMap.addAttribute("currentURI", request.getRequestURI());
	       
			return "espaceMembre";
		}
	



	
	
	/**
	 * This method returns the principal[user-name] of logged-in user.
	 */
	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
	

	
	
	/**
	 * This method will provide the medium to add a new user.
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("edit", false);
		model.addAttribute("loggedinuser", getPrincipal());
		return "registration";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * saving user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			return "registration";
		}

		if (!userService.isUserSSOUnique(user.getId(), user.getSsoId())) {
			FieldError ssoError = new FieldError("user", "ssoId", messageSource.getMessage("non.unique.ssoId",
					new String[] { user.getSsoId() }, Locale.getDefault()));
			result.addError(ssoError);
			return "registration";
		}

		userService.saveUser(user);

		model.addAttribute("success",
				"le compte de  " + user.getFirstName() + " " + user.getLastName() + " a été créé avec succès");
		model.addAttribute("loggedinuser", getPrincipal());
		// return "success";
		return "registrationsuccess";
	}

	/**
	 * This method will provide the medium to add a new user.
	 */
	@RequestMapping(value = { "/inscription" }, method = RequestMethod.GET)
	public String newUser2(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("edit", false);
		model.addAttribute("loggedinuser", getPrincipal());
		return "inscription";
	}



	/**
	 * This method will provide the medium to update an existing user.
	 */
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable String ssoId, ModelMap model) {
		User user = userService.findBySSO(ssoId);
		model.addAttribute("user", user);
		model.addAttribute("edit", true);
		model.addAttribute("loggedinuser", getPrincipal());
		return "registration";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * updating user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.POST)
	public String updateUser(@Valid User user, BindingResult result, ModelMap model, @PathVariable String ssoId) {

		if (result.hasErrors()) {
			return "registration";
		}

		/*
		 * //Uncomment below 'if block' if you WANT TO ALLOW UPDATING SSO_ID in UI which
		 * is a unique key to a User. if(!userService.isUserSSOUnique(user.getId(),
		 * user.getSsoId())){ FieldError ssoError =new
		 * FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new
		 * String[]{user.getSsoId()}, Locale.getDefault())); result.addError(ssoError);
		 * return "registration"; }
		 */

		userService.updateUser(user);

		model.addAttribute("success",
				"Le compte de  " + user.getFirstName() + " " + user.getLastName() + " a bien été modifié");
		model.addAttribute("loggedinuser", getPrincipal());
		return "registrationsuccess";
	}



	/**
	 * This method will delete an user by it's SSOID value.
	 */
	@RequestMapping(value = { "/delete-user-{ssoId}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable String ssoId) {
		userService.deleteUserBySSO(ssoId);
		return "redirect:/list";
	}

	/**
	 * This method will provide UserProfile list to views
	 */
	@ModelAttribute("roles")
	public List<UserProfile> initializeProfiles() {
		return userProfileService.findAll();
	}

	/**
	 * This method handles Access-Denied redirect.
	 */
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "accessDenied";
	}

	/**
	 * This method handles login GET requests. If users is already logged-in and
	 * tries to goto login page again, will be redirected to list page.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
		} else {
			return "redirect:/list";
		}
	}

	/**
	 * This method handles logout requests. Toggle the handlers if you are
	 * RememberMe functionality is useless in your app.
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		  HttpSession session = request.getSession();
	        session.invalidate();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			// new SecurityContextLogoutHandler().logout(request, response, auth);
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		
		
		return "redirect:/login?logout";
	}

	

	/**
	 * This method returns true if users is already authenticated [logged-in], else
	 * false.
	 */
	private boolean isCurrentAuthenticationAnonymous() {
		final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authenticationTrustResolver.isAnonymous(authentication);
	}

	/**
	 * Affichage de la page des articles
	 */
	@RequestMapping("/articles")
	public String articles(Model model) {

		return "articles";
	}

	@RequestMapping("/home")
	public String home(Model model) {

		return "home";
	}

	@RequestMapping("/sites")
	public String sites(Model model) {

		return "sites";
	}

	
	@RequestMapping("/site1")
	public String site1(Model model) {

		return "site1";
	}

	@RequestMapping("/inscription")
	public String inscription(Model model) {

		return "inscription";
	}

	@RequestMapping("/infos")
	public String infos(Model model) {

		return "infos";
	}

	@RequestMapping(value = "/topoForm", method = RequestMethod.GET)
	public String topoForm(Model model) {
		model.addAttribute("userForm", new Topo());
		model.addAttribute("loggedinuser", getPrincipal());

		if (isCurrentAuthenticationAnonymous()) {
			return "login";
		} else {

			return "topoForm";
		}

	}

	@RequestMapping(value = "/topoList", method = RequestMethod.GET)
	public String topoList(Model model) {
		List<Topo> list = topoService.listTopoInfos();
		model.addAttribute("topoInfos", list);
		model.addAttribute("loggedinuser", getPrincipal());

		if (isCurrentAuthenticationAnonymous()) {
			return "login";
		} else {
			return "topoList";
		}
	}

	@RequestMapping(value = "/saveTopo", method = RequestMethod.POST)
	public String saveTopo(@ModelAttribute("userForm") Topo userForm, BindingResult bindingResult, Model model) {
		topoValidator.validate(userForm, bindingResult);
		model.addAttribute("loggedinuser", getPrincipal());
		if (bindingResult.hasErrors()) {

			return "topoForm";

		}

		topoService.saveTopo(userForm);

		return "topoList";
	}

	@RequestMapping("/editTopo")
	public String editTopo(Model model, @RequestParam("id") int id) {
		Topo topo = null;
		if (id != 0) {
			topo = this.topoService.findTopo(id);
		}
		if (topo == null) {
			return "redirect:/topoList";
		}

		return this.topoForm(model);
	}

	@RequestMapping("/deleteTopo")
	public String deleteTopo(Model model, @RequestParam("id") int id) {
		if (id != 0) {
			this.topoService.deleteTopo(id);
		}
		return "redirect:/topoList";
	}

	
	@RequestMapping(value = "/siteForm", method = RequestMethod.GET)
	public String siteForm(Model model) {
		model.addAttribute("userForm", new Topo());
		model.addAttribute("loggedinuser", getPrincipal());

		if (isCurrentAuthenticationAnonymous()) {
			return "login";
		} else {

			return "siteForm";
		}

	}

	@RequestMapping(value = "/siteList", method = RequestMethod.GET)
	public String siteList(Model model) {
		List<Site> list = siteService.listSiteInfos();
		model.addAttribute("siteInfos", list);
		
			return "siteList";
		}
	
	
	@RequestMapping(value = "/saveSite", method = RequestMethod.POST)
	public String saveSite(@ModelAttribute("userForm") Site userForm, BindingResult bindingResult, Model model) {
		siteValidator.validate(userForm, bindingResult);
		model.addAttribute("loggedinuser", getPrincipal());
		if (bindingResult.hasErrors()) {

			return "siteForm";

		}

		siteService.saveSite(userForm);

		return "siteList";
	}
	
	
	 @RequestMapping(value = "/inscription", method = RequestMethod.POST) public
	  String inscription(Model model, 
	  
	  @ModelAttribute("user") @Validated User user,  BindingResult result, 
	 final RedirectAttributes redirectAttributes) {
	 
	  if (result.hasErrors()) { return this.inscription(model); }
	  
	  this.userService.inscription(user);
	  
	  // Important!!: Need @EnableWebMvc // Add message to flash scope
	  redirectAttributes.addFlashAttribute("message", "Save User Successful");
	  
	  return "redirect:/home";
	 }
	
	
	
	
	
}