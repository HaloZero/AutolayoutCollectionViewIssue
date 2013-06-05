AutolayoutCollectionViewIssue
=============================

Some code to represent a bug that I can't figure out, autolayout resets the content offset.

So the issue is that when you click to go the fullscreen controller, it goes to index 0 when full screen is on even though I explicitly told it to scroll to content offset index 1 in viewWillAppear of the FullScreenController

When you turn off autolayout,, it works fine. Autolayout somehow does something to mess with the initial contentOffest of the collection view that I'm not sure what it's doing though.

SO I think the issue is somehow autolayout's changes are resetting the contentoffest of the collection view, I'm not sure how to either 1) stop that 2) somehow use autolayout constraints to setup the contentoffset

I want to avoid putting the code in viewDidAppear because it creates a visible change to the user.

Any help would be appreciated

I've already looked at this solution (which only works for scrollviews, the cell itself is generated on the fly so you can't IBOutlet it)
http://stackoverflow.com/questions/15345522/uiscrollview-wrong-offset-with-auto-layout