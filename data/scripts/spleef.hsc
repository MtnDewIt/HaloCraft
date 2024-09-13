; Globals

; Externs

; Scripts
(script startup void sky
	(sleep 1)
	(mp_wake_script mp_sky)
)

(script dormant void mp_sky
	(object_create "sky_clouds")
	(scenery_animation_start_loop "sky_clouds" "levels\multi\village\sky\clouds\clouds" "rotate")
	(object_set_custom_animation_speed "sky_clouds" 0.0045)
)