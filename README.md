# 🛍️ Flutter Shopping App

A simple shopping application built with **Flutter** that demonstrates:
- Welcome screen with local & network images
- Sign Up / Sign In with form validation
- Smooth page transitions (FadeTransition)
- Shopping Home with banner, products grid, and hot offers section
- Internationalization (English & Arabic) using `intl` and `.arb` files

---

## ✨ Features

- **Welcome Screen**  
  - Two images (local + network) displayed in a row  
  - Custom font (`Suwannaphum`)  
  - Buttons for Sign Up and Sign In  

- **Authentication**  
  - Sign Up & Sign In forms with validation:
    - Full name (first letter capitalized)  
    - Valid email format  
    - Password ≥ 6 chars  
    - Confirm password = password  
  - Success dialog with navigation to home  

- **Home Screen**  
  - AppBar with title  
  - Banner using `PageView` + indicator  
  - GridView with 2 products per row (image + name + price + Add to cart button with SnackBar)  
  - Hot Offers section (ListView with image + description inside Expanded)  

- **Internationalization**  
  - Supports English (LTR) and Arabic (RTL)  
  - Toggle language from AppBar  
  - Strings stored in `.arb` files (not hardcoded)  

- **Code Quality**  
  - Each screen separated into different files  
  - Reusable `CustomAppBar` widget  
  - Clear naming and no duplicated code  

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed → [Install Guide](https://docs.flutter.dev/get-started/install)  
- Dart SDK (comes with Flutter)  

### Run the app
```bash
flutter pub get
flutter run
