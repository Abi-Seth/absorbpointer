# Flutter Assignment Submission

## Student

Name: Seth

## Application Summary

This project is a small Flutter demo of `AbsorbPointer`. The app shows a button that only responds when the absorbing state is turned off, which makes it useful for demonstrating how to disable taps during loading or processing states.

## Widget Demo

The live demo has one real-world use case: temporarily blocking interaction while a task is active. The button label and status text make it easy to see the widget behavior on screen.

## Three Attributes

1. `absorbing` controls whether the wrapped button receives pointer input. When it is `true`, taps are blocked.
2. `child` defines the widget being protected by `AbsorbPointer`. In this app, the child is the `ElevatedButton` labeled **Click Me**.
3. `ignoringSemantics` controls whether accessibility semantics are also absorbed along with pointer events.

## Run Instructions

1. Install Flutter dependencies with `flutter pub get`.
2. Launch the app with `flutter run`.
3. Press **Enable Tap** or **Disable Tap** to switch the button between blocked and active states.

## Screenshot

![AbsorbPointer demo screenshot](absorbpointer_demo_screenshot.svg)

## Demo Video

Video link: PASTE_YOUR_WORKING_VIDEO_LINK_HERE

## Notes

The repository now matches the actual classroom demo instead of the starter Hello World description, so the README and submission text are ready to share with the project.
