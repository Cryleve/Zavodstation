/obj/item/gun/projectile/automatic/bastard
	name = "\"Bastard\" SMG"
	desc = "A weapon that invokes conflicting feelings. While the weapon looks to be welded, riveted and otherwise pieced together with scrap. \
		 The SMG oddly appears to be chambered in .257 and takes box magazines, firing from an open-bolt position. An odd mix of a sub-machine gun and a 'machine'-machine gun. \
		 Leave it to the Marshals to create something so odd and cheap yet reliable. On the left side appears to be some fancy-looking script 'M' symbol."
	icon = 'icons/obj/guns/projectile/bastard.dmi'
	icon_state = "bastard"
	item_state = "bastard"
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_NORMAL
	load_method = MAGAZINE
	mag_well = MAG_WELL_BOX
	caliber = CAL_LRIFLE
	tac_reloads = FALSE
	penetration_multiplier = 0.8
	damage_multiplier = 0.9
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 4, MATERIAL_STEEL = 15)
	price_tag = 1000
	fire_sound = 'sound/weapons/guns/fire/sfrifle_fire.ogg'
	recoil_buildup = 4

	init_firemodes = list(
		BURST_5_ROUND,
		FULL_AUTO_600
		)

/obj/item/gun/projectile/automatic/bastard/update_icon()
	var/iconstring = initial(icon_state)
	var/itemstring = ""
	if (ammo_magazine)
		var/percent = (ammo_magazine.stored_ammo.len / ammo_magazine.max_ammo) * 100
		var/number = round(percent, 25)
		iconstring += "[number]"
	else
		iconstring += "-empty"

	icon_state = iconstring
	set_item_state(itemstring)