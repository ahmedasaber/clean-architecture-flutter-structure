![Bash](https://img.shields.io/badge/Bash-Script-green)
![Flutter](https://img.shields.io/badge/Flutter-Clean%20Architecture-blue)

# 🚀 Flutter Clean Architecture Generator

A fast and easy tool to create Clean Architecture structure in Flutter projects using Bash Scripts.

## 🎯 Overview

This tool provides you with the ability to build a Clean Architecture structure for your Flutter project automatically and quickly. Instead of creating folders and files manually, you can use two simple scripts:

1. **generate_arch.sh** - To create the basic project structure
2. **feat.sh** - To add a new Feature with the three layers (Data, Domain, Presentation)

## ✨ Features

- ✅ Create complete Clean Architecture structure with one command
- ✅ Add new Features easily
- ✅ Ready-made files with Boilerplate Code
- ✅ Professional folder organization
- ✅ Supports Repository Pattern
- ✅ Ready Error Handling (Failures & Exceptions)
- ✅ Organized Routing System
- ✅ Ready Utilities files (Colors, TextStyles, Validators)

## 📥 Installation

### Method 1: Direct Download

1. Download the files:
   - [generate_arch.sh](https://github.com/user-attachments/files/24695299/generate_arch.sh)
   - [feat.sh](https://github.com/user-attachments/files/24695298/feat.sh)

2. Place the files in the root directory of your Flutter project

3. Grant execution permissions to the files:

```bash
chmod +x generate_arch.sh
chmod +x feat.sh
```
## 🎮 Usage

### 1️⃣ Create Basic Structure

In your project's root directory, run:

```bash
### Method 1: Using chmod (Recommended)
./generate_arch.sh

### Method 2: Direct bash execution
bash generate_arch.sh
```

This will create:
- `assets` folders (images, icons, fonts)
- `lib/core` folder with all basic files
- Error handling (Failures & Exceptions)
- Routing system
- Service Locator (Getit file)
- Utilities (Colors, TextStyles, Validators, Constants)
- Common widgets

### 2️⃣ Add New Feature

```bash
./feat.sh
```

Then enter the Feature name (e.g., Auth, Home, Profile)

A complete Feature structure will be created with:
- **Data Layer**: Models, DataSources, Repository Implementation
- **Domain Layer**: Entities, Repository Interface, UseCases
- **Presentation Layer**: Views, Widgets, Manager (State Management)

## 📁 Project Structure

After running the scripts, you will have the following structure:

```
assets/
├── images/
├── icons/
└── fonts/
lib/
├── core/
│   ├── error/
│   │   ├── failures.dart
│   │   └── exceptions.dart
│   ├── helper_function/
│   │   └── on_generate_route.dart
│   ├── network/
│   │   └── api_service.dart
│   ├── services/
│   │   └── get_it_service.dart
│   ├── utils/
│   │   ├── constants.dart
│   │   ├── app_colors.dart
│   │   ├── app_text_styles.dart
│   │   └── app_validators.dart
│   └── widgets/
│       └── custom_button.dart
└── features/
    └── [feature_name]/
        ├── data/
        │   ├── datasources/
        │   ├── models/
        │   └── repositories/
        ├── domain/
        │   ├── entities/
        │   ├── repositories/
        │   └── usecases/
        └── presentation/
            ├── manager/
            └── views/
                └── widgets/
```

## 💡 Examples

### Example: Create Authentication Feature

```bash
./feat.sh
# Enter: Auth
```

Result:

```
lib/features/auth/
├── data/
|   ├── datasource/
│   ├── models/auth_model.dart
│   └── repositories/auth_repository_impl.dart
├── domain/
│   ├── entities/auth_entity.dart
│   ├── repositories/auth_repository.dart
│   └── usecases/
└── presentation/
    ├── manager/
    ├── views/auth_view.dart
    └── views/widgets/
```
## 🛠️ Customization

You can modify the scripts according to your needs:

- Add new folders
- Customize Boilerplate Code
- Add additional Dependencies
- Change file or class names

## 📝 Notes

- The scripts use **snake_case** for file naming
- Classes are automatically generated in **PascalCase**
- All generated files include TODO comments for easy customization
- The structure follows Clean Architecture principles by Uncle Bob

## 🔧 Troubleshooting

### Permission Denied Error

If you get a permission denied error, run:

```bash
chmod +x generate_arch.sh feat.sh
```

### Windows Users

If you're on Windows, use Git Bash or WSL (Windows Subsystem for Linux) to run the scripts.

## 📞 Contact

If you have any questions or suggestions, feel free to open an Issue on GitHub.

---

⭐ If you like the project, don't forget to give it a star on GitHub!

**Made with ❤️ for Flutter Developers**
