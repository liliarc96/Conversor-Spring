package br.com.unipe.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.unipe.model.Moeda;

@Controller
public class ConversorController {

	@RequestMapping(value = "/conversor", method = RequestMethod.GET)
	public ModelAndView conversor(Model model) {
		model.addAttribute("moeda", new Moeda());
		return new ModelAndView("conversor");
	}
	
	@RequestMapping(value = "/conversor", method = RequestMethod.POST)
	public ModelAndView conversorResposta(@ModelAttribute Moeda moeda) {
		ModelAndView view = new ModelAndView("conversor");
		view.addObject("valor",moeda.getValor());
		return view;
	}
	
}
