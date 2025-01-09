import 'package:flutter/material.dart';
import 'package:template_project/dialog/logout_dialog_profile.dart';
import 'package:template_project/title/section_title.dart';
import 'package:template_project/title/setting_option.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(style: TextStyle(color: Colors.white), "Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SectionTitle(
                    title: 'Video Preference',
                  ),
                  SettingOption(title: 'Download Option'),
                  SettingOption(title: 'Video Playback Options'),
                  SectionTitle(
                    title: 'Account Settings',
                  ),
                  SettingOption(title: 'Account security'),
                  SettingOption(title: 'Email Notification Preferences'),
                  SettingOption(title: 'Learing Reminders'),
                  SectionTitle(
                    title: 'Account Settings',
                  ),
                  SettingOption(title: 'Frequently Asked Questions'),
                  SettingOption(title: 'Share the Learnout App'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {
                            _showLogoutDialog(context);
                          },
                          child: Text(
                            'Log Out',
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: ''),
        ],
        currentIndex: 2,
        onTap: (value) {},
      ),
    );
  }
}

void _showLogoutDialog(BuildContext context) {
  LogoutDialogProfile.show(context);
}
