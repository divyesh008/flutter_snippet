# flutter_snippets

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

### Chapter 5: Integrated Shared prefrences extension & Implemented Logout Action

- Installed shared_preferences: ^0.5.12+4 extension

```c#
  It works like Settings plugin of Xamarin.Forms, so if you are already logged in the you close app and open it again it will not show LoginPage but it will take you to HomePage.
```

- Implemented LoggedOut Action, added action button on AppBar

- Use Navigator.pushReplacementNamed(context,route) so that it will replace and remove the page from stack so when you click Hardware back button of the Android device it will not take you to LoginScreen unless you logout.
