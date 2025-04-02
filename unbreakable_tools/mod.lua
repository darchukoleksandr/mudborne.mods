
return {

  load = function(mod_id)
    print('Unbreakable tools loaded', mod_id)
    return true
  end,

  mouse = function(mtype, btn, phase)

	-- returns the equipped 'slot' either a hotbar slot or the 'mouse' slot
    local equipped = game.g.player:call('equipped') 
	
    -- first check the player is using an tool
    if mtype == 'pressed' and equipped.props.item then
	
		-- check if tool has durability
		local definition = game.g.dictionary[equipped.props.item];
		if definition and definition.durability and definition.category == 'tools' then
			-- reset durability
			equipped.props.stats.hp = definition.durability
		end
	end
  end,

}
