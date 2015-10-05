package services;

import java.util.List;

import daoInterface.ViewCart;
import beans.ItemBean;

public class ViewCartService {
	private ViewCart viewCart;
	
	public void setViewCart(ViewCart viewCart) {
		this.viewCart = viewCart;
	}

	public List viewCart(String user)
	{
		
		return viewCart.viewCart(user);
		
	}

}
