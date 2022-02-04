import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:fluttersmartpay/core/constants/colors.dart';
import 'package:fluttersmartpay/core/constants/image/image_constants.dart';
import 'package:fluttersmartpay/core/extension/context_extension.dart';
import 'package:fluttersmartpay/views/widgets/custom_back_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 90,
        leadingWidth: 70,
        leading: CustomBackButton(),
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: context.paddingNormalHorizontal,
            child: Column(
              children: [
                SizedBox(height: context.lowValue),
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(
                          ImageConstants.instance.profile,
                        ),
                      ),
                      SizedBox(height: context.lowValue),
                      Text(
                        "Tarlan Abdurahmanov",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: context.height * 0.01),
                      Text(
                        "abdurahmanovtarlan@gmail.com",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: context.mediumValue),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Icon(FeatherIcons.code, color: Colors.orange),
                  ),
                  title: Text(
                    "Referral Code",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: Icon(FeatherIcons.chevronRight),
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Icon(FeatherIcons.user, color: Colors.blue),
                  ),
                  title: Text(
                    "Account Info",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: Icon(FeatherIcons.chevronRight),
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Icon(FeatherIcons.users, color: Colors.indigo),
                  ),
                  title: Text(
                    "Contact List",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: Icon(FeatherIcons.chevronRight),
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Icon(FeatherIcons.globe, color: Colors.purpleAccent),
                  ),
                  title: Text(
                    "Language",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: Icon(FeatherIcons.chevronRight),
                ),
                Divider(color: Colors.grey),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Icon(FeatherIcons.settings, color: Colors.redAccent),
                  ),
                  title: Text(
                    "General Setting",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: Icon(FeatherIcons.chevronRight),
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Icon(FeatherIcons.lock, color: Colors.orangeAccent),
                  ),
                  title: Text(
                    "Change Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: Icon(FeatherIcons.chevronRight),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
