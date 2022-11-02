package com.saeed.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/omikuji")
public class MainController {
	@RequestMapping("")
	public String form() {
		return "form.jsp";
	}
	@PostMapping("/process")
	public String process(
			@RequestParam(value="number") Integer number,
			@RequestParam(value="cityname") String cityname,
			@RequestParam(value="personname") String personname,
			@RequestParam(value="hoppy") String hoppy,
			@RequestParam(value="livingthing") String livingthing,
			@RequestParam(value="sthnice") String sthnice,
			HttpSession session,
			RedirectAttributes redirectAttributes) {
		if (number > 5 && number < 25) {
			String message = "In "+number+" years, you will live in "+cityname+" with "+personname+" as your roommate, "+hoppy+" for a living. The next time you see a "+livingthing+" , you will have good luck. Also "+sthnice;
			session.setAttribute("message", message);
		}
		else {
			redirectAttributes.addFlashAttribute("error", "Number between 5 and 25!");
			return "redirect:/omikuji";
		}
		return "redirect:/omikuji/show";
	}
	@RequestMapping("/show")
	public String show() {
		return "show.jsp";
	}
}
