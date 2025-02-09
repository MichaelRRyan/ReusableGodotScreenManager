extends CanvasLayer

enum ScreenName {
	NONE = -1,
	MAIN_MENU = 0,
	SETTINGS = 1,
}

@onready var _scenes = {
	ScreenName.MAIN_MENU: $MainMenu,
	ScreenName.SETTINGS: $SettingsMenu,
}

@onready var _current_scene = $MainMenu


#-------------------------------------------------------------------------------
func _switch_scene(new_scene_name : ScreenName) -> void:
	_current_scene.hide()
	_current_scene = _scenes[new_scene_name]
	_current_scene.show()


#-------------------------------------------------------------------------------
func _on_main_menu_play_pressed():
	pass # Replace with function body.


#-------------------------------------------------------------------------------
func _on_main_menu_settings_pressed():
	_switch_scene(ScreenName.SETTINGS)


#-------------------------------------------------------------------------------
func _on_settings_menu_back_pressed():
	_switch_scene(ScreenName.MAIN_MENU)


#-------------------------------------------------------------------------------
