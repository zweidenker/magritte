protocol
items: aList
	"Set the items of the list.
	aList is a collection of your domain specific items.
	Use a two stages notification (issue 7420)."

	<api: #st getter: #listItems registration: #whenListChanged:>
	| oldContents |
	oldContents := listHolder contents.
	listHolder contents: (aList sorted: sortingBlockHolder contents).
	listAnnouncer announce: (ValueChanged oldContents: oldContents newContents: listHolder contents)