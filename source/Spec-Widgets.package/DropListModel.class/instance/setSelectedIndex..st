protocol
setSelectedIndex: anIndex
	<api: #integer min:1 max:#listSize getter: #selectedIndex>
	"Force the selection of the item at index anIndex"
	| selection |

	selection := listHolder contents at: anIndex ifAbsent: [ ^ self ].
	selection value.
	selectionHolder index contents: anIndex.
	selectionHolder selection contents: selection