extends Area2D

@export var max_health:		int		= 100	# HP
@export var recovery:		float	= 0		# HP/s
@export var armor:			int		= 0		# HP
@export var move_speed_p:	float	= 100	# %
@export var damage_p:		float	= 100	# %
@export var area_p:			float	= 100	# %
@export var meapon_speed_p:	float	= 100	# %
@export var duration_p:		float	= 100	# %
@export var amount_p:		float	= 100	# %
@export var cooldown_p:		float	= 100	# %
@export var xp_p:			float	= 100	# %
@export var gold_p:			float	= 100	# %
@export var curse_p:			float	= 100	# %
@export var magned_p:		float	= 0		# %
@export var luck_p:			float	= 0		# %


const BASE_MOVE_SPEED = 400 # pixels/sec

var screen_size # Size of the game window.

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size

func get_move_speed():
	return BASE_MOVE_SPEED * move_speed_p / 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * get_move_speed()
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
