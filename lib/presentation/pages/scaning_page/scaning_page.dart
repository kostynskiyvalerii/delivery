import 'package:dostavka/presentation/custom_widget/custom_button.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaningPage extends StatelessWidget {
  const ScaningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          context.localizations.kkzDelivery,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Center(
                  child: Text(
                    'AA 1234 AA',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ),
              Text(
                context.localizations.pressButtonToScanTtn,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              CustomButton(
                label: 'перший водій',
                onPressed: () => context.go('/main-page'),
                height: 120,
                iconName: 'scan',
              ),
              const SizedBox(height: 12),
              CustomButton(
                label: 'другий водій',
                onPressed: () => context.go('/sector-list-page'),
                height: 120,
                iconName: 'scan',
              )
            ],
          ),
        ),
      ),
    );
  }
}