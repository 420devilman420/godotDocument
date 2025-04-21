extends RigidBody2D

func _ready():
	var mob_types = Array($AnimatedSprite2D.sprite_frames.get_animation_names())
	$AnimatedSprite2D.animation = mob_types.pick_random()

func _on_visible_on_screen_notifer_2d_screen_exited():
	queue_free()

#https://docs.godotengine.org/en/stable/getting_started/first_2d_game/05.the_main_game_scene.html
