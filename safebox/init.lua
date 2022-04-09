minetest.register_node("safebox:safebox", {
	description = "Safe chest",
	inventory_image = "safebox_safebox.png",
	tiles = {
		"safebox_safebox_up.png",
		"safebox_safebox_down.png",
		"safebox_safebox_right.png",
		"safebox_safebox_left.png",
		"safebox_safebox_back.png",
		"safebox_safebox_front.png"
	},
	is_ground_content = false,
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=1, level=3,},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
			"size[8,9]"..
			default.gui_bg ..
			default.gui_bg_img ..
			default.gui_slots ..
			"list[current_player;safebox:safebox;0,0.3;8,4;]"..
			"list[current_player;main;0,4.85;8,1;]" ..
			"list[current_player;main;0,6.08;8,3;8]" ..
			"listring[current_player;safebox:safebox]" ..
			"listring[current_player;main]" ..
			default.get_hotbar_bg(0,4.85)
		)
		meta:set_string("infotext", "Safebox")
	end,
})

minetest.register_craft({
	type = "shaped",
	output = "safebox:safebox 1",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "","default:stick"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
	}
})

minetest.register_on_joinplayer(function(player)
	local inv = player:get_inventory()
	inv:set_size("safebox:safebox", 8*4)
end)