import 'package:flutter/material.dart';
import 'package:objekwisata/screen/berita.dart';
import 'package:objekwisata/screen/dashboard_screen.dart';
import 'package:objekwisata/screen/destinasi_alam.dart';
import 'package:objekwisata/screen/kebudayaan.dart';
import 'package:objekwisata/screen/login_screen.dart';
import 'package:objekwisata/screen/team.dart';

class GaleriScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app, color: Colors.black, size: 30),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo.png', // Replace with your logo asset
              height: 55,
            ),
            const SizedBox(width: 10),
            const Text('DESTINASI WISATA'),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFB3E5FC),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            _buildImageCard('assets/images/pantai.jpeg'),
            SizedBox(height: 16),
            _buildImageCard('assets/images/jembatan.jpg'),
            SizedBox(height: 16),
            _buildImageCard('assets/images/air_terjun.png'),
            SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFB3E5FC),
        selectedItemColor: Colors.blue,
        unselectedItemColor: const Color.fromARGB(255, 85, 81, 81),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Team',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
              break;
            case 1:
              // Navigate to List
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return OtherOptionScreen();
                },
              );
              break;
            case 2:
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => GaleriScreen()),
              );
              break;
            case 3:
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const TeamPage()),
              );
              break;
          }
        },
      ),
    );
  }

  Widget _buildImageCard(String imagePath) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class OtherOptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_rounded, color: Colors.black, size: 30),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Image.asset(
                        'assets/images/logo.png',
                        width: 60,
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.exit_to_app, color: Colors.black, size: 30),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        color: Colors.white, // Latar belakang putih
                        child: Column(
                          children: [
                            _buildMenuTile(
                              context,
                              title: 'DESTINASI WISATA',
                              subMenus: [
                                'Alam',
                                'Taman',
                                'Tempat Hiburan',
                                'Peninggalan Sejarah'
                              ],
                            ),
                            Divider(),
                            _buildMenuTile(context, title: 'KEBUDAYAAN', isLink: true, targetPage: const KebudayaanScreen()),
                            Divider(),
                            _buildMenuTile(context, title: 'BERITA', isLink: true, targetPage: const BeritaScreen()),
                            Divider(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuTile(BuildContext context, {required String title, List<String>? subMenus, bool isLink = false, Widget? targetPage}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: subMenus != null
          ? ExpansionTile(
              title: Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              children: subMenus
                  .map((subMenu) => ListTile(
                        title: Text(subMenu),
                        onTap: () {
                          // Handle submenu item click
                          switch (subMenu) {
                            case 'Alam':
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => AlamScreen()),
                              );
                              break;
                            // Handle other submenus if needed
                          }
                        },
                      ))
                  .toList(),
            )
          : ListTile(
              title: Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: isLink
                  ? () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => targetPage!),
                      );
                    }
                  : null,
            ),
    );
  }
}
