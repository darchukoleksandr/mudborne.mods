
return {

  load = function(mod_id)
	tn.logger.log('Spore cultivator simplified loaded!', mod_id)
    return true
  end,
  
  -- called every 1s!
  tock = function()
	tn.util.withObjs(function(object)
        if object.oid:find('scultivator') then
			-- check if paper is in slot
			if object.menu.slots[3].props.item ~= '' then
				local paper = object.menu.slots[3]
				if paper then
					-- reset durability and bloom
					paper.props.stats.hp = paper.props.stats.mhp
					object.props.blooming = true
				end
			end
        end
      end)
  end,

}
