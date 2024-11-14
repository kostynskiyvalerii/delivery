import 'package:feed_delivery/presentation/blocks/scan/scan_bloc.dart';
import 'package:feed_delivery/presentation/custom_widget/custom_button.dart';
import 'package:feed_delivery/presentation/custom_widget/custom_error_widget.dart';
import 'package:feed_delivery/presentation/custom_widget/error_icon.dart';
import 'package:feed_delivery/presentation/custom_widget/license_palet.dart';
import 'package:feed_delivery/presentation/custom_widget/loading_screen.dart';
import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ScaningPage extends StatelessWidget {
  const ScaningPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (_) => ScanBloc(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: BlocConsumer<ScanBloc, ScanState>(
            listener: (context, state) {
              if (state is Success) {
                context.go('/list-silo-page');
              }
            },
            builder: (context, state) {
              if (state is Loading) {
                return const LoadingScreen();
              } else if (state is Error) {
                return CustomErrorWidget(
                  message: state.message,
                  onRetry: () =>
                      context.read<ScanBloc>().add(const RetryScan()),
                );
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 36),
                  Text(
                    context.localizations.kkzDelivery,
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 36),
                  BigIconWidget(
                    iconName: 'truck',
                    backgroundColor: theme.colorScheme.onSurface,
                    iconColor: theme.focusColor,
                  ),
                  const SizedBox(height: 16),
                  const LicensePlate(adminNumber: 'AA 1234 AA'),
                  const SizedBox(height: 36),
                  Divider(thickness: 1, color: theme.hintColor),
                  const SizedBox(height: 36),
                  Text(
                    state is Success
                        ? state.scannedValue
                        : context.localizations.pressButtonToScanTtn,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  CustomButton(
                    label: context.localizations.scanTtnButton,
                    onPressed: () =>
                        context.read<ScanBloc>().add(const StartScan()),
                    height: 120,
                    iconName: 'scan',
                  ),
                  const SizedBox(height: 32),
                  CustomButton(
                    label: context.localizations.enter,
                    onPressed: () => context.go('/list-silo-page'),
                    height: 30,
                  ),
                  const SizedBox(height: 32),
                  CustomButton(
                    label: context.localizations.logout,
                    onPressed: () => context.go('/login'),
                    height: 30,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
