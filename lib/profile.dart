import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              child: const Text(
                "Rm Sedap Rasa",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 3,
                        color: const Color.fromARGB(255, 45, 40, 49))),
                child: Image.asset("assets/rm.jpg"),
              ),
            ),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSocialIcon(Icons.email_outlined, _launchMailApp()),
                const SizedBox(width: 12),
                buildSocialIcon(Icons.map_outlined, () {}),
                const SizedBox(width: 12),
                buildSocialIcon(Icons.phone, () {}),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 1),
            Content(),
          ],
        ),
      ],
    ));
  }

  Widget buildSocialIcon(IconData icon, void onPressed) => Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11), color: Colors.blueGrey),
        child: Material(
          borderRadius: BorderRadius.circular(11),
          clipBehavior: Clip.hardEdge,
          color: const Color.fromARGB(255, 45, 40, 49),
          child: InkWell(
            onTap: () => onPressed,
            child: Center(
                child: Icon(icon,
                    size: 32, color: const Color.fromARGB(255, 65, 249, 215))),
          ),
        ),
      );
  Widget Content() => Container(
        padding: EdgeInsets.symmetric(horizontal: 55),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deskripsi :',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'EduSABeginner'),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(
                  fontSize: 18, height: 1.4, fontFamily: 'EduSABeginner'),
            ),
            SizedBox(height: 10),
            Text(
              'List Menu :',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'EduSABeginner'),
            ),
            Text(
              '''
- nasgor 
- nasgor + telor
- nasgor + telor + ayam 
- miegor + telor + ayam    
- miegor + telor 
- miegor   ''',
              style: TextStyle(
                  fontSize: 18, height: 1.4, fontFamily: 'EduSABeginner'),
            ),
            SizedBox(height: 10),
            Text(
              'Alamat :',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'EduSABeginner'),
            ),
            Text(
              'Semarang Tengah, Pandrikan Lord Jln Sadew 4 No : 45',
              style: TextStyle(
                  fontSize: 18, height: 1.4, fontFamily: 'EduSABeginner'),
            ),
            SizedBox(height: 15),
            Text(
              'Jam Buka :',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'EduSABeginner'),
            ),
            Text(
              '''
- Senin   : 07:30 - 15:00 
- Selasa  : 07:30 - 15:00
- Rabu    : 07:30 - 15:00 
- Kamis   : 07:30 - 15:00    
- Jum'at  : 07:30 - 15:00
- Sabtu   : 07:30 - 10:00
- Minggu : 07:30 - 10:00   ''',
              style: TextStyle(
                  fontSize: 18, height: 1.4, fontFamily: 'EduSABeginner'),
            ),
            SizedBox(height: 15),
          ],
        ),
      );

  void _launchMailApp() async {
    const url = 'mailto:gmail.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
