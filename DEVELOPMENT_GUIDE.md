# CityStock - Development Guide

## 🚀 Quick Start

### Prerequisites
- Flutter SDK (latest stable)
- Android Studio / VS Code
- Firebase account
- Google Maps API key

### Setup Steps
1. Install Flutter: https://flutter.dev/docs/get-started/install
2. Create Firebase project: https://console.firebase.google.com
3. Get Google Maps API key: https://developers.google.com/maps
4. Clone this repository
5. Run `flutter pub get` in mobile directory
6. Configure environment variables

## 📱 App Architecture

### Mobile App (Flutter)
```
mobile/
├── lib/
│   ├── main.dart              # App entry point
│   ├── models/                # Data models
│   │   ├── user.dart
│   │   ├── shop.dart
│   │   ├── item.dart
│   │   └── location.dart
│   ├── screens/               # UI screens
│   │   ├── auth/
│   │   ├── search/
│   │   ├── map/
│   │   ├── shop_profile/
│   │   └── settings/
│   ├── services/              # Business logic
│   │   ├── api_service.dart
│   │   ├── location_service.dart
│   │   ├── notification_service.dart
│   │   └── storage_service.dart
│   ├── widgets/               # Reusable widgets
│   │   ├── common/
│   │   ├── map/
│   │   └── search/
│   └── utils/                 # Utilities
├── assets/                    # Images, icons, fonts
└── test/                      # Unit tests
```

### Backend (Firebase/Supabase)
```
backend/
├── functions/                 # Cloud functions
│   ├── auth/
│   ├── inventory/
│   ├── search/
│   └── notifications/
├── database/                  # Database schemas
└── api/                       # REST API endpoints
```

### Web Dashboard
```
web/
├── src/
│   ├── components/
│   ├── pages/
│   ├── services/
│   └── utils/
└── public/
```

## 🎯 Development Phases

### Phase 1: MVP (8-10 weeks)
**Goal**: Core functionality with basic features

#### User Features:
- [ ] User authentication (email/phone)
- [ ] Basic search functionality
- [ ] Map view with shop locations
- [ ] Shop profile pages
- [ ] Item availability display

#### Shopkeeper Features:
- [ ] Shop registration
- [ ] Basic inventory management
- [ ] Stock status updates

#### Technical Tasks:
- [ ] Flutter project setup
- [ ] Firebase integration
- [ ] Google Maps integration
- [ ] Basic database schema
- [ ] Authentication system

### Phase 2: Enhanced Features (6-8 weeks)
**Goal**: Advanced features and improved UX

#### User Enhancements:
- [ ] Wishlist functionality
- [ ] Push notifications
- [ ] Advanced search filters
- [ ] Shop ratings and reviews
- [ ] "Shops Near Me" feature

#### Shopkeeper Enhancements:
- [ ] Analytics dashboard
- [ ] Bulk inventory upload
- [ ] Deal/offer posting

### Phase 3: Advanced Features (4-6 weeks)
**Goal**: Premium features and scalability

#### Advanced Features:
- [ ] Multilingual support
- [ ] QR code inventory scanning
- [ ] Emergency essentials mode
- [ ] Advanced analytics
- [ ] Shop verification system

## 🛠️ Key Dependencies

### Flutter Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  
  # State Management
  provider: ^6.1.1
  
  # Firebase
  firebase_core: ^2.24.2
  firebase_auth: ^4.15.3
  cloud_firestore: ^4.13.6
  firebase_storage: ^11.5.6
  firebase_messaging: ^14.7.10
  
  # Maps & Location
  google_maps_flutter: ^2.5.3
  geolocator: ^10.1.0
  geocoding: ^2.1.1
  
  # UI Components
  cupertino_icons: ^1.0.6
  flutter_svg: ^2.0.9
  cached_network_image: ^3.3.0
  
  # HTTP & API
  http: ^1.1.2
  dio: ^5.4.0
  
  # Local Storage
  shared_preferences: ^2.2.2
  hive: ^2.2.3
  hive_flutter: ^1.1.0
```

## 📊 Database Schema

### Users Collection
```json
{
  "id": "user_id",
  "email": "user@example.com",
  "phone": "+1234567890",
  "name": "John Doe",
  "location": {
    "latitude": 40.7128,
    "longitude": -74.0060
  },
  "preferences": {
    "categories": ["electronics", "groceries"],
    "radius": 5000
  },
  "wishlist": ["item_id_1", "item_id_2"],
  "created_at": "2024-01-01T00:00:00Z"
}
```

### Shops Collection
```json
{
  "id": "shop_id",
  "name": "Local Electronics Store",
  "description": "Best electronics in town",
  "location": {
    "latitude": 40.7128,
    "longitude": -74.0060,
    "address": "123 Main St, City, State"
  },
  "contact": {
    "phone": "+1234567890",
    "email": "shop@example.com"
  },
  "hours": {
    "monday": {"open": "09:00", "close": "18:00"}
  },
  "categories": ["electronics", "accessories"],
  "rating": 4.5,
  "verified": true,
  "owner_id": "user_id"
}
```

### Items Collection
```json
{
  "id": "item_id",
  "name": "iPhone Charger",
  "description": "Lightning cable for iPhone",
  "category": "electronics",
  "brand": "Apple",
  "price": 19.99,
  "shop_id": "shop_id",
  "stock_status": "in_stock",
  "quantity": 15,
  "images": ["url1", "url2"],
  "tags": ["charger", "lightning", "apple"]
}
```

## 🎨 UI/UX Guidelines

### Color Scheme
- Primary: #2196F3 (Blue)
- Secondary: #4CAF50 (Green)
- Accent: #FF9800 (Orange)
- Error: #F44336 (Red)
- Success: #4CAF50 (Green)
- Background: #FAFAFA (Light Gray)

### Map Pin Colors
- Green: In Stock
- Orange: Low Stock
- Red: Out of Stock
- Blue: Shop Location

### Typography
- Headings: Roboto Bold
- Body: Roboto Regular
- Captions: Roboto Light

## 📱 Key Screens

### User App Screens
1. **Splash Screen** - App logo and loading
2. **Onboarding** - App introduction and permissions
3. **Login/Register** - Authentication
4. **Home** - Search bar and recent searches
5. **Search Results** - List and map view toggle
6. **Map View** - Interactive map with pins
7. **Shop Profile** - Shop details and items
8. **Item Details** - Item information and availability
9. **Wishlist** - Saved items
10. **Settings** - User preferences

### Shopkeeper App Screens
1. **Dashboard** - Overview and analytics
2. **Inventory Management** - Add/edit items
3. **Shop Profile** - Edit shop information
4. **Analytics** - Detailed insights
5. **Deals** - Create and manage offers

## 🔧 Environment Setup

### Firebase Configuration
1. Create Firebase project
2. Enable Authentication (Email/Phone)
3. Enable Firestore Database
4. Enable Storage
5. Enable Cloud Messaging
6. Download google-services.json (Android) and GoogleService-Info.plist (iOS)

### Google Maps Setup
1. Create Google Cloud project
2. Enable Maps SDK for Android/iOS
3. Create API key
4. Add restrictions (Android package name, iOS bundle ID)

### Environment Variables
Create `.env` file:
```
GOOGLE_MAPS_API_KEY=your_api_key_here
FIREBASE_PROJECT_ID=your_project_id
```

## 🚀 Deployment

### Mobile App
- **Android**: Google Play Store
- **iOS**: Apple App Store
- **Beta Testing**: TestFlight, Internal Testing

### Backend
- **Production**: Firebase Hosting / Supabase
- **Database**: Firestore / PostgreSQL
- **Functions**: Firebase Functions / Supabase Edge Functions

## 📈 Success Metrics

### User Engagement
- Daily Active Users (DAU)
- Search completion rate
- Map interaction time
- Shop profile views

### Business Metrics
- Number of registered shops
- Inventory update frequency
- User retention rate
- Search-to-visit conversion

## 💰 Monetization Strategy

### Revenue Streams
1. **Featured Listings** - Shops pay for premium placement
2. **Analytics Subscriptions** - Advanced insights for shopkeepers
3. **Advertisement** - Local business ads
4. **Shop Registration Fees** - Premium shop features

### Pricing Model
- **Free Tier**: Basic features for users and shops
- **Premium Shop**: $29/month for advanced features
- **Featured Listing**: $5/day for top placement
- **Analytics Pro**: $99/month for detailed insights

## 🔒 Security & Privacy

### Data Protection
- User location data encryption
- GDPR compliance
- Secure API endpoints
- Regular security audits

### Privacy Features
- Location sharing controls
- Data deletion options
- Anonymous search mode
- Privacy policy compliance

## 📞 Support & Maintenance

### User Support
- In-app help system
- FAQ section
- Email support
- Live chat (future)

### Technical Maintenance
- Regular app updates
- Bug fixes and improvements
- Performance monitoring
- Database optimization

---

*This guide will be updated as development progresses.*
