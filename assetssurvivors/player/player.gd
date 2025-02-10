extends Area2D

@export var level:			int		= 1		# level
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
@export var size_p:			float	= 100	# %
@export var magnet_p:		float	= 0		# % hmmmmmmmmmmmm
@export var luck_p:			float	= 0		# %


const BASE_MOVE_SPEED = 400 # pixels/sec

var screen_size # Size of the game window.

var direction := Vector2(0, 1)

var health: int = max_health
var invulnerable: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	scale *= size_p/100
	$AnimatedSprite2D.play()

func get_move_speed():
	return BASE_MOVE_SPEED * move_speed_p / 100
	
func set_animation(animation):
	$AnimatedSprite2D.animation = animation

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input_vector = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	
	var velocity := Vector2.ZERO
	if input_vector.length() != 0:
		direction = input_vector
		velocity = input_vector.normalized() * get_move_speed()
		if direction.x:
			$AnimatedSprite2D.flip_h = direction.x < 0
		if  not animation_busy:
			play_animation("walk")
	else:
		if not animation_busy:
			play_animation("idle")
	
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)

func take_damage(damage: int):
	if invulnerable:
		return
	health -= damage
	play_animation("hurt_start")
	become_invulnerable()

func become_invulnerable():
	invulnerable = true
	$InvulnerabilityTimer.start()
	

func _on_body_entered(body: Node2D) -> void:
	take_damage(42)


func _on_invulnerability_timer_timeout() -> void:
	invulnerable = false
	if $AnimatedSprite2D.animation == "hurt_start":
		animation_busy = false
		play_animation("hurt_end")
		
var animation_busy: bool = false
func play_animation(name: String):
	if animation_busy:
		print("busy")
		return
	$AnimatedSprite2D.play(name)
	if name == "hurt_start" or name == "hurt_end":
		animation_busy = true


func _on_animated_sprite_2d_animation_finished() -> void:
	if $AnimatedSprite2D.animation != "hurt_start":
		animation_busy = false
