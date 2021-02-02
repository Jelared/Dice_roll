extends Node2D

var diceOutput
var animations : Array = ["un","deux","trois", "quatre", "cinq","six"]
var dice

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_select") :
		$AnimatedDice.play("roll")
		yield($AnimatedDice,"animation_finished");
		randomize()
		diceOutput = randi()%6
		print(diceOutput)
		$AnimatedDice.play(animations[diceOutput])
		print(animations[diceOutput])
		dice = diceOutput+1
		print(dice)
