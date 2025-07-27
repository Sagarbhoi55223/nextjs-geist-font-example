# Banshri Beauty Parlour - Services Page

A beautiful and modern Flutter app showcasing services for Banshri Beauty Parlour. The app features an elegant UI with service cards, search functionality, category filtering, and detailed service information.

## Features

- **Beautiful UI Design**: Modern, elegant design with coral pink and turquoise color scheme
- **Service Cards**: Interactive cards displaying service information, ratings, and pricing
- **Search Functionality**: Real-time search through services
- **Category Filtering**: Filter services by categories (Bridal, Hair, Skincare, Nails, Beauty)
- **Service Details**: Detailed modal with service features and booking options
- **Responsive Design**: Optimized for different screen sizes
- **Custom Animations**: Smooth transitions and interactions

## Services Included

1. **Bridal Makeup** - Complete bridal makeover (₹5,000 - ₹15,000)
2. **Haircut & Styling** - Professional haircut with styling (₹300 - ₹1,500)
3. **Facial Treatment** - Deep cleansing facial treatments (₹800 - ₹3,000)
4. **Manicure & Pedicure** - Complete nail care (₹500 - ₹1,200)
5. **Hair Spa** - Relaxing hair spa treatments (₹1,000 - ₹2,500)
6. **Threading & Waxing** - Beauty treatments (₹50 - ₹800)

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── constants/
│   └── app_colors.dart      # Color constants
├── models/
│   └── service_model.dart   # Service data model
├── screens/
│   └── services_screen.dart # Main services screen
└── widgets/
    ├── custom_app_bar.dart  # Custom app bar widget
    └── service_card.dart    # Service card widget
```

## Setup Instructions

### Prerequisites
- Flutter SDK (3.0.0 or higher)
- Dart SDK
- Android Studio / VS Code
- Android/iOS device or emulator

### Installation

1. **Clone or download the project**
   ```bash
   cd banshri_beauty_parlour
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add font assets** (Optional)
   - Download Poppins and Playfair Display fonts
   - Place them in `assets/fonts/` directory
   - Or remove font references to use system fonts

4. **Add service images** (Optional)
   - Add service images to `assets/images/` directory
   - Update image paths in `service_model.dart`
   - Or keep the current icon-based design

5. **Run the app**
   ```bash
   flutter run
   ```

## Dependencies

- `flutter`: SDK
- `google_fonts`: ^6.1.0 - For custom typography
- `flutter_svg`: ^2.0.9 - For SVG support
- `cupertino_icons`: ^1.0.2 - iOS-style icons

## Design Specifications

### Color Palette
- **Primary**: #FF6B6B (Coral Pink)
- **Secondary**: #4ECDC4 (Turquoise)
- **Accent**: #45B7D1 (Sky Blue)
- **Background**: #FFF5F5 (Light Pink)
- **Text Primary**: #2C3E50 (Dark Blue-Gray)

### Typography
- **Headers**: Playfair Display (Elegant serif)
- **Body Text**: Poppins (Modern sans-serif)

## Key Features Implementation

### Service Cards
- Gradient backgrounds with service icons
- Rating display with stars
- Price range and duration
- Popular service badges
- Smooth tap animations

### Search & Filter
- Real-time search functionality
- Category-based filtering
- Empty state handling
- Responsive filter chips

### Service Details Modal
- Bottom sheet with service details
- Feature list with checkmarks
- Price and duration information
- Book now functionality

### Responsive Design
- 2-column grid on mobile
- Adaptive layouts for tablets
- Proper spacing and typography scaling

## Customization

### Adding New Services
1. Update `ServiceModel.getSampleServices()` in `service_model.dart`
2. Add new categories to the categories list in `services_screen.dart`
3. Update service icons in `service_card.dart` if needed

### Changing Colors
1. Modify color values in `app_colors.dart`
2. Update gradients and theme colors as needed

### Adding Images
1. Place images in `assets/images/`
2. Update `pubspec.yaml` assets section
3. Update image paths in service model

## Future Enhancements

- [ ] Online booking system integration
- [ ] User authentication
- [ ] Appointment scheduling
- [ ] Payment gateway integration
- [ ] Push notifications
- [ ] Customer reviews and ratings
- [ ] Loyalty program
- [ ] Social media integration

## Contact Information

**Banshri Beauty Parlour**
- Phone: +91 98765 43210
- Location: [Add your location]
- Hours: [Add operating hours]

## License

This project is created for Banshri Beauty Parlour. All rights reserved.
