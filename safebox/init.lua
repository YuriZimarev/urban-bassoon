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
	is_ground_content = false
})
minetest.register_craft({
	type = "shaped",
	output = "safebox:safebox 1",
	recipe = {
		{"default: Iron Ingot", "default: Iron Ingot", "default: Iron Ingot"},
		{"default: Iron Ingot", "","default: Stick"},
		{"default: Iron Ingot", "default: Iron Ingot", "default: Iron Ingot"}
	}
})
