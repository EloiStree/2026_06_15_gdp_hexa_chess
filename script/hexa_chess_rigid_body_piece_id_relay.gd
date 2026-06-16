@tool
class_name HexaChessRigidBodyPieceIdRelay
extends RigidBody3D

signal on_piece_type_relayed(piece_type:HexaChessUtility.PieceColorAndType)

@export var piece_type:HexaChessUtility.PieceColorAndType:
	set(value):
		piece_type=value
		on_piece_type_relayed.emit(piece_type)
		
@export var emit_at_ready:bool=true

func _ready() -> void:
	if emit_at_ready:
		on_piece_type_relayed.emit(piece_type)
