;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Scripts for Guild Wars 2
;; Author: Illianthe
;; 
;; These scripts were written for default bindings.
;; They may have to be adapted for custom settings.
;;
;; Functionality:
;; - Free look while running (Ctrl+R)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, Guild Wars 2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hotkeys and hotstrings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^r::
~w::
~a::
~s::
~d::
~r::
~LButton UP::
~RButton UP::
	ToggleFreeRun()
	return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Globals
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

free_run_mode := false

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ToggleFreeRun() {
	global free_run_mode
	
	if (free_run_mode) {
		free_run_mode := false
		
		;; Stop running before disabling free look
		if (A_ThisHotkey = "~a" or A_ThisHotkey = "~d" or A_ThisHotkey = "~RButton UP") {
			Send r
		}
		
		Click Right Up
	}
	else if (A_ThisHotkey = "^r") {
		free_run_mode := true
		Send r
		Click Right Down
	}
}