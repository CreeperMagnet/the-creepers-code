# Split the page

# Split the page into two parts: everything before the injection and everything after the injection
$data modify storage tcc:storage root.temp.page_injections[-1].1 set string storage tcc:storage root.temp.item.tag.pages[$(page)] 0 $(start)
$data modify storage tcc:storage root.temp.page_injections[-1].2 set string storage tcc:storage root.temp.item.tag.pages[$(page)] $(end) -1

# Next step
function tcc:item/compendium/unlock/inject/join with storage tcc:storage root.temp.page_injections[-1]
