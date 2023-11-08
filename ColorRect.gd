extends ColorRect

func click():
	self.color = Color.PINK

func change_color(input: bool):
	self.color = Color.BLUE if input else Color.RED

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
