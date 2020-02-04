package com.script.script.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.script.script.model.Player;
import com.script.script.repository.PlayerRepository;

@Controller
public class PlayController {

@Autowired
private PlayerRepository pr;


	
@GetMapping("/")
public String home() {
	List<Player>players=null;
	players=pr.findAll();
	return "player/baseballTeam";
}
	@GetMapping("/test")
	public@ResponseBody List test() {
		List<Player>players=null;
		players=pr.findAll();
		return players;
	}
	
	@GetMapping("testplayer")
	public @ResponseBody List player(@RequestParam("type")String type){
		List<Player> players = null;	
		players=pr.findByTeam(type);
		return players;
	}
	
	@GetMapping("player/detail/{id}")
	public String detail(@PathVariable int id,Model model){
		List<Player> player = null;	
		player=pr.findById(id);
		System.out.println(player);
		
		model.addAttribute("player",player);
		return "player/playerDetail";
	}
	
//	@GetMapping("player/detail/{id}")
//	public @ResponseBody List<Player> detail1(@PathVariable int id,Model model){
//		List<Player> player = null;	
//		player=pr.findById(id);
//		System.out.println(player);
//		model.addAttribute("player",player);
//		return player;
//	}
	
}

