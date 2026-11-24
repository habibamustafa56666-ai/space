import 'package:material_ui/material_ui.dart';
import '../core/app_assets.dart';
import '../core/app_theme.dart';
import '../models/planet.dart';
import 'planet_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPlanet() {
    if (_currentIndex < PlanetModel.planets.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPlanet() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentPlanet = PlanetModel.planets[_currentIndex];

    return Scaffold(
      body: Column(
        children: [
          // 1. Top Header Stack (Image + Gradient + Titles)
          SizedBox(
            height: 220,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    AppAssets.headerPlanet,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          AppColors.background.withValues(alpha: 0.09),
                          AppColors.background,
                        ],
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Explore',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Which planet\nwould you like to explore?',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 2. PageView لعرض الكواكب والتنقل بالسحب
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: PlanetModel.planets.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    PlanetModel.planets[index].pngImage,
                    fit: BoxFit.contain,
                  ),
                );
              },
            ),
          ),

          // 3. أزرار التنقل الدائرية واسم الكوكب
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: _previousPlanet,
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.primaryRed,
                    foregroundColor: AppColors.white,
                  ),
                  icon: const Icon(Icons.arrow_back),
                ),
                Text(
                  currentPlanet.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                IconButton(
                  onPressed: _nextPlanet,
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.primaryRed,
                    foregroundColor: AppColors.white,
                  ),
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),

          // 4. زر Explore [Planet Name]
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlanetDetailsScreen(planet: currentPlanet),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Explore ${currentPlanet.name}'),
                  const Icon(Icons.arrow_forward, size: 22),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}