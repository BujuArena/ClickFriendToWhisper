hooksecurefunc(FriendsListButtonMixin, "OnClick", function(self, button, ...)
	if button == "LeftButton" then
		FriendsFrameSendMessageButton_OnClick()
	end
end)

if BetterFriendsList_Button_OnClick then
	hooksecurefunc("BetterFriendsList_Button_OnClick", function(button,mouseButton, ...)
		if mouseButton == "LeftButton" and
		BetterFriendsFrame and
		BetterFriendsFrame.SendMessageButton and
		BetterFriendsFrame.SendMessageButton.Click then
			BetterFriendsFrame.SendMessageButton:Click("LeftButton", true)
		end
	end)
end