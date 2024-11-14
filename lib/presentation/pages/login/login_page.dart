import 'package:feed_delivery/presentation/blocks/login/login_bloc.dart';
import 'package:feed_delivery/presentation/custom_widget/custom_button.dart';
import 'package:feed_delivery/presentation/custom_widget/custom_text_field.dart';
import 'package:feed_delivery/presentation/custom_widget/warning.dart';
import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:feed_delivery/presentation/utility/extension/uppercase_text_formater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:overlay_support/overlay_support.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController carNumberController = TextEditingController();
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
                child: BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state is Success) {
                  if (state.driver == "driver_1") {
                    context.go('/scaning-page');
                  } else if (state.driver == "driver_2") {
                    context.go('/farm-info-page');
                  }
                }
                if (state is Login) {
                  showSimpleNotification(
                    Text('please login'),
                    background: theme.colorScheme.onSurface,
                  );
                }
              },
              buildWhen: (previous, current) {
                return current is Loading ||
                    current is Error ||
                    current is Success ||
                    current is Login;
              },
              builder: (context, state) {
                bool isLoading = state is Loading;
                final showWarning = state is Error;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 120),
                    SvgPicture.asset(
                      'assets/icons/key.svg',
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      context.localizations.entrance,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(height: 40),
                    CustomTextField(
                      inputFormatters: [
                        MaskTextInputFormatter(
                          mask: '## 0000 ##',
                          filter: {
                            "#": RegExp(r'[a-zA-Z]'),
                            "0": RegExp(r'[0-9]')
                          },
                          type: MaskAutoCompletionType.lazy,
                        ),
                        UpperCaseTextFormatter(),
                      ],
                      controller: carNumberController,
                      labelText: context.localizations.carLicensePlate,
                      hintText: '-- ---- --',
                      hasError: showWarning,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      isObscureText: _obscurePassword,
                      controller: passwordController,
                      labelText: context.localizations.password,
                      hintText: context.localizations.enterPassword,
                      suffixIcon: _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      onSuffixIconTap: _togglePasswordVisibility,
                      hasError: showWarning,
                    ),
                    const SizedBox(height: 32),
                    CustomButton(
                      label: context.localizations.enter,
                      isLoading: isLoading,
                      onPressed: () {
                        final carNumber = carNumberController.text;
                        final password = passwordController.text;
                        context.read<LoginBloc>().add(
                              LoginEvent.submit(carNumber, password),
                            );
                      },
                    ),
                    if (showWarning) ...[
                      const SizedBox(height: 32),
                      WarningWidget(
                          message:
                              context.localizations.carNumberNotRegistered),
                    ],
                  ],
                );
              },
            )),
          ),
        ),
      ),
    );
  }
}
