AutolayoutCollectionViewIssue
=============================

Some code to represent a bug that I can't figure out, autolayout resets the content offset.

So the issue is that when you click to go the fullscreen controller, it goes to index 0 when full screen is on even though I explicitly told it to scroll to content offset index 1 in viewWillAppear of the FullScreenController

When you turn off autolayout,, it works fine. Autolayout somehow does something to mess with the initial contentOffest of the collection view that I'm not sure what it's doing though.

