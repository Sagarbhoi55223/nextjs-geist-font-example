class ServiceModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double minPrice;
  final double maxPrice;
  final int durationMinutes;
  final double rating;
  final int reviewCount;
  final String category;
  final List<String> features;
  final bool isPopular;

  ServiceModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.minPrice,
    required this.maxPrice,
    required this.durationMinutes,
    required this.rating,
    required this.reviewCount,
    required this.category,
    required this.features,
    this.isPopular = false,
  });

  String get priceRange {
    if (minPrice == maxPrice) {
      return '₹${minPrice.toInt()}';
    }
    return '₹${minPrice.toInt()} - ₹${maxPrice.toInt()}';
  }

  String get duration {
    if (durationMinutes < 60) {
      return '${durationMinutes}min';
    } else {
      final hours = durationMinutes ~/ 60;
      final minutes = durationMinutes % 60;
      if (minutes == 0) {
        return '${hours}h';
      }
      return '${hours}h ${minutes}min';
    }
  }

  static List<ServiceModel> getSampleServices() {
    return [
      ServiceModel(
        id: '1',
        name: 'Bridal Makeup',
        description: 'Complete bridal makeover with HD makeup, hairstyling, and draping',
        imageUrl: 'assets/images/bridal_makeup.jpg',
        minPrice: 5000,
        maxPrice: 15000,
        durationMinutes: 180,
        rating: 4.8,
        reviewCount: 156,
        category: 'Bridal',
        features: ['HD Makeup', 'Hair Styling', 'Draping', 'Touch-ups'],
        isPopular: true,
      ),
      ServiceModel(
        id: '2',
        name: 'Haircut & Styling',
        description: 'Professional haircut with styling and blow-dry',
        imageUrl: 'assets/images/haircut.jpg',
        minPrice: 300,
        maxPrice: 1500,
        durationMinutes: 60,
        rating: 4.6,
        reviewCount: 89,
        category: 'Hair',
        features: ['Consultation', 'Wash', 'Cut', 'Styling'],
      ),
      ServiceModel(
        id: '3',
        name: 'Facial Treatment',
        description: 'Deep cleansing facial with moisturizing and anti-aging treatment',
        imageUrl: 'assets/images/facial.jpg',
        minPrice: 800,
        maxPrice: 3000,
        durationMinutes: 90,
        rating: 4.7,
        reviewCount: 124,
        category: 'Skincare',
        features: ['Deep Cleansing', 'Exfoliation', 'Mask', 'Moisturizing'],
        isPopular: true,
      ),
      ServiceModel(
        id: '4',
        name: 'Manicure & Pedicure',
        description: 'Complete nail care with shaping, polishing, and cuticle treatment',
        imageUrl: 'assets/images/manicure.jpg',
        minPrice: 500,
        maxPrice: 1200,
        durationMinutes: 75,
        rating: 4.5,
        reviewCount: 67,
        category: 'Nails',
        features: ['Nail Shaping', 'Cuticle Care', 'Polish', 'Massage'],
      ),
      ServiceModel(
        id: '5',
        name: 'Hair Spa',
        description: 'Relaxing hair spa with deep conditioning and scalp massage',
        imageUrl: 'assets/images/hair_spa.jpg',
        minPrice: 1000,
        maxPrice: 2500,
        durationMinutes: 120,
        rating: 4.9,
        reviewCount: 98,
        category: 'Hair',
        features: ['Scalp Massage', 'Deep Conditioning', 'Steam', 'Styling'],
        isPopular: true,
      ),
      ServiceModel(
        id: '6',
        name: 'Threading & Waxing',
        description: 'Eyebrow threading and body waxing services',
        imageUrl: 'assets/images/threading.jpg',
        minPrice: 50,
        maxPrice: 800,
        durationMinutes: 30,
        rating: 4.4,
        reviewCount: 45,
        category: 'Beauty',
        features: ['Eyebrow Threading', 'Upper Lip', 'Body Waxing', 'Aftercare'],
      ),
    ];
  }
}
