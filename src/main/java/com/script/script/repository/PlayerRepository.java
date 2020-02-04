package com.script.script.repository;

import java.util.List;

import com.script.script.model.Player;

public interface PlayerRepository {
 List<Player> findByTeam(String type);
 List<Player> findAll();
 List<Player>  findById(int id);
}
