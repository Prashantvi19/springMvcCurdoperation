
package webmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import webmvc.entities.UserEntity;
import webmvc.services.UserServicesImpl;

@Controller
@ResponseBody
public class RestfulApiContriller {

	@Autowired
	private UserServicesImpl userServices;

	@GetMapping(value = "/getdata", produces = MediaType.APPLICATION_JSON_VALUE)
	public List<UserEntity> getDataRequest() {

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

		return userEntities;
	}

	@GetMapping(value = "/serachbyemail", produces = MediaType.APPLICATION_JSON_VALUE)
	public List<UserEntity> searchByimailResultRequest(@RequestParam("email") String email) {

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

		}

		return userEntities;
	}

	@PostMapping("/submitForm")
	public String submitFormData(@RequestBody UserEntity userEntity) {

		boolean status = userServices.insertUser(userEntity);
		if (status != false) {
			return "Form submitted successfully" + "String :";
		} else {
			return "Somthing went wrong" + "String :";
		}
	}

	@PutMapping("/updatedata")
	public String updateData(@RequestBody UserEntity userEntity) {

		boolean status = false;

		if (userEntity != null) {
			status = userServices.updateUser(userEntity);
		}

		if (status != false) {

			return "Form Updatted successfully" + "String :" + status;
		} else {
			return "Something went wrong. Unable to find record." + status;

		}
	}

	@DeleteMapping("/deletedata")
	public String deleteData(@RequestParam("id") int id) {
		System.out.println(id);

		boolean status = false;
		if (id != 0) {
			status = userServices.deleteUser(id);
		}

		if (status) {
			return "Record successfully deleted.";
		} else {
			return "Something went wrong. Unable to delete record.";
		}

	}

}
