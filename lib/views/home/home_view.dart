import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersmartpay/core/constants/colors.dart';
import 'package:fluttersmartpay/core/constants/image/image_constants.dart';
import 'package:fluttersmartpay/core/extension/context_extension.dart';
import 'package:fluttersmartpay/views/transaction/transaction_history_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundColor(context),
          SafeArea(
            child: Padding(
              padding: context.paddingLowHorizontal,
              child: Column(
                children: [
                  SizedBox(height: context.normalValue),
                  _header(),
                  SizedBox(height: context.normalValue),
                  _creditCard(),
                  SizedBox(height: context.normalValue),
                  _menus(),
                  SizedBox(height: context.normalValue * 1.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today, Dec 29",
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) =>
                                      TransactionHistoryView(),
                                ),
                              );
                            },
                            child: Text(
                              "All transactions",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Icon(
                            FeatherIcons.chevronRight,
                            size: 20,
                            color: secondaryPrimaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: context.lowValue),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.only(top: 0, bottom: 20),
                      itemBuilder: ((context, index) {
                        if (index == 1) {
                          return ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: EdgeInsets.all(15),
                              child: Icon(
                                Icons.sports_football,
                                color: Color.fromARGB(255, 131, 100, 231),
                              ),
                            ),
                            title: Text(
                              "Gym",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            subtitle: Text(
                              "Payment",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            trailing: Text(
                              "- \$45.99",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          );
                        }
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: EdgeInsets.all(15),
                            child: Image.asset(
                              ImageConstants.instance.deposit,
                              color: Colors.indigo,
                            ),
                            // child: Icon(
                            //   Icons.sports_football,
                            //   color: Color.fromARGB(255, 131, 100, 231),
                            // ),
                          ),
                          title: Text(
                            "Bank of America",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          subtitle: Text(
                            "Deposit",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          trailing: Text(
                            "+ \$1,328.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: secondaryPrimaryColor,
                            ),
                          ),
                        );
                      }),
                      separatorBuilder: (context, int) {
                        return Divider();
                      },
                      itemCount: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _menus() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: surfaceColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(ImageConstants.instance.deposit,
                  height: 35, width: 35),
              SizedBox(height: 10),
              Text(
                "Deposit",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(ImageConstants.instance.transfer,
                  height: 35, width: 35),
              SizedBox(height: 10),
              Text(
                "Transfers",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(ImageConstants.instance.withdraw,
                  height: 35, width: 35),
              SizedBox(height: 10),
              Text(
                "Withdraw",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(ImageConstants.instance.more, height: 35, width: 35),
              SizedBox(height: 10),
              Text(
                "More",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _creditCard() {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25, top: 20, bottom: 5),
            child: Row(
              children: [
                Image.asset(
                  ImageConstants.instance.creditCardChip,
                  color: Colors.white,
                  width: 35,
                  height: 35,
                ),
                SizedBox(width: 10),
                Transform.rotate(
                  angle: -80,
                  child: Icon(
                    FeatherIcons.wifi,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                for (var i = 0; i < 3; i++)
                  Text(
                    "**** ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                Text(
                  "1932",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: secondaryPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$10,250.00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.white,
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Row _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome back!",
                style: TextStyle(fontSize: 15, color: Colors.white)),
            SizedBox(height: 5),
            Text(
              "Tarlan Abdurahmanli",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white30,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              IconButton(
                onPressed: () {},
                color: Colors.white,
                icon: Icon(FeatherIcons.bell),
              ),
              Positioned(
                right: 12,
                top: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container _backgroundColor(BuildContext context) {
    return Container(
      color: secondaryPrimaryColor,
      height: context.height * 0.322,
    );
  }
}
