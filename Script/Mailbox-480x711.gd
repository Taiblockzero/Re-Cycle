extends Sprite2D

var isInMail = false
# Called when the node enters the scene tree for the first time.
func _ready():
	$mailboxHitbox/Control.hide()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_E) && isInMail:
		get_tree().change_scene_to_file("res://Scenes/inventory.tscn")


func _on_mailbox_hitbox_body_entered(body):
	$mailboxHitbox/Control.show()
	isInMail = true

func _on_mailbox_hitbox_body_exited(body):
	$mailboxHitbox/Control.hide()
	isInMail = false
