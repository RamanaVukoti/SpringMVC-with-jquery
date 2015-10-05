package controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import services.SearchItemService;

@Controller
public class SearchController {
	private SearchItemService searchItemService;

	public void setSearchItemService(SearchItemService searchItemService) {
		this.searchItemService = searchItemService;
	}

	@RequestMapping(value = "/searchItem", method = RequestMethod.POST)
	public String searchItem(@RequestParam(value = "item") String item,
			@RequestParam(value = "name2") String name22, ModelMap modelMap) {
		System.out.println(name22);
		@SuppressWarnings("unchecked")
		List<String> list = searchItemService.searchItem(item);
		modelMap.addAttribute("list", list);
		return "suggestions";

	}

	@RequestMapping(value = "/showImageforItem", method = RequestMethod.POST)
	public String showImageForSearchItem(
			@RequestParam(value = "imageData") String itemImage,
			ModelMap modelMap) {
		System.out.println("in method 2");
		System.out.println(itemImage);

		List list = searchItemService.showSearchItemImage(itemImage);
		modelMap.addAttribute("list", list);
		return "showSearchImage";
	}
}
