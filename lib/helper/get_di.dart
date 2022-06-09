
// import 'package:bee_guided/util/app_constants.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:get/get.dart';

// import '../data/api/api_client.dart';

// Future<Map<String, Map<String, String>>> init() async {
//   // Core
//   final sharedPreferences = await SharedPreferences.getInstance();
//   Get.lazyPut(() => sharedPreferences);
//   // Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));

//   // Repository
//   Get.lazyPut(() => SplashRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
//   Get.lazyPut(() => LanguageRepo());
//   Get.lazyPut(() => OnBoardingRepo());
//   Get.lazyPut(() => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
//   Get.lazyPut(() => LocationRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
//   Get.lazyPut(() => UserRepo(apiClient: Get.find()));
//   Get.lazyPut(() => BannerRepo(apiClient: Get.find()));
//   Get.lazyPut(() => CategoryRepo(apiClient: Get.find()));
//   Get.lazyPut(() => RestaurantRepo(apiClient: Get.find()));
//   Get.lazyPut(() => WishListRepo(apiClient: Get.find()));
//   Get.lazyPut(() => ProductRepo(apiClient: Get.find()));
//   Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));
//   Get.lazyPut(() => SearchRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
//   Get.lazyPut(() => CouponRepo(apiClient: Get.find()));
//   Get.lazyPut(() => OrderRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
//   Get.lazyPut(() => NotificationRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
//   Get.lazyPut(() => CampaignRepo(apiClient: Get.find()));

//   // Controller
//   Get.lazyPut(() => ThemeController(sharedPreferences: Get.find()));
//   Get.lazyPut(() => SplashController(splashRepo: Get.find()));
//   Get.lazyPut(() => LocalizationController(sharedPreferences: Get.find(), apiClient: Get.find()));
//   Get.lazyPut(() => OnBoardingController(onboardingRepo: Get.find()));
//   Get.lazyPut(() => AuthController(authRepo: Get.find()));
//   Get.lazyPut(() => LocationController(locationRepo: Get.find()));
//   Get.lazyPut(() => UserController(userRepo: Get.find()));
//   Get.lazyPut(() => BannerController(bannerRepo: Get.find()));
//   Get.lazyPut(() => CategoryController(categoryRepo: Get.find()));
//   Get.lazyPut(() => ProductController(productRepo: Get.find()));
//   Get.lazyPut(() => CartController(cartRepo: Get.find()));
//   Get.lazyPut(() => RestaurantController(restaurantRepo: Get.find()));
//   Get.lazyPut(() => WishListController(wishListRepo: Get.find(), productRepo: Get.find()));
//   Get.lazyPut(() => SearchController(searchRepo: Get.find()));
//   Get.lazyPut(() => CouponController(couponRepo: Get.find()));
//   Get.lazyPut(() => OrderController(orderRepo: Get.find()));
//   Get.lazyPut(() => NotificationController(notificationRepo: Get.find()));
//   Get.lazyPut(() => CampaignController(campaignRepo: Get.find()));

//   // Retrieving localized data
//   Map<String, Map<String, String>> _languages = Map();
 
//   return _languages;
// }
