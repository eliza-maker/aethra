extends Area2D  

@export var next_scene: String  

func _on_body_entered(body):  
	print("Colisión detectada con: ", body.name)  # Mensaje para depurar  
	if body.name == "Player":  
		print("Cambiando a la escena: ", next_scene)  
		get_tree().change_scene_to_file(next_scene)  
