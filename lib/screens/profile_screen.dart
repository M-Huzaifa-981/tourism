import 'package:flutter/material.dart';
import 'package:tourism/utils/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Map<String, IconData> detailsWithIcons = {
      'Edit profile': Icons.edit,
      'Terms & Conditions': Icons.quick_contacts_dialer_outlined,
      'Settings': Icons.settings,
      'Invite a friend': Icons.add_a_photo,
      'Logout': Icons.logout,
    };
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                spacing: 20,
                children: [
                  Column(
                    children: [
                      CircleAvatar(maxRadius: 100,child: Icon(Icons.person, size: 100,color: Colors.white,),backgroundColor: AppColors.primaryColor,),
                    ],
                  ),
                  Text('Name'),
                  Text('Email'),
                ],
              ),SizedBox(height: 40,),
              Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: List.generate(detailsWithIcons.length, (index){
                    String key = detailsWithIcons.keys.elementAt(index);
                    IconData value = detailsWithIcons[key]!;
                    return Column(
                      children: [
                        ListTile(
                          leading: Icon(value),
                          title: Text(key),
                          trailing: Icon(Icons.arrow_forward_ios, size: 15,),
                        ),
                         Divider(indent: 10,endIndent: 10,color: Colors.black12,),
                      ],
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
