# Ngee Ann Polytechnic Mobile Application Clone 📱

## Project Overview 🚀
This project is a **Flutter-based mobile application** designed to replicate the **Ngee Ann Polytechnic website**. It provides an interactive way for users to browse **course offerings, alumni details, and program information**, with features that enhance user experience such as **favourites, animations, dropdown menus, and scrolling options**.

## Features ✨
### **1. Main Page**
- Displays **course information** and **alumni details**.
- Implements **horizontal scrolling** for alumni profiles and **vertical scrolling** for courses.
- Uses **ListView widget** for structured content presentation.

### **2. Favourites Page ❤️**
- Allows users to **bookmark courses** and view them later.
- Includes **checkbox functionality** to select courses.
- Updates favourites via an **“Update Favourite” button**.
- Displays a **SnackBar notification** when changes are made.
- Clicking on a favourite course navigates the user directly to its details.

### **3. Engineering Program Pages 🏗**
- Structured similarly to the main page.
- Contains a **horizontal scrolling section** for course entry requirements and animations.
- Includes a **Dropdown Button widget** to view semester modules dynamically.
- Users can return to the main page via a **“Return to Main Page” button**, with a **SnackBar notification**.

## Enhancements & Technical Features 🛠
### **1. Horizontal Scroll View**
- Used to display alumni details.
- Implemented using `scrollDirection: Axis.horizontal` inside **ListView**.

### **2. Icons 🎨**
- Integrated with dropdown menus for better UI clarity.
- Positioned dynamically using `isExpanded: true`.

### **3. Animations 🎬**
- Implemented using **Lottie animations**.
- Configured in `pubspec.yaml` via `lottie: ^1.0.2`.
- Imported animations from **LottieFiles**.

### **4. Card Widget 🃏**
- Used to enhance **visual appeal** of course information.
- Implements **gradient backgrounds** for better readability.

### **5. Dropdown Button Widget 📂**
- Allows users to **select different semesters**.
- Uses `DropdownMenuItem<String>` to display corresponding **modules**.

## Technologies Used 💻
- **Flutter** (Dart)
- **Android Studio**
- **Lottie Animations**
- **SnackBar Notifications**
- **ListView, Card Widgets, Dropdown Buttons**
