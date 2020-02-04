package com.script.script.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Team {

	private int tid;
	private String tName;
	private String tYear;
	private List<Player> players;
}
