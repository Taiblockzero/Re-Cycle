extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$mailboxHitbox/Control.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mailbox_hitbox_body_entered(body):
	$mailboxHitbox/Control.show()


func _on_mailbox_hitbox_body_exited(body):
	$mailboxHitbox/Control.hide()
