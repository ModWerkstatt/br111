function data()
return {
	info = {
		minorVersion = 0,
		severityAdd = "NONE",
		severityRemove = "WARNING",
		name = _("mod_name"),
		description = _("mod_desc"),
		authors = {
		    {
		        name = "ModWerkstatt",
		        role = "CREATOR",
		    },
		},
		tags = { "europe", "train", "bundesbahn", "deutsche bahn", "electric", "universal" },
		minGameVersion = 0,
		dependencies = { },
		url = { "" },
        params = {
			{
				key = "br111vorspann",
				name = _("Vorspann_br111"),
				values = { "No", "Yes", },
				tooltip = _("option_vorspann_br111_desc"),
				defaultIndex = 0,
			},
			{
				key = "br111fake",
				name = _("Fake_br111"),
				values = { "No", "Yes", },
				tooltip = _("option_fake_br111_desc"),
				defaultIndex = 0,
			},
        },
	},
	options = {
	},

	runFn = function (settings, modParams)

	    local vorspann_br111 = {
			["vorspann_gebraucht1.mdl"] = true,
			["vorspann_gebraucht2.mdl"] = true,
			["vorspann_gebraucht3.mdl"] = true,
			["vorspann_gebraucht4.mdl"] = true,
			["vorspann_ko.mdl"] = true,
			["vorspann_ko_DBAG.mdl"] = true,
			["vorspann_kv.mdl"] = true,
			["vorspann_lha.mdl"] = true,
			["vorspann_ob.mdl"] = true,
			["vorspann_or.mdl"] = true,
			["vorspann_or_DBAG.mdl"] = true,
			["vorspann_ra.mdl"] = true,
			["vorspann_s9_1.mdl"] = true,
			["vorspann_s9_2.mdl"] = true,
			["vorspann_s9_3.mdl"] = true,
			["vorspann_s9_4.mdl"] = true,
			["vorspann_sm.mdl"] = true,
			["vorspann_system.mdl"] = true,
			["vorspann_vampir.mdl"] = true,
			["vorspann_vr.mdl"] = true,
			["vorspann_vr_regio.mdl"] = true,
			["vorspann_vr_schere.mdl"] = true,
			["vorspann_vs1.mdl"] = true,
			["vorspann_vs2.mdl"] = true,
            ["vorspann_muc2018.mdl"] = true,
        }
    
        local fake_br111 = {
			["fake_gebraucht1.mdl"] = true,
			["fake_gebraucht2.mdl"] = true,
			["fake_gebraucht3.mdl"] = true,
			["fake_gebraucht4.mdl"] = true,
			["fake_ko.mdl"] = true,
			["fake_ko_DBAG.mdl"] = true,
			["fake_kv.mdl"] = true,
			["fake_lha.mdl"] = true,
			["fake_ob.mdl"] = true,
			["fake_or.mdl"] = true,
			["fake_or_DBAG.mdl"] = true,
			["fake_ra.mdl"] = true,
			["fake_s9_1.mdl"] = true,
			["fake_s9_2.mdl"] = true,
			["fake_s9_3.mdl"] = true,
			["fake_s9_4.mdl"] = true,
			["fake_sm.mdl"] = true,
			["fake_system.mdl"] = true,
			["fake_vampir.mdl"] = true,
			["fake_vr.mdl"] = true,
			["fake_vr_regio.mdl"] = true,
			["fake_vr_schere.mdl"] = true,
			["fake_vs1.mdl"] = true,
			["fake_vs2.mdl"] = true,
            ["fake_muc2018.mdl"] = true,
        }
        
        local modelFilterVorspann = function(fileName, data)
			local modelName = fileName:match('/br111_([^/]*.mdl)')
			return (modelName==nil or vorspann_br111[modelName]~=true)
		end
        
        local modelFilterFake = function(fileName, data)
			local modelName = fileName:match('/br111_([^/]*.mdl)')
			return (modelName==nil or fake_br111[modelName]~=true)
		end

        if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]
			if params["br111vorspann"] == 0 then
				addFileFilter("model/vehicle", modelFilterVorspann)
			end
            if params["br111fake"] == 0 then
				addFileFilter("model/vehicle", modelFilterFake)
			end
		else
			addFileFilter("model/vehicle", modelFilterVorspann)
            addFileFilter("model/vehicle", modelFilterFake)
		end

	end
	}
end
