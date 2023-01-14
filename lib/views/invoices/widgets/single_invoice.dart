import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpitco/localization/translater.dart';

import '../../../controllers/choose_language_controller.dart';
import '../../../models/invoice_request.dart';
import '../../../utils/ui/app_styles.dart';

class SingleIvoice extends StatelessWidget {
  final Data? invoice;
  const SingleIvoice({Key? key, this.invoice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageKeys = Get.find<LanguageController>().languageKeys.data!;

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  translateKey(languageKeys.invoicesNumberText!),
                  style: AppStyles.bodyMediumM.copyWith(
                    color: AppStyles.seconderyColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  translateKey(languageKeys.benefitName!),
                  style: AppStyles.bodyMediumM.copyWith(
                    color: AppStyles.seconderyColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  translateKey(languageKeys.dateTimeText!),
                  style: AppStyles.bodyMediumM.copyWith(
                    color: AppStyles.seconderyColor,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10),
            const VerticalDivider(
              color: AppStyles.seconderyColor,
              thickness: 1,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "126",
                    style: AppStyles.bodyBoldL.copyWith(
                      color: AppStyles.mainTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    invoice!.customerName!,
                    style: AppStyles.bodyBoldL.copyWith(
                      color: AppStyles.mainColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    invoice!.date!,
                    style: AppStyles.bodyBoldL.copyWith(
                      color: AppStyles.mainTextColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: AppStyles.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
