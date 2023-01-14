import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpitco/controllers/choose_language_controller.dart';
import 'package:gpitco/localization/translater.dart';
import 'package:gpitco/models/cab_recieved.dart';

class CabResultView extends StatelessWidget {
  final CabRecieved? result;

  const CabResultView({Key? key, this.result}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final languagekeys = Get.find<LanguageController>().languageKeys.data!;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          translateKey(languagekeys.bondExchangeText!),
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          Row(
            children: [
              Text(
                translateKey(languagekeys.dateText!),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                result!.data!.date!,
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text(
                translateKey(languagekeys.branchText!),
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                result!.data!.branch!.name!,
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text(
                translateKey(languagekeys.fundText!),
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                result!.data!.bank!.name!,
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text(
                translateKey(languagekeys.valueText!),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                result!.data!.amount!,
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text(
                translateKey(languagekeys.clientNameText!),
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                result!.data!.person!.name!,
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text(
                translateKey(languagekeys.movementClientsText!),
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                translateKey(languagekeys.clientText!),
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
