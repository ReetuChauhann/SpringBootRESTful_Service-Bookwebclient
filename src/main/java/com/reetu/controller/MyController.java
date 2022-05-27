package com.reetu.controller;

import java.util.List;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.reetu.beans.Book;

@Controller
public class MyController {
	             
	                RestTemplate rt = new RestTemplate();
	                 
	              String URL = "http://localhost:2020";
	                
	                @RequestMapping("/")
	                public String home() {
	                	return "index";
	                }
	                
	                @RequestMapping("addbook")
	                public String addbook(@ModelAttribute Book b, Model model) {
	                	String API = "/addbook";
	                	HttpEntity<Book> requestEntity = new HttpEntity<>(b);
	                	String x = rt.postForObject(URL+API, requestEntity, String.class);
	                	model.addAttribute("result",x);
	                	return "index";
	                	
	                }
	                
	                @RequestMapping("deletebook")
	                public String deletebook(String name, Model model) {
	                	String API = "/deletebook/"+name;
	                	ResponseEntity<String> d = rt.exchange(URL+API, HttpMethod.DELETE,null,String.class);
	                	String delete = d.getBody();
	                	model.addAttribute("delete", delete);
	                	return "index";
	                }

	                @RequestMapping("updatehere")
	                public String returntopage() {
	                	return "update";
	                }
	                
	                //common value for all the jsps
	                @ModelAttribute
	                public void commonvalue(Model model) {
	                	String API = "/getallids";
	                	List<Integer> ids = rt.getForObject(URL+API, List.class);
	                	model.addAttribute("ids", ids);
	                	
	                }
	                
	                @RequestMapping("updatebook")
	                public String udbook(@ModelAttribute Book b, Model model) {
	                	String API = "/updatebook";
	                	HttpEntity<Book> requestEntity = new HttpEntity<>(b);
	                	ResponseEntity<String> result = rt.exchange(URL+API, HttpMethod.PUT,requestEntity, String.class);
	                	String res = result.getBody();
	                	model.addAttribute("response", res);
	                	return "update";
	                }
	                
	                @RequestMapping("viewallbook")
	                public String returnpage2() {
	                	return "viewall";
	                }
	                
	                @RequestMapping("bookdata")
	                public String bookdata(Model model) {
	                	String API = "/viewallbook";
	                	List<Book> b3 = rt.getForObject(URL+API, List.class);
	                	model.addAttribute("view",b3);
	                	return "viewall";
	                }
}

