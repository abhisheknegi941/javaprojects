package hrmanagerfront.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hrmanagerfront.model.Employee;
import hrmanagerfront.model.User;
import hrmanagerfront.service.EmployeeService;
import hrmanagerfront.service.UserService;

@Controller
public class MainController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@RequestMapping(value = "/handlelogin", method = RequestMethod.POST)
	public String handleLogin(@ModelAttribute() User user, Model model, HttpServletRequest request) {
		User userData = UserService.getUser(user.getUsername());
		if (userData == null) {
			model.addAttribute("wrongcredentials", "Please Enter valid credentials");
			return "index";
		}

		if (userData.getUsername().equals(user.getUsername()) && userData.getPassword().equals(user.getPassword())) {
			HttpSession session = request.getSession();
			session.setAttribute("username", user.getUsername().replace("@gmail.com", ""));
			return "redirect:/afterlogin";
		}

		model.addAttribute("wrongcredentials", "Please Enter valid credentials");
		return "index";
	}

	@RequestMapping("/afterlogin")
	public String afterLogin(Model model) {
		List<Employee> list = EmployeeService.getAllEmployee();
		model.addAttribute("list", list);
		return "list";
	}

	@RequestMapping("/uploademployee")
	public String showUpload() {
		return "upload";
	}
	
	@RequestMapping(value = "/addemployee", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute Employee employee, Model model) {
		if(checkEmployee(employee.getEmpCode())) {
			model.addAttribute("empexist", "Employee with this employee code is already exist");
			return "upload";
		}
		EmployeeService.createEmployee(employee);
		List<Employee> list = EmployeeService.getAllEmployee();
		model.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping("/editemployee")
	public String showEditForm(HttpServletRequest request, Model model) {
		String empCode = request.getParameter("id");
		Employee emp = EmployeeService.getEmployee(Integer.parseInt(empCode));
		model.addAttribute("editemployee", emp);
		return "edit";
	}
	
	@RequestMapping(value = "/editForm", method = RequestMethod.POST)
	public String updateEmployeeDetails(@ModelAttribute Employee employee,Model model) {
		EmployeeService.updateEmployee(employee);
		List<Employee> list = EmployeeService.getAllEmployee();
		model.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping("/deleteemployee")
	public String deleteEmployee(HttpServletRequest request, Model model) {
		String empCode = request.getParameter("id");
		EmployeeService.deleteEmployee(Integer.parseInt(empCode));
		List<Employee> list = EmployeeService.getAllEmployee();
		model.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping("/logout")
	public String logOut(HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    session.removeAttribute("username");
		return "index";
	}
	
	public boolean checkEmployee(int empCode) {
		List<Employee> list = EmployeeService.getAllEmployee();
		for(Employee e :list) {
      	   if(empCode == e.getEmpCode()) {
      		   return true;
      	   }	
	    }
		return false;
	}
}


