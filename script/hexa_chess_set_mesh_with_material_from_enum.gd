class_name HexaChessSetMeshWithMaterialFromEnum
extends Node

@export var resource: HexaChessMaterialPieceResource

@export var to_affect_mesh_piece:MeshInstance3D
@export var to_affect_mesh_icon:MeshInstance3D

func set_with_enum(piece_type : HexaChessUtility.PieceColorAndType )->void:
	
	var mat_color:StandardMaterial3D = resource._mat_white_piece
	if	piece_type==HexaChessUtility.PieceColorAndType.BLACK_PAWN or \
		piece_type==HexaChessUtility.PieceColorAndType.BLACK_BISHOP or \
		piece_type==HexaChessUtility.PieceColorAndType.BLACK_KNIGHT or \
		piece_type==HexaChessUtility.PieceColorAndType.BLACK_TOWER or \
		piece_type==HexaChessUtility.PieceColorAndType.BLACK_QUEEN or \
		piece_type==HexaChessUtility.PieceColorAndType.BLACK_KING :
			mat_color=resource._mat_black_piece
	
	var mat_piece:StandardMaterial3D =resource._mat_black_pawn
	if	piece_type == HexaChessUtility.PieceColorAndType.BLACK_PAWN:
		mat_piece = resource._mat_black_pawn
	elif piece_type == HexaChessUtility.PieceColorAndType.BLACK_BISHOP:
		mat_piece = resource._mat_black_bishop
	elif piece_type == HexaChessUtility.PieceColorAndType.BLACK_KNIGHT:
		mat_piece = resource._mat_black_knight
	elif piece_type == HexaChessUtility.PieceColorAndType.BLACK_TOWER:
		mat_piece = resource._mat_black_tower
	elif piece_type == HexaChessUtility.PieceColorAndType.BLACK_QUEEN:
		mat_piece = resource._mat_black_queen
	elif piece_type == HexaChessUtility.PieceColorAndType.BLACK_KING:
		mat_piece = resource._mat_black_king
	elif piece_type == HexaChessUtility.PieceColorAndType.WHITE_PAWN:
		mat_piece = resource._mat_white_pawn
	elif piece_type == HexaChessUtility.PieceColorAndType.WHITE_BISHOP:
		mat_piece = resource._mat_white_bishop
	elif piece_type == HexaChessUtility.PieceColorAndType.WHITE_KNIGHT:
		mat_piece = resource._mat_white_knight
	elif piece_type == HexaChessUtility.PieceColorAndType.WHITE_TOWER:
		mat_piece = resource._mat_white_tower
	elif piece_type == HexaChessUtility.PieceColorAndType.WHITE_QUEEN:
		mat_piece = resource._mat_white_queen
	elif piece_type == HexaChessUtility.PieceColorAndType.WHITE_KING:
		mat_piece = resource._mat_white_king
	
	to_affect_mesh_piece.material_override =mat_color
	to_affect_mesh_icon.material_override =mat_piece
	pass
