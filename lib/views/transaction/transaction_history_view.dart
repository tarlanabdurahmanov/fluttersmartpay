import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:fluttersmartpay/core/constants/colors.dart';
import 'package:fluttersmartpay/core/constants/image/image_constants.dart';
import 'package:fluttersmartpay/core/extension/context_extension.dart';
import 'package:fluttersmartpay/views/widgets/custom_back_button.dart';

class TransactionHistoryView extends StatelessWidget {
  const TransactionHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: secondaryPrimaryColor,
        toolbarHeight: 90,
        leadingWidth: 70,
        leading: CustomBackButton(
          color: Colors.white,
          borderColor: Colors.white54,
        ),
      ),
      body: Stack(
        children: [
          _backgroundColor(context),
          SafeArea(
            child: Padding(
              padding: context.paddingNormalHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Current balance",
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(height: context.lowValue),
                          Row(
                            children: [
                              Text(
                                "\$10,250.00",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: context.normalValue),
                              Icon(
                                FeatherIcons.eye,
                                color: Colors.white38,
                              ),
                            ],
                          ),
                          SizedBox(height: context.lowValue),
                          Text(
                            "Bank account : 2344 7368 2530 1990",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(ImageConstants.instance.transfer),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: context.mediumValue + context.lowValue),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Transaction History",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Icon(
                        FeatherIcons.search,
                        size: 30,
                        color: secondaryPrimaryColor,
                      )
                    ],
                  ),
                  SizedBox(height: context.lowValue),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      itemBuilder: ((context, index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              "Today, Dec 29",
                              style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          );
                        }
                        if (index == 5) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              "Yesterday, Dec 27",
                              style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          );
                        }
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
                        if (int == 5 || int == 0) {
                          return SizedBox();
                        } else {
                          return Divider();
                        }
                      },
                      itemCount: 8,
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

  Container _backgroundColor(BuildContext context) {
    return Container(
      color: secondaryPrimaryColor,
      height: context.height * 0.19,
    );
  }
}
