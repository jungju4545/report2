package com.script.script.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Player {

	private int id;
	private String pName;
	private int pNo;
	private int pTeamId;
	private String pAge;
}
