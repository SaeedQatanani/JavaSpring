package com.saeed.hoppersreceipt.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReceiptController {
	@RequestMapping("/")
	public String index(Model model) {
		String name = "Abd Anani";
		String itemName = "Copper wire";
		double price = 5.25;
		String description = "Metal strips, also an illustration of nanoseconds";
		String vendor = "Little Things Coner Store";
		model.addAttribute("fullname", name);
		model.addAttribute("fullitemname", itemName);
		model.addAttribute("fullprice", price);
		model.addAttribute("fulldescription", description);
		model.addAttribute("fullvendor", vendor);

		return "index.jsp";
	}
}
