package services;

import java.sql.SQLException;

import beans.CratBean;
import daoImplementation.CartImplementation;
import daoInterface.CartInterface;

public class CartServices {
	private CartInterface cartInterface;
	
	public void setCartInterface(CartInterface cartInterface) {
		this.cartInterface = cartInterface;
	}
	

	public int  insertIntoCart(CratBean cartBean) throws ClassNotFoundException, SQLException {
		System.out.println("in service");
		//CartInterface cartInterface= new CartImplementation();
		return cartInterface.insertIntoCart(cartBean);
		
		
		// TODO Auto-generated method stub
		
	}

	

}
