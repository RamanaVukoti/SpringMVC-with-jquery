package controllers;

import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;
import javax.validation.Valid;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import services.LoginService;
import services.RegistrationService;
import beans.LoginBean;
import beans.RegistrtaionBean;

@Controller
/*@SessionAttributes("seesionValue")*/
public class MainController {
	int maximum = 10000, minimum = 5000, randomNum;

	String returnPage;
	private LoginService loginService = null;
	private RegistrationService registrationService = null;

	public void setRegistrationService(RegistrationService registrationService) {
		this.registrationService = registrationService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	@RequestMapping(value = "/Login")
	public String mainPage(LoginBean loginBean) {

		return "LoginForm";
	}
@RequestMapping(value="/main")
public String homePage(HttpSession session){
	
		System.out.println(session.getAttribute("sessionValue"));
	
	return "Index";
}
@RequestMapping(value="/homePage")
public String homePage(HttpServletRequest httpServletRequest){
	try {
		HttpSession httpSession=httpServletRequest.getSession();
		httpSession.invalidate();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return "Index";
	
}
	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public String firstMethod(@Valid LoginBean loginBean,
			BindingResult bindingResult, ModelMap map,
			HttpServletRequest httpRequest) throws ClassNotFoundException,
			SQLException {

		System.out.println("Controller---in  log in method");

		int j = loginService.checkLogin(loginBean);

		if (j != 0) {
			System.out.println("in if condition");
			HttpSession httpSession = httpRequest.getSession(true);

			httpSession.setAttribute("sessionValue", loginBean.getName());

			String seesionValue = (String) httpSession
					.getAttribute("sessionValue");
			Random rn = new Random();
			int n = maximum - minimum + 1;
			int temp = rn.nextInt(9999) + 1;
			int i = temp % n;
			randomNum = minimum + i;
			httpSession.setAttribute("orderID", randomNum);
		
			String sessioId1=httpSession.getId();
			System.out.println(sessioId1+" session id main controller");
			System.out.println(seesionValue);
			map.addAttribute("name", loginBean.getName());
			System.out.println(loginBean.getName());
			map.addAttribute("number", loginBean.getNumber());
			map.addAttribute("seesionValue", seesionValue);
			map.addAttribute("success", 1);

			returnPage = "success";

			/* return "success"; */

		} else {

			String msg = "invalid Credentials";
			System.out.println("in else case");
			map.addAttribute("message", msg);
			System.out.println("Rin else case");
			map.addAttribute("success", 0);

			returnPage = "LoginForm";
		}

		return returnPage;

	}

	@RequestMapping(value = "/errorPage")
	public String errorMethod() {

		return "Login";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String secondtMethod(@ModelAttribute RegistrtaionBean regBean,
			ModelMap map) throws ClassNotFoundException, SQLException {

		String msg = null;
		String msg2 = null;

		int j = registrationService.addmember(regBean);

		if (j != 0) {

			msg = "successfully registered";
		} else if (j == 0) {

			msg2 = "some error has been occured ....contact adminstrator";
		}

		map.addAttribute("message", msg);

		map.addAttribute("message2", msg2);

		return "RegisterSuccess";
	}

	

	@RequestMapping(value = "/Logout")
	public String msd(HttpSession httpSession) {
		httpSession.invalidate();

		return "Index";
	}

}
