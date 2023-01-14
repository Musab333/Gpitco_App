import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:gpitco/controllers/invoices_controller.dart';
import 'package:gpitco/localization/translater.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/invoices/widgets/single_invoice.dart';

import '../../controllers/choose_language_controller.dart';
import 'widgets/single_purchase.dart';

class InvoicesListView extends StatelessWidget {
  const InvoicesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InvoicesCotnroller>(
        init: InvoicesCotnroller(),
        builder: (invoicesCotnroller) {
          final languageKeys =
              Get.find<LanguageController>().languageKeys.data!;

          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 90,
              backgroundColor: AppStyles.mainColor,
              centerTitle: true,
              title: Text(translateKey(languageKeys.listInvoicesText!)),
              bottom: TabBar(
                controller: invoicesCotnroller.tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                // onTap: (v) =>
                //     invoicesCotnroller.getInvoices(v == 1 ? true : false),
                indicator: BoxDecoration(
                  color: Color(0xff1c4c7c),
                  border: Border(
                      bottom: BorderSide(color: Color(0xff01fbfd), width: 2)),
                ),
                tabs: [
                  Tab(text: translateKey(languageKeys.invoicesSaleText!)),
                  Tab(text: translateKey(languageKeys.invoicesPurchaseText!)),
                ],
              ),
              elevation: 0,
            ),
            backgroundColor: AppStyles.mainColor,
            endDrawer: Drawer(),
            body: TabBarView(
              controller: invoicesCotnroller.tabController,
              physics: BouncingScrollPhysics(),
              dragStartBehavior: DragStartBehavior.down,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppStyles.backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      invoicesCotnroller.loading
                          ? const Center(
                              child: CircularProgressIndicator(strokeWidth: 3),
                            )
                          : invoicesCotnroller.isError
                              ? Image.asset("assets/images/error.png")
                              : ListView.builder(
                                  itemBuilder: (context, index) {
                                    return SingleIvoice(
                                        invoice: invoicesCotnroller
                                            .salesInovice!.data![index]);
                                  },
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: invoicesCotnroller
                                      .salesInovice!.data!.length,
                                )
                    ],
                  )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppStyles.backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      invoicesCotnroller.loading
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : invoicesCotnroller.isError2
                              ? Image.asset("assets/images/error.png")
                              : ListView.builder(
                                  itemBuilder: (context, index) {
                                    return SinglePurchase(
                                        invoice: invoicesCotnroller
                                            .purchasesInovice!.data![index]);
                                  },
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: invoicesCotnroller
                                      .purchasesInovice!.data!.length,
                                )
                    ],
                  )),
                ),
                // Add widgets here
              ],
            ),
          );
        });
  }
}
