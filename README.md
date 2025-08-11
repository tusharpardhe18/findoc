# 📱 Findoc Assigment

A beautiful Flutter application featuring user authentication and a stunning photo gallery powered by the Picsum Photos API. Built with modern UI design principles and robust state management using BLoC pattern.

## 🌟 Features

### 🔐 Authentication

- **Email & Password Login** with comprehensive validation
- **Real-time Form Validation** with user-friendly error messages
- **Secure Password Requirements**: 8+ characters with uppercase, lowercase, digit, and symbol
- **Beautiful Gradient UI** with smooth animations and loading states

### 🖼️ Photo Gallery

- **Dynamic Image Loading** from [Picsum Photos API](https://picsum.photos/)
- **Responsive Design** with proper aspect ratio maintenance
- **Modern Card Layout** with shadows and rounded corners
- **Pull-to-Refresh** functionality for seamless user experience
- **Robust Error Handling** with retry mechanisms and fallback options
- **Professional Typography** using Montserrat font family

## 🏗️ Architecture

This application follows **Clean Architecture** principles with **BLoC State Management**:

```
lib/
├── blocs/              # State Management (BLoC Pattern)
│   ├── auth/          # Authentication logic
│   └── images/        # Image loading logic
├── models/            # Data models
├── repositories/      # API communication layer
├── ui/               # User interface screens
├── utils/            # Validation utilities
└── main.dart         # Application entry point
```

## 🛠️ Tech Stack

- **Framework**: Flutter 3.8.1+
- **State Management**: flutter_bloc ^9.1.1
- **HTTP Client**: http ^1.1.0
- **Typography**: google_fonts ^6.3.0
- **Architecture**: Clean Architecture with BLoC pattern

## 📋 Requirements Fulfilled

### ✅ Login Screen

- [x] Email field with regex validation
- [x] Password field with complex validation rules
- [x] Submit button with loading states
- [x] Navigation to home screen on successful login
- [x] Beautiful gradient UI design

### ✅ Home Screen

- [x] Fetches 10 images from Picsum Photos API
- [x] Vertical ListView with proper padding
- [x] Full-width images with dynamic height based on aspect ratio
- [x] Author names in Montserrat Semi-Bold (dark text)
- [x] Image IDs in Montserrat Regular (dark grey, max 2 lines)
- [x] Modern card-based layout with enhanced UX

### ✅ Technical Implementation

- [x] BLoC state management throughout the app
- [x] Proper API integration with error handling
- [x] Clean code architecture
- [x] Responsive design
- [x] Network connectivity handling

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.8.1 or higher
- Dart SDK 3.0.0 or higher
- Android Studio / VS Code
- Android device or emulator

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/findoc.git
   cd findoc
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Building APK

To build a release APK:

```bash
flutter build apk --release
```

The APK will be generated at: `build/app/outputs/flutter-apk/app-release.apk`

## 📱 Screenshots

### Login Screen

- Modern gradient design with card-based form
- Real-time validation with helpful error messages
- Smooth loading animations

### Home Screen

- Beautiful photo gallery with card layout
- Author information with avatar initials
- Image resolution badges and professional spacing
- Pull-to-refresh functionality

## 🔧 Configuration

### Network Permissions

The app includes proper Android network permissions in `android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
```

### API Integration

- **Base URL**: `https://picsum.photos/v2/list`
- **Endpoint**: `?limit=10` for fetching 10 images
- **Timeout**: 15 seconds with proper error handling
- **Fallback**: Mock data for offline scenarios

## 🎨 Design System

### Color Palette

- **Primary**: `#667eea` (Blue gradient start)
- **Secondary**: `#764ba2` (Purple gradient end)
- **Text Primary**: `#2D3748` (Dark grey)
- **Text Secondary**: `#718096` (Medium grey)
- **Background**: `#F7FAFC` (Light grey)

### Typography

- **Font Family**: Montserrat
- **Weights**: Regular (400), Semi-Bold (600), Bold (700)
- **Hierarchy**: Proper text scaling and spacing

## 🧪 Testing

### Login Validation Testing

- **Valid Email**: Any standard email format (e.g., `user@example.com`)
- **Valid Password**: Must contain:
  - Minimum 8 characters
  - At least 1 uppercase letter
  - At least 1 lowercase letter
  - At least 1 digit
  - At least 1 special character

### Example Valid Credentials

- **Email**: `test@example.com`
- **Password**: `Password123!`

## 🐛 Error Handling

The app includes comprehensive error handling:

- **Network connectivity issues**
- **API timeout scenarios**
- **Invalid response formats**
- **Image loading failures**
- **Form validation errors**

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^9.1.1 # State management
  http: ^1.1.0 # HTTP client
  google_fonts: ^6.3.0 # Typography
  equatable: ^2.0.5 # Value equality
  cupertino_icons: ^1.0.8 # iOS icons
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Developer

**Assignment for Findoc, Gurugram**

Built with ❤️ using Flutter and BLoC pattern.

---

## 📞 Support

If you encounter any issues or have questions:

1. Check the [Issues](https://github.com/yourusername/findoc-flutter-gallery/issues) section
2. Create a new issue with detailed description
3. Include device information and error logs

## 🔗 Links

- **APK Download**: [Release APK](https://drive.google.com/file/d/1gpndlr8r-ggzcaNEjXQItZWFvMjgyLEJ/view?usp=sharing)
- **API Documentation**: [Picsum Photos](https://picsum.photos/)
- **Flutter Documentation**: [flutter.dev](https://flutter.dev/)
- **BLoC Documentation**: [bloclibrary.dev](https://bloclibrary.dev/)

---

_This application demonstrates modern Flutter development practices with clean architecture, proper state management, and beautiful UI design._
