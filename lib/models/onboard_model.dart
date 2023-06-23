
import '../utils/strings.dart';

class OnboardModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnboardModel({
    required this.imagePath,
    required this.title,
    this.subTitle = Strings.onboardSubTitle
  });
}

List<OnboardModel> onBoardModePages = [
  OnboardModel(
    title: Strings.onboardTitle1,
    imagePath: IconPath.onboard1
  ),
  OnboardModel(
    title: Strings.onboardTitle2,
    imagePath: IconPath.onboard2
  ),
  OnboardModel(
    title: Strings.onboardTitle3,
    imagePath: IconPath.onboard3
  )
];