
return {

  load = function(mod_id)
	tn.logger.log('Remove compost decay loaded!', mod_id)
    return true
  end,

  -- called every 1s!
  tock = function()
	tn.util.withObjs(function(object)
        if object.oid:find('cultivator') then
			-- check if compost set
			if object.props.compost ~= '' then
				-- reset durability
				object.props.chp = object.props.chpm
			end
        end
      end)
  end,

}
