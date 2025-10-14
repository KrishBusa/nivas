/*
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 0 is the initial selected index (Home)
  int _selectedIndex = 0;

  // Define the navigation items using outline and filled icons for smooth switching
  final List<Map<String, dynamic>> _navItems = [
    // Note: The icon choices are close approximations of the image provided.
    {'icon': Icons.home_filled, 'unselectedIcon': Icons.home_outlined},
    {'icon': Icons.location_on, 'unselectedIcon': Icons.location_on_outlined},
    {'icon': Icons.bookmark, 'unselectedIcon': Icons.bookmark_border},
    {'icon': Icons.person, 'unselectedIcon': Icons.person_outline},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = <Widget>[
      _buildPage('Home'),
      _buildPage('Location'),
      _buildPage('Saved'),
      _buildPage('Profile'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Navigation'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      // The custom bottom navigation bar implementation
      bottomNavigationBar: Container(
        // Ensure the bar is visible above the bottom safety area
        color: const Color(0xFF17171C), // Very dark background for the bar
        child: SafeArea(
          child: CustomAnimatedNavBar(
            selectedIndex: _selectedIndex,
            navItems: _navItems,
            onItemTapped: _onItemTapped,
          ),
        ),
      ),
    );
  }

  // Helper function to build dummy content pages
  Widget _buildPage(String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Screen: $title',
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(height: 8),
        const Text(
          'The content changes based on the selected tab.',
          style: TextStyle(fontSize: 16, color: Colors.white70),
        ),
      ],
    );
  }
}

// ---

class CustomAnimatedNavBar extends StatelessWidget {
  final int selectedIndex;
  final List<Map<String, dynamic>> navItems;
  final ValueChanged<int> onItemTapped;

  const CustomAnimatedNavBar({
    super.key,
    required this.selectedIndex,
    required this.navItems,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    // Get the total screen width to calculate the position of the indicator dot
    final double screenWidth = MediaQuery.of(context).size.width;
    final double itemWidth = screenWidth / navItems.length;

    return Container(
      height: 65.0, // Height of the navigation bar
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: const Color(0xFF17171C),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 1. The Smoothly Moving Indicator Dot
          // AnimatedPositioned is the key to the smooth, "luxury" sliding animation
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300), // Fast, smooth animation duration
            curve: Curves.easeOutCubic, // A smooth and appealing acceleration/deceleration curve

            // Calculate the 'left' position: (index * itemWidth) + (center of item) - (center of dot)
            left: (selectedIndex * itemWidth) + (itemWidth / 2) - 3,
            bottom: 0, // Position the dot right at the bottom

            child: Container(
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                color: Colors.blueAccent, // The distinctive blue color from the image
                shape: BoxShape.circle,
              ),
            ),
          ),

          // 2. The Navigation Items (Icons)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(navItems.length, (index) {
              final isSelected = index == selectedIndex;
              // Use the filled icon when selected, outline when unselected
              final iconData = isSelected
                  ? navItems[index]['icon']
                  : navItems[index]['unselectedIcon'];

              return Expanded(
                child: GestureDetector(
                  onTap: () => onItemTapped(index),
                  // Use AnimatedContainer for smooth visual feedback on the icon tap
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeIn,
                    alignment: Alignment.center,
                    height: 50,
                    child: Icon(
                      iconData,
                      // Blue when selected, white outline when unselected
                      color: isSelected ? Colors.blueAccent : Colors.white,
                      // The size slightly grows when selected
                      size: isSelected ? 36.0 : 30.0,
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
*/
