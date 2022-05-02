function wrinput()

	# FIX ME: Needs error checking, everywhere.
	# FIX ME: Needs to interface with database.

	# Initializing
	print("Which game? ")
	game = readline()
	print("How many players? ")
	playerNum = parse(Int, readline())
	wlist = Array{Any}(missing, (playerNum, 2))


	# Loop that gets player name and their number of wins, also adds to the total number of rounds based on the number of wins each player has. This loop only works for games that don't have the concept of a tie.
	for i = 1:playerNum
		println("Name one of the players: ")
		wlist[i,1] = readline()
		println("How many wins did they have? ")
		wlist[i,2] = parse(Int, readline())
	end

	rounds = sum(wlist[:,2])

	return game, rounds, wlist
end
