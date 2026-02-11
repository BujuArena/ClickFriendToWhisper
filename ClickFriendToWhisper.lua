-- mainline
if FriendsListButtonMixin and FriendsListButtonMixin.OnClick then
	hooksecurefunc(FriendsListButtonMixin, "OnClick", function(self, button, ...)
		if button == "LeftButton" then
			FriendsFrameSendMessageButton_OnClick()
		end
	end)
end

-- classic
if FriendsFrameFriendButton_OnClick then
	hooksecurefunc("FriendsFrameFriendButton_OnClick", function(button, mouseButton, ...)
		if mouseButton == "LeftButton" and
		FriendsFrameSendMessageButton and
		FriendsFrameSendMessageButton.Click then
			FriendsFrameSendMessageButton:Click("LeftButton", true)
		end
	end)
end

-- betterfriendslist
if BetterFriendsList_Button_OnClick then
	hooksecurefunc("BetterFriendsList_Button_OnClick", function(button, mouseButton, ...)
		if mouseButton == "LeftButton" and
		BetterFriendsFrame and
		BetterFriendsFrame.SendMessageButton and
		BetterFriendsFrame.SendMessageButton.Click then
			BetterFriendsFrame.SendMessageButton:Click("LeftButton", true)
		end
	end)
end