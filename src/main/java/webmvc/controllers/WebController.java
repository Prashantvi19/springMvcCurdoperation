package webmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import webmvc.entities.UserEntity;
import webmvc.services.UserServicesImpl;

@Controller

public class WebController {
//	@Autowired
	private UserEntity userEntity;
	@Autowired
	private UserServicesImpl userServices;

//	Render the starting Page

	@RequestMapping("/")
	public ModelAndView indexPage() {
		ModelAndView views = new ModelAndView();
		views.setViewName("index");
		return views;
	}

//  Home User
	@RequestMapping("/home")
	public ModelAndView homePage() {
		ModelAndView views = new ModelAndView();
		views.setViewName("index");
		return views;
	}

//  Home User
	@RequestMapping("/about")
	public ModelAndView aboutPage() {
		ModelAndView views = new ModelAndView();
		views.setViewName("about");
		return views;
	}

//	Insert Data Form return

	@GetMapping("/insertdataform")
	public ModelAndView formInsertDataPage() {
		ModelAndView views = new ModelAndView();
		views.setViewName("submitForm");
		return views;
	}

// List Return 

	@GetMapping("/datalist")
	public String dataListPage(Model model) {

		List<UserEntity> userEntities = userServices.userList();
		if (userEntities != null && !userEntities.isEmpty()) {
			for (UserEntity user : userEntities) {
				System.out.println("ID: " + user.getId());
				System.out.println("Name: " + user.getName());
				System.out.println("Email: " + user.getEmail());
				System.out.println("Mobile: " + user.getMobile());
				System.out.println("-----------------------------");
			}

		}
		model.addAttribute("listUser", userEntities);

//		ModelAndView views = new ModelAndView();
//		views.setViewName("list");
		return "list";
	}

//	Update Page return with a single data and get Id 

	@GetMapping("/updateById")
	public String updateByIdPage(@RequestParam("id") int id, Model model, RedirectAttributes redirectAttributes) {

		if (id != 0) {
			userEntity = userServices.getUserById(id);
		}

		// Redirect to dataListPage
		if (userEntity == null) {
			redirectAttributes.addFlashAttribute("errorMsg", "Something went wrong. Unable to delete record.");
			return "redirect:/datalist";
		}
		model.addAttribute("user", userEntity);
		return "edit";
	}

// Return search page

	@GetMapping("/searchbyemail")
	public ModelAndView searchByimailPage() {
		ModelAndView views = new ModelAndView();
		views.setViewName("searchByEmail");
		return views;
	}

//	Return User data get By Email ID

	@GetMapping("/serachbyemailresultrequest")
	public String searchByimailResultRequest(@RequestParam("emailId") String email, Model model) {

		System.out.println(email);

		List<UserEntity> userEntities = userServices.getUserByEmail(email);
		if (userEntities != null && !userEntities.isEmpty()) {
			for (UserEntity user : userEntities) {
				System.out.println("ID: " + user.getId());
				System.out.println("Name: " + user.getName());
				System.out.println("Email: " + user.getEmail());
				System.out.println("Mobile: " + user.getMobile());
				System.out.println("-----------------------------");
			}

			model.addAttribute("successMsg", "Search successful!");
		} else {
			model.addAttribute("errorMsg", "No records found for the provided email.");
		}

		model.addAttribute("listUser", userEntities);

		return "list";
	}
// Delete Data by Id

	@GetMapping("/deletevalue")
	public String deleteRescordRequest(@RequestParam("id") int id, RedirectAttributes redirectAttributes) {

		System.out.println(id);
		boolean status = false;
		if (id != 0) {
			status = userServices.deleteUser(id);
		}

		if (status) {
			redirectAttributes.addFlashAttribute("successMsg", "Record successfully deleted.");
		} else {
			redirectAttributes.addFlashAttribute("errorMsg", "Something went wrong. Unable to delete record.");
		}

		return "redirect:/datalist"; // Redirect to dataListPage
	}

// Submit Entry Data by Submit form
	@PostMapping("/entryFormSubmit")
	public String submitFormData(@ModelAttribute UserEntity userEntity, Model model) {
		System.out.println(userEntity.getEmail() + " " + userEntity.getName() + " " + userEntity.getMobile());

		boolean status = userServices.insertUser(userEntity);

		if (status) {
			model.addAttribute("successMsg", "Form successfully submitted");
		} else {
			model.addAttribute("errorMsg", "Something went wrong");
		}

		return "submitForm";
	}

//Submit Form Udated Data

	@PostMapping("/entryformupdate")
	public String upfateFormData(@ModelAttribute UserEntity userUpdate, RedirectAttributes redirectAttributes) {
//		System.out.println(userEntity.getEmail() + " " + userEntity.getName() + " " + userEntity.getMobile());

		boolean status = false;

		if (userUpdate != null) {

			status = userServices.updateUser(userUpdate);
		}
		if (status) {
			redirectAttributes.addFlashAttribute("successMsg", "Record successfully update.");
		} else {
			redirectAttributes.addFlashAttribute("errorMsg", "Something went wrong. Unable to update record.");
		}

		return "redirect:/datalist"; // Redirect to dataListPage
	}

}
