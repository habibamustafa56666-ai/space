import '../core/app_assets.dart';

class PlanetModel {
  final String name;
  final String pngImage;
  final String model3d;
  final String title;
  final String about;
  final String distanceFromSun;
  final String lengthOfDay;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String gravity;
  final String surfaceArea;

  const PlanetModel({
    required this.name,
    required this.pngImage,
    required this.model3d,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });

  static const List<PlanetModel> planets = [
    PlanetModel(
      name: 'Sun',
      pngImage: AppAssets.sun,
      model3d: AppAssets.sun3d,
      title: "The Sun: Our Solar System's Star",
      about:
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distanceFromSun: '0',
      lengthOfDay: '0',
      orbitalPeriod: '0',
      radius: '695,700',
      mass: '1.989 × 10³⁰',
      gravity: '274',
      surfaceArea: '6.09 × 10¹²',
    ),
    PlanetModel(
      name: 'Mercury',
      pngImage: AppAssets.mercury,
      model3d: AppAssets.mercury3d,
      title: 'Mercury: The Closest Planet',
      about:
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distanceFromSun: '57,909,227',
      lengthOfDay: '1,407.60',
      orbitalPeriod: '0.24',
      radius: '2,439.70',
      mass: '3.301 × 10²³',
      gravity: '3.7',
      surfaceArea: '7.48 × 10⁷',
    ),
    PlanetModel(
      name: 'Venus',
      pngImage: AppAssets.venus,
      model3d: AppAssets.venus3d,
      title: "Venus: Earth's Toxic Twin",
      about:
      "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a bright appearance in our sky.",
      distanceFromSun: '108,209,475',
      lengthOfDay: '5,832.20',
      orbitalPeriod: '0.62',
      radius: '6,051.80',
      mass: '4.867 × 10²⁴',
      gravity: '8.87',
      surfaceArea: '4.60 × 10⁸',
    ),
    PlanetModel(
      name: 'Earth',
      pngImage: AppAssets.earth,
      model3d: AppAssets.earth3d,
      title: 'Earth: Our Blue Marble',
      about:
      'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth\'s magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
      distanceFromSun: '149,598,026',
      lengthOfDay: '23.93',
      orbitalPeriod: '1',
      radius: '6,371',
      mass: '5.972 × 10²⁴',
      gravity: '9.81',
      surfaceArea: '5.10 × 10⁸',
    ),
    PlanetModel(
      name: 'Mars',
      pngImage: AppAssets.mars,
      model3d: AppAssets.mars3d,
      title: 'Mars: The Red Planet',
      about:
      'Mars, often called the Red Planet due to its reddish appearance caused by iron oxide on its surface, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past liquid water, suggesting that it may have once been habitable. Mars is a prime target for future human exploration and the search for past or present life. NASA\'s Perseverance rover is currently exploring the planet\'s surface, searching for signs of ancient microbial life.',
      distanceFromSun: '227,943,824',
      lengthOfDay: '24.62',
      orbitalPeriod: '1.88',
      radius: '3,389.50',
      mass: '6.39 × 10²³',
      gravity: '3.71',
      surfaceArea: '1.45 × 10⁸',
    ),
    PlanetModel(
      name: 'Jupiter',
      pngImage: AppAssets.jupiter,
      model3d: AppAssets.jupiter3d,
      title: 'Jupiter: The Gas Giant',
      about:
      'Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.',
      distanceFromSun: '778,547,200',
      lengthOfDay: '9.92',
      orbitalPeriod: '11.86',
      radius: '69,911',
      mass: '1.898 × 10²⁷',
      gravity: '24.79',
      surfaceArea: '6.21 × 10¹⁵',
    ),
    PlanetModel(
      name: 'Saturn',
      pngImage: AppAssets.saturn,
      model3d: AppAssets.saturn3d,
      title: 'Saturn: The Ringed Planet',
      about:
      "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a dense atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
      distanceFromSun: '1,426,666,422',
      lengthOfDay: '10.66',
      orbitalPeriod: '29.46',
      radius: '58,232',
      mass: '5.683 × 10²⁶',
      gravity: '10.44',
      surfaceArea: '4.27 × 10¹⁵',
    ),
    PlanetModel(
      name: 'Uranus',
      pngImage: AppAssets.uranus,
      model3d: AppAssets.uranus3d,
      title: 'Uranus: The Tilted Planet',
      about:
      "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
      distanceFromSun: '2,870,990,000',
      lengthOfDay: '17.24',
      orbitalPeriod: '84.01',
      radius: '25,362',
      mass: '8.681 × 10²⁵',
      gravity: '8.69',
      surfaceArea: '8.1 × 10¹⁵',
    ),
    PlanetModel(
      name: 'Neptune',
      pngImage: AppAssets.neptune,
      model3d: AppAssets.neptune ,
      title: 'Neptune: The Distant World',
      about:
      'Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.',
      distanceFromSun: '4,498,252,900',
      lengthOfDay: '16.11',
      orbitalPeriod: '164.8',
      radius: '24,622',
      mass: '1.024 × 10²⁶',
      gravity: '11.15',
      surfaceArea: '7.65 × 10¹⁵',
    ),
  ];
}