*Glorp
glorpPreWrite: aSession
	"This is a selector that objects can implement in order to receive notification when Glorp is about to write them. Only objects that have pending modifications will receive this notice. However, note that because of that, the data to be written will have already been calculated before this method is called, which makes it difficult to use this to update the method. If you want to put in audit information (e.g. the time at which the object was written, the associated username) then you probably want to use a generator associated with the field instead. See, for example GlorpRecordWithUpdate in the test suite."