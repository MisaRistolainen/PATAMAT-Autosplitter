// Pat & Mat autosplitter by Kainalo

// State
state("PATAMAT")
{
// This value will most likely be different in your findings.
	uint loading : 0x03DA480, 0x2C, 0x614, 0xDC, 0x798;
	uint cutscene : 0x00797B8, 0x4, 0xC, 0x8, 0x1A0, 0x5D0;
}

// Initialization
init
{
	vars.fresh = 0;
	vars.split = 0;
}

// Updating
update
{

}

// Startup
startup
{
    //settings.Add("option1", true, "Load Removal");
	//settings.SetToolTip("option1", "Load Description");
}

 // Start Timer
start
{
	if (current.cutscene == 0 && old.cutscene == 1)
    {
		vars.fresh = 1;
        return true;
    }
}

// Split
split
{	
    if (old.cutscene == 0 && current.cutscene == 1)
    {
		vars.split += 1;
		return true;
	} 
}

// Reset
reset
{

}

isLoading
{

}