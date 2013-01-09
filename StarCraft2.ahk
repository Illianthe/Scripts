;; Quick hack for the Lost Viking minigame in StarCraft 2.
;; Turns the spacebar into a toggled function that spams it
;; every 50 ms. This is much more effective than keeping
;; the key held down (the ship shoots roughly twice as fast).
;;
;; See: http://reflections.irythia.com/2010/10/31/starcraft-ii-lost-viking/

#IfWinActive, StarCraft II

Activated := 0
 
Loop {
	If (Activated) {
		Send {Space}
		Sleep, 50
	}
}
 
$Space::
	Activated := !Activated