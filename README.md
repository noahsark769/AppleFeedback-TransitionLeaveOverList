# AppleFeedback-TransitionLeaveOverList
Feedback for an issue where asymmetric transitions to not happen when a view is in a ZStack with a List.

## A SwiftUI view in a ZStack over a List does not apply transition on remove
Steps to reproduce:

1. Clone the repo at https://github.com/noahsark769/AppleFeedback-TransitionLeaveOverList
2. Run the example app
3. Press the blue button, observe the red view transitioning in
4. Press the blue button again

Expected: The red view should animate its transition out, since its `transition` was defined as `.move(edge: .bottom)`
Actual: The red view disappears without animation

Note:

1. After pressing the blue button the second time, pressing it shortly after again shows the red view but the animation is incorrect
2. After waiting a few seconds after pressing the blue button the second time, pressing it again animates in the red view correctly
3. The example behaves correctly if the list is commented out.
