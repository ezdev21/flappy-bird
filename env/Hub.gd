extends CanvasLayer

onready var score_label=$Score

func update_score():
	score_label.text=Str(new_score)
