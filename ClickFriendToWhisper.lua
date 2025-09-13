hooksecurefunc(FriendsListButtonMixin, "OnClick", function(self, button, ...)
	if button == "LeftButton" then
		FriendsFrameSendMessageButton_OnClick()
	end
end)