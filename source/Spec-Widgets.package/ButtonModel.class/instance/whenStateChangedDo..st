protocol-events
whenStateChangedDo: aBlock
	<api: #event>
	"set a block to perform after that the button has been aclicked, and its action performed"

	stateHolder whenChangedDo: aBlock