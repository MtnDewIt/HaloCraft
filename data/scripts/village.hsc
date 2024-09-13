; Globals
(global short random_value 0)

; Externs

; Scripts
(script continuous void random_chest
	(sleep_until (>= (device_get_position "chest_00") 0.35) 5)
	(object_destroy "control_06")
	(spawn_random_item)
	(sleep 1800)
	(device_set_position "chest_00" 0)
	(sleep 30)
	(sleep_until (>= (object_get_health "chest_00") 0))
	(object_create "control_06")
)

(script startup void random_chest_destroyed
	(sleep_until (< (object_get_health "chest_00") 0))
	(object_destroy "control_06")
)

(script static void spawn_random_item
	(set random_value (random_range 0 11))
	(if (= random_value 0)
		(object_create_anew "chest_item_00")
	)
	(if (= random_value 1)
		(object_create_anew "chest_item_01")
	)
	(if (= random_value 2)
		(object_create_anew "chest_item_02")
	)
	(if (= random_value 3)
		(object_create_anew "chest_item_03")
	)
	(if (= random_value 4)
		(object_create_anew "chest_item_04")
	)
	(if (= random_value 5)
		(object_create_anew "chest_item_05")
	)
	(if (= random_value 6)
		(object_create_anew "chest_item_06")
	)
	(if (= random_value 7)
		(object_create_anew "chest_item_07")
	)
	(if (= random_value 8)
		(object_create_anew "chest_item_08")
	)
	(if (= random_value 9)
		(object_create_anew "chest_item_09")
	)
	(if (= random_value 10)
		(object_create_anew "chest_item_10")
	)
)

(script startup void door_00
	(sleep_until (< (object_get_health "door_00a") 0))
	(sleep_until (< (object_get_health "door_00b") 0))
	(object_destroy "control_00")
)

(script startup void door_01
	(sleep_until (< (object_get_health "door_01") 0))
	(object_destroy "control_01")
)

(script startup void door_02
	(sleep_until (< (object_get_health "door_02") 0))
	(object_destroy "control_02")
)

(script startup void door_03
	(sleep_until (< (object_get_health "door_03") 0))
	(object_destroy "control_03")
)

(script startup void door_04
	(sleep_until (< (object_get_health "door_04") 0))
	(object_destroy "control_04")
)

(script startup void door_05
	(sleep_until (< (object_get_health "door_05") 0))
	(object_destroy "control_05")
)

(script startup void sign_randomizer
	(sleep 1)
	(object_function_set 0 (real_random_range 0 1))
	(object_function_set 1 (real_random_range 0 1))
	(object_function_set 2 (real_random_range 0 1))
	(mp_wake_script mp_sign_randomizer)
)

(script dormant void mp_sign_randomizer
	(object_function_set 0 (real_random_range 0 1))
	(object_function_set 1 (real_random_range 0 1))
	(object_function_set 2 (real_random_range 0 1))
)

(script startup void sky
	(sleep 1)
	(mp_wake_script mp_sky)
)

(script dormant void mp_sky
	(object_create "sky_clouds")
	(scenery_animation_start_loop "sky_clouds" "levels\multi\village\sky\clouds\clouds" "rotate")
	(object_set_custom_animation_speed "sky_clouds" 0.0045)
)