sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Hello there. If you need to [travel to Oasis] or [travel to the Overthere] I can help you with this."); 
	}

	if ($text=~/travel to Oasis/i) {
		quest::movepc(37,-810,883,1); 
	}

	if ($text=~/travel to the Overthere/i) { 
		quest::movepc(93,2740,3430,-157); 
	}
}
