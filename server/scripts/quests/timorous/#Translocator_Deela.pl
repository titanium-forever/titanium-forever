sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Hello there. If you need to [travel to Butcherblock] or [travel to Firiona] I can help you with this."); 
	}

	if ($text=~/travel to butcherblock/i) {
		quest::movepc(68,3168.92,851.92,11.66); 
	}

	if ($text=~/travel to firiona/i) { 
		quest::movepc(84,1400,-4282,-102); 
	}
}
