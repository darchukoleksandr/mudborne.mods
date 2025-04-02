
return {

  load = function(mod_id)
	tn.logger.log('Unbreakable tools loaded!', mod_id)
    return true
  end,

  mouse = function(mtype, btn, phase)

	-- returns the equipped 'slot' either a hotbar slot or the 'mouse' slot
    local equipped = game.g.player:call('equipped') 
	
    -- first check the player is using an tool
    if mtype == 'pressed' and equipped.props and equipped.props.stats then
	
		-- check if tool has durability
		if equipped.props.stats.hp and equipped.props.stats.mhp then
			-- reset durability
			equipped.props.stats.hp = equipped.props.stats.mhp
		end
	end
  end,

}
