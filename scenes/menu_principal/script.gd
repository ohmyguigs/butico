class_name MenuPrincipal
extends Control

@onready var btn_quit = $TextureRect/MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/btn_quit as Button
@onready var btn_start = $TextureRect/MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/btn_start as Button

func _ready():
	btn_quit.button_down.connect(on_quit_pressed)
	btn_start.button_down.connect(on_start_pressed)
	btn_start.grab_focus()

func on_quit_pressed():
	get_tree().quit()

func on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/mundo_01/3d_scene.tscn")
