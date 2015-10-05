package controllers;

import java.sql.SQLException;
import java.util.List;
import java.util.Random;

import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.ui.ModelMap;

import daoInterface.ViewCart;

import beans.CratBean;
import beans.ItemBean;

import services.CartServices;
import services.ItemViewService;
import services.ViewCartService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class CartController {

	private CartServices cartServices;
	private ItemViewService itemViewService;
	private ViewCartService viewCartService;

	public void setViewCartService(ViewCartService viewCartService) {
		this.viewCartService = viewCartService;
	}

	public void setItemViewService(ItemViewService itemViewService) {
		this.itemViewService = itemViewService;
	}

	public void setCartServices(CartServices cartServices) {
		this.cartServices = cartServices;
	}
@RequestMapping(value="/login")
public String method(ModelMap modelMap){
	modelMap.addAttribute("parameter", 1);
	System.out.println("in cart login metho");
	return "LoginForm";
}
	@RequestMapping(value = "/imagesBooking", method = RequestMethod.POST)
	public String imageBooking2(@RequestParam(value = "name") String imagePath,
			HttpServletRequest httpServletRequest, ModelMap modelMap)
			throws ClassNotFoundException, SQLException {
		HttpSession httpSession = httpServletRequest.getSession();
		String name = (String) httpSession.getAttribute("sessionValue");
		System.out.println("----before name -----");
		System.out.println(name);
		String sessionId = httpSession.getId();
		System.out.println(sessionId + " session id in Cart controller");
		if (name==null) {
			System.out.println("in if condition");
			return "redirect:login.html";
		}
		CratBean cartBean = new CratBean();

		cartBean.setUserName(name);
		cartBean.setItem(imagePath);
		cartBean.setNo_of_items("sss");

		cartBean.setorder_id((Integer) httpSession.getAttribute("orderID"));

		System.out.println("in cart controller");
		System.out.println(name + "--------------");
		System.out.println("########");

		int j = cartServices.insertIntoCart(cartBean);
		if (j != 0) {

			modelMap.addAttribute("success", "item successfully added to cart");

		}

		return "itemSuccess";
	}

	@RequestMapping(value = "/imagesSelection", method = RequestMethod.POST)
	public String imagesSelection(
			@RequestParam(value = "name") String imagePath, ModelMap modelMap,
			HttpServletRequest httpServletRequest) {
		ItemBean itemBean = itemViewService.viewItem(imagePath);

		/*
		 * modelMap.addAttribute("itemName", itemBean.getItemName());
		 * modelMap.addAttribute("cost", itemBean.getCost());
		 * modelMap.addAttribute("availability", itemBean.getAvailbility());
		 */
		modelMap.addAttribute(itemBean);
		httpServletRequest.setAttribute("itemBean", itemBean);
		return "displayPage";
	}
	
	@RequestMapping(value="/viewCart")
	public String viewCart(HttpServletRequest httpServletRequest,ModelMap modelMap )
	{
		HttpSession httpSession=httpServletRequest.getSession();
		String user=(String)httpSession.getAttribute("sessionValue");
		System.out.println("in view cart");
		List list=viewCartService.viewCart(user);
		/*modelMap.addAttribute(list);*/
		modelMap.addAttribute("list", list);
		return "ViewCart";
	}

}
