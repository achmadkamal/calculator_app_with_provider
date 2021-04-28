import 'package:calculator_app_with_provider/constant/constant.dart';
import 'package:calculator_app_with_provider/widget/launch_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  Future<void> sendEmail(String email) async {
    await launch('mailto:$email');
  }

  Future<void> goToLInkedin(String linkedinUrl,
      {bool forceWebView = false, bool enableJavaScript = false}) async {
    await launch(
      linkedinUrl,
      forceWebView: forceWebView,
      enableJavaScript: enableJavaScript,
    );
  }

  Future<void> goToGithub(String githubUrl,
      {bool forceWebView = false, bool enableJavaScript = false}) async {
    await launch(
      githubUrl,
      forceWebView: forceWebView,
      enableJavaScript: enableJavaScript,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryDark,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: CircleAvatar(
                radius: 85.0,
                child: ClipOval(
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/79173459?v=4'),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Achmad Kamal',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                LaunchButton(
                  text: 'Email',
                  onPressed: () async {
                    await sendEmail('achmadkamal41@gmail.com');
                  },
                ),
                LaunchButton(
                  text: 'Linkedin',
                  onPressed: () async {
                    await goToLInkedin(
                        'https://www.linkedin.com/in/achmad-kamal-0a7840103/',
                        forceWebView: true,
                        enableJavaScript: true);
                  },
                ),
                LaunchButton(
                  text: 'Github',
                  onPressed: () async {
                    await goToGithub(
                      'https://github.com/achmadkamal',
                      forceWebView: true,
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
