package services;

import beans.ItemBean;
import daoInterface.ItemViewInterface;

public class ItemViewService {
	private ItemViewInterface itemViewInterface;
	public void setItemViewInterface(ItemViewInterface itemViewInterface) {
		this.itemViewInterface = itemViewInterface;
	}
	
	public ItemBean viewItem(String imagePath){
		System.out.println("in item service");
		return itemViewInterface.viewImage(imagePath);
		
	}
	

}
