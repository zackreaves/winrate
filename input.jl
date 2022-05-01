function wrinput()

	# Initializing and grabbing data
	print("Which game? ")
	game = readline()
	print("\nHow many players? ")
	playerNum = parse(Int, readline())
	print("\n")
	wlist = Array{Any}(missing, (2, playerNum))
	#playerInt = parse(Int, playerNum)
	#rounds = 0


	# Loop that gets player name and their number of wins, also adds to the total number of rounds based on the number of wins each player has. This loop only works for games that don't have the concept of a tie.
	for i = 1:playerNum
		println("Name one of the players: ")
		wlist[playerNum,1] = readline()
		println("How many wins did they have? ")
		wlist[playerNum,2] = parse(Int, readline())
		#wins = readline()
		#winNum = parse(Int, wins)
		#rounds = rounds + winNum
	end

	return game, rounds, wlist
end
