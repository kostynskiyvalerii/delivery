import 'package:feed_delivery/presentation/blocks/detail_silo/detail_silo_bloc.dart';
import 'package:feed_delivery/presentation/custom_widget/back_button_widget.dart';
import 'package:feed_delivery/presentation/custom_widget/custom_button.dart';
import 'package:feed_delivery/presentation/pages/list_silo/list_silo_page.dart';
import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:overlay_support/overlay_support.dart';

class DetailSiloPage extends StatelessWidget {
  final ListSiloItemModel item;

  const DetailSiloPage({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final String iconName = item.isEmpty ? 'silo_load' : 'silo_full';

    return BlocProvider(
      create: (context) => DetailSiloBloc(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: theme.scaffoldBackgroundColor,
          title: Text(
            context.localizations.back,
            style: theme.textTheme.titleMedium,
          ),
          leadingWidth: 48,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: BackButtonWidget(
              onTap: () => context.pop(),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocConsumer<DetailSiloBloc, DetailSiloState>(
            listener: (context, state) {
              if (state is Completed) {
                showSimpleNotification(
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/silo_full.svg',
                        width: 25,
                        height: 25,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Дільниця №1",
                            style: theme.textTheme.bodySmall!
                                .copyWith(fontSize: 14),
                          ),
                          Text(
                            "Бункер 2",
                            style: theme.textTheme.labelMedium,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: theme.focusColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          "Поповнений",
                          style: theme.textTheme.bodyLarge!
                              .copyWith(color: theme.canvasColor),
                        ),
                      ),
                    ],
                  ),
                  background: theme.colorScheme.onSurface,
                );

                Future.delayed(const Duration(seconds: 2), () {
                  context.go('/scaning-page');
                });
              }
            },
            builder: (context, state) {
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: theme.canvasColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/$iconName.svg',
                            width: 60,
                            height: 60,
                            colorFilter: item.isEmpty
                                ? ColorFilter.mode(
                                    theme.colorScheme.onPrimary,
                                    BlendMode.srcIn,
                                  )
                                : null,
                          ),
                          const SizedBox(height: 24),
                          Text(context.localizations.ttnTask),
                          const SizedBox(height: 12),
                          Text(
                            context.localizations.ttnNumber('123123123123123'),
                            style: theme.textTheme.labelMedium,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            context.localizations.farmNumber(1),
                            style: theme.textTheme.titleMedium!
                                .copyWith(color: theme.dividerColor),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${item.index} ',
                                style: theme.textTheme.labelLarge!.copyWith(
                                    fontSize: 40,
                                    color: item.isEmpty
                                        ? theme.colorScheme.onPrimary
                                        : null),
                              ),
                              Text(
                                context.localizations.silo,
                                style: theme.textTheme.labelLarge!.copyWith(
                                    fontSize: 40,
                                    color: item.isEmpty
                                        ? theme.colorScheme.onPrimary
                                        : null),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    if (state is Loading) const CircularProgressIndicator(),
                    if (item.isEmpty)
                      CustomButton(
                        isLoading: state is Loading,
                        onPressed: () {
                          context
                              .read<DetailSiloBloc>()
                              .add(const DetailSiloEvent.confirmCompletion());
                        },
                        label: context.localizations.confirmCompletion,
                      ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: () => context.pop(),
                      child: Text(
                        context.localizations.back,
                        style:
                            theme.textTheme.titleMedium!.copyWith(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
