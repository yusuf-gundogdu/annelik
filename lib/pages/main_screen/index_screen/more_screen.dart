import 'package:flutter/material.dart';
import '../../../more_row_card/more_row_card.dart';
import '../../../utils/color.dart';
import '../../../widget/profil_and_notification_bar/profil_and_notification_bar.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: transparent,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.width / 12),
                    const ProfilAndNotificationBar(),
                    SizedBox(height: MediaQuery.of(context).size.width / 18),
                  ],
                ),
              ),
            ),
            /////////////////////////////
            OtherRowCard(
              cardBackgroundColor1: purple20,
              cardUrlImage1: "assets/otherpage/bebekisimleri.png",
              cardDescriptionText1: "Bebek İsimleri",
              cardDescriptionTextColor1: purple,
              cardGetToNamedRoutePage1: "BabyNamesScreen",
              cardBackgroundColor2: green20,
              cardUrlImage2: "assets/otherpage/alisverislistesi.png",
              cardDescriptionText2: "Alışveriş Listesi",
              cardDescriptionTextColor2: green10,
              cardGetToNamedRoutePage2: "ShoppingListScreen",
            ),
            OtherRowCard(
              cardBackgroundColor1: blue20,
              cardUrlImage1: "assets/otherpage/hastahanecantasi.png",
              cardDescriptionText1: "Hastahane Çantası",
              cardDescriptionTextColor1: blue10,
              cardGetToNamedRoutePage1: "HospitalBagScreen",
              cardBackgroundColor2: red20,
              cardUrlImage2: "assets/otherpage/kasilmasayar.png",
              cardDescriptionText2: "Kasılma Sayar",
              cardDescriptionTextColor2: red10,
              cardGetToNamedRoutePage2: "ContractionCountsScreen",
            ),
            OtherRowCard(
              cardBackgroundColor1: orange20,
              cardUrlImage1: "assets/otherpage/kaydedilenler.png",
              cardDescriptionText1: "Kaydedilenler",
              cardDescriptionTextColor1: orange10,
              cardGetToNamedRoutePage1: "RecordedScreen",
              cardBackgroundColor2: yellow20,
              cardUrlImage2: "assets/otherpage/profile.png",
              cardDescriptionText2: "Profil",
              cardDescriptionTextColor2: yellow10,
              cardGetToNamedRoutePage2: "ProfileScreen",
            ),
            OtherRowCard(
              cardBackgroundColor1: green20,
              cardUrlImage1: "assets/otherpage/geribildirim.png",
              cardDescriptionText1: "Geri Bildirim",
              cardDescriptionTextColor1: green10,
              cardGetToNamedRoutePage1: "FeedbackScreen",
              cardBackgroundColor2: purple20,
              cardUrlImage2: "assets/otherpage/bizidegerlendir.png",
              cardDescriptionText2: "Bizi Değerlendir",
              cardDescriptionTextColor2: purple10,
              cardGetToNamedRoutePage2: "RateUsScreen",
            ),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
