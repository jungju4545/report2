package com.script.script.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.script.script.model.Player;
import com.script.script.repository.PlayerRepository;
import com.script.script.repository.TeamRepository;

@Controller
public class PlayController {

@Autowired
private PlayerRepository pr;

@Autowired
private TeamRepository tr;
	
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
	
}
