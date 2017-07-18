def chessboard

	chess = [["Torre-N", "Caballo-N", "Alfil-N", "Reina-N", "Rey-N", "Alfil-N", "Caballo-N", "Torre-N"],
			["Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N", "Peón-N"],
			["B", "N", "B", "N", "B", "N", "B", "N"],
			["N", "B", "N", "B", "N", "B", "N", "B"],
			["B", "N", "B", "N", "B", "N", "B", "N"],
			["N", "B", "N", "B", "N", "B", "N", "B"],
			["Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B", "Peón-B"],
			["Torre-B", "Caballo-B", "Alfil-B", "Reina-B", "Rey-B", "Alfil-B", "Caballo-B", "Torre-B"]]

	chess.each do |r|
		puts r.map { |piece| piece.center(9) }.join("|")
	end
end

chessboard