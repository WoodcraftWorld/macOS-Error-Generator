display dialog "Enter Title: " default answer "" buttons {"Next"} default button "Next" with title "WoodcraftWorld macOS Error Generator"
set title to text returned of result
display dialog "Enter body: " default answer "" buttons {"Next"} default button "Next" with title "WoodcraftWorld macOS Error Generator"
set body to text returned of result
display dialog "How many buttons do you want?" buttons {"1", "2", "3"} default button "1" with title "WoodcraftWorld macOS Error Generator"
set btnCount to button returned of result
if btnCount is equal to "1" then
	display dialog "Enter button text: " default answer "" buttons {"Next"} default button "Next" with title "WoodcraftWorld macOS Error Generator"
	set btn1 to text returned of result
else if btnCount is equal to "2" then
	display dialog "Enter left button text: " default answer "" buttons {"Next"} default button "Next" with title "WoodcraftWorld macOS Error Generator"
	set btn1 to text returned of result
	display dialog "Enter right button text: " default answer "" buttons {"Next"} default button "Next" with title "WoodcraftWorld macOS Error Generator"
	set btn2 to text returned of result
else if btnCount is equal to "3" then
	display dialog "Enter left button text: " default answer "" buttons {"Next"} default button "Next" with title "WoodcraftWorld macOS Error Generator"
	set btn1 to text returned of result
	display dialog "Enter middle button text: " default answer "" buttons {"Next"} default button "Next" with title "WoodcraftWorld macOS Error Generator"
	set btn2 to text returned of result
	display dialog "Enter right button text: " default answer "" buttons {"Next"} default button "Next" with title "WoodcraftWorld macOS Error Generator"
	set btn3 to text returned of result
else
	display dialog "Unhandled Exception" buttons {"Close application"} cancel button "Close application" with icon stop with title "WoodcraftWorld macOS Error Generator"
end if


display dialog "Add an icon?" buttons {"Yes", "No"} default button "Yes" with title "WoodcraftWorld macOS Error Generator"
set wantsIcon to button returned of result
if wantsIcon is equal to "Yes" then
	display dialog "Choose icon" buttons {"stop", "caution", "note"} default button "caution" with title "WoodcraftWorld macOS Error Generator"
	set iconStr to button returned of result
	if iconStr is equal to "stop" then
		set icon to stop
	else if iconStr is equal to "caution" then
		set icon to caution
	else
		set icon to note
	end if
	display dialog "Click finish to show error" buttons {"Finish"} default button "Finish" with title "WoodcraftWorld macOS Error Generator"
	if btnCount is equal to "1" then
		display dialog body with title title buttons {btn1} with icon icon
	else if btnCount is equal to "2" then
		display dialog body with title title buttons {btn1, btn2} with icon icon
	else
		display dialog body with title title buttons {btn1, btn2, btn3} with icon icon
	end if
else
	display dialog "Click finish to show error" buttons {"Finish"} default button "Finish" with title "WoodcraftWorld macOS Error Generator"
	if btnCount is equal to "1" then
		display dialog body with title title buttons {btn1}
	else if btnCount is equal to "2" then
		display dialog body with title title buttons {btn1, btn2}
	else
		display dialog body with title title buttons {btn1, btn2, btn3}
	end if
end if