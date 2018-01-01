Player steps into area
	IF no one is on team
		Joins team
		Add to sidescoreboard
	IF someone is in slot
		Non-team player is teleported away
		TEXT: "Error: A player has taken this spot."

2nd player steps into another slot
	IF no one is on team
		Joins team if no one is currently in slot
		Shows up on sidebar scoreboard
	If player is in slot
		Non-team player is telported away
		TEXT: "Error: A player has taken this spot."

Player flips lever
	Shows in actionbar that player X is ready. Example: "Blue: Ready | Red: Not ready | Green: Not ready | Yellow: Not ready"
	Put up glass
	Teleport non-team players away from slot

2nd player flips lever
	Shows in actionbar that player X is ready: "Blue: Ready | Red: Ready | Green: Not ready | Yellow: Not ready"
	Put up glass
	Teleport non-team players away from slot
	TRIGGER: Game start countdown

GAME START COUNTDOWN
	Ensure at least two players are present and ready
		Are readied player lever still down?
			IF YES
				Nothing
			IF NO
				Stop countdown
				"Error: Player unreadied. Game start canceled."
		Do all readied zones have a player in them?
			IF YES
				Nothing
			IF NO
				Stop countdown
				"Error: Player has gone offline"
		