import 'package:material_ui/material_ui.dart';
import 'package:spae/models/planet.dart';
import '../core/app_assets.dart';
import '../core/app_theme.dart';


class PlanetDetailsScreen extends StatelessWidget {
  final PlanetModel planet;

  const PlanetDetailsScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header مع زر الرجوع واسم الكوكب
            SizedBox(
              height: 200,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => Navigator.pop(context),
                                style: IconButton.styleFrom(
                                  backgroundColor: AppColors.primaryRed,
                                  foregroundColor: AppColors.white,
                                ),
                                icon: const Icon(Icons.arrow_back),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    planet.name,
                                    style: Theme.of(context).textTheme.headlineMedium,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 48), // لموازنة زر الرجوع
                            ],
                          ),
                          Text(
                            planet.title,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // صورة الكوكب الكبيرة
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: Image.asset(
                  planet.pngImage,
                  height: 260,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // قسم About ومواصفات الكوكب
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    planet.about,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildInfoRow(context, 'Distance from Sun (km)', planet.distanceFromSun),
                  _buildInfoRow(context, 'Length of Day (hours)', planet.lengthOfDay),
                  _buildInfoRow(context, 'Orbital Period (Earth years)', planet.orbitalPeriod),
                  _buildInfoRow(context, 'Radius (km)', planet.radius),
                  _buildInfoRow(context, 'Mass (kg)', planet.mass),
                  _buildInfoRow(context, 'Gravity (m/s²)', planet.gravity),
                  _buildInfoRow(context, 'Surface Area (km²)', planet.surfaceArea),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Text(
        '$label : $value',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}