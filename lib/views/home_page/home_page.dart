import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controllers/home/home_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/size.dart';
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = Get.put(HomeController());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _customDrawer(context),
      key: _scaffoldKey,
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(IconPath.menuIconPath),
          ),
        ),
        elevation: 2,
        title: SizedBox(
          height: Dimensions.height * 3,
          child: Padding(
            padding: EdgeInsets.only(left:  Dimensions.width * 5),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(IconPath.splashLogoPath),
              ],
            ),
          ),
        ),
        centerTitle: false,

        actions: [
          Obx(() => Visibility(
            visible: controller.index.value != 0,
            child: TextButton(
                onPressed: (){
                  if(controller.index.value <= 3 && controller.index.value >= 1){
                    controller.index.value --;
                    controller.indicatorValue.value -= 0.25;
                  }
                },
                child: const Text(Strings.back)
            ),
          ))
        ],
      ),
      body: Obx(() => controller.screens[controller.index.value]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(

        onTap: (){
          if(controller.index.value <= 2 && controller.index.value >= 0){
            controller.index.value ++;
            controller.indicatorValue.value += 0.25;
          }else{
            controller.successfullyTransaction(context);
          }
        },
        child: Stack(
          children: [
            SizedBox(
              height: Dimensions.width * 8,
              width: Dimensions.width * 8,

              child: Obx(() => CircularProgressIndicator(
                backgroundColor: CustomColor.primaryColor.withOpacity(0.3),
                color: CustomColor.primaryColor,
                strokeWidth: 4,
                value: controller.indicatorValue.value,
              )),
            ),

            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(IconPath.send1IconPath),
              ),
            )
          ],
        ),
      ),
    );
  }

  _customDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.containerColor,
      elevation: 1,
      child: ListView(
        children: [
          _profileAvatar(context),

          _listTiles(
              asset: IconPath.profileIconPath,
              title: Strings.profile,
              onTap: (){
                controller.profile();
              }
          ),

          _listTiles(
              asset: IconPath.transferLogIconPath,
              title: Strings.transferLog,
              onTap: (){
                controller.transferLog();
              }
          ),

          _listTiles(
              asset: IconPath.savedRecipientsIconPath,
              title: Strings.savedRecipients,
              onTap: (){
                controller.savedRecipientsScreen();
              }
          ),

          _listTiles(
              asset: IconPath.passwordIconPath,
              title: Strings.changePassword,
              onTap: (){
                controller.changePasswordScreen();
              }
          ),

          _listTiles(
              asset: IconPath.aboutUsIconPath,
              title: Strings.aboutUs,
              onTap: (){

              }
          ),

          _listTiles(
              asset: IconPath.privacyPolicyIconPath,
              title: Strings.privacyPolicy,
              onTap: (){

              }
          ),

          _listTiles(
            isRed: true,
              asset: IconPath.signOutIconPath,
              title: Strings.signOut,
              onTap: (){
                controller.logOut();
              }
          ),
        ],
      ),
    );
  }

  _profileAvatar(BuildContext context) {
    return Column(
      mainAxisAlignment:  MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const GapSize(
          height: 30,
        ),

        Container(
          padding: EdgeInsets.all(Dimensions.height * 0.3),
          height: MediaQuery.of(context).size.width * 0.3,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius * 10),
              color: CustomColor.primaryColor
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius * 10),
                color: CustomColor.white,
                image: const DecorationImage(
                    image: AssetImage(
                        IconPath.userPath
                    ),
                    fit: BoxFit.fill
                )
            ),
          ),
        ),

        const GapSize(
          height: 10,
        ),

        Text(
          'Jhon Abraham',
          style: CustomStyle.drawerNameTextStyle,
        ),

        const GapSize(
          height: 5,
        ),

        Text(
          'jesonpauliam@gmail.com',
          style: CustomStyle.richPreTextStyle,
        ),

        const GapSize(
          height: 30,
        ),


      ],
    );
  }

  _listTiles({required String asset, required String title, required VoidCallback onTap, bool isRed = false }) {
    return ListTile(
    contentPadding: EdgeInsets.symmetric(
      horizontal: Dimensions.width * 4
    ),
      onTap: onTap,
      leading: SvgPicture.asset(
        asset,
        color: isRed
            ? CustomColor.redColor
            : CustomColor.textColor,
      ),
      title: Text(
        title.tr,
        style: isRed
            ? CustomStyle.logoutTextStyle
            : CustomStyle.drawerTileTextStyle,
      ),
    );
  }
}
