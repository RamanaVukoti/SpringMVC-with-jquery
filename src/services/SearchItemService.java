package services;

import java.util.List;

import daoInterface.SearchItemInterface;

public class SearchItemService {
	private SearchItemInterface searchItemInterface;

	public void setSearchItemInterface(SearchItemInterface searchItemInterface) {
		this.searchItemInterface = searchItemInterface;
	}

	public List searchItem(String item){
		
		return searchItemInterface.searchItem(item);
	}
	
	public List showSearchItemImage(String item){
		
		return searchItemInterface.showSearchItemImage(item);
	}
	

}
