import 'package:dostavka/presentation/pages/task_page/task_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskModelItem extends StatelessWidget {
  final TaskModel itemModel;
  final void Function()? onTap;

  const TaskModelItem({
    super.key,
    required this.itemModel,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Color backgroundColor;
    Color textColor;
    String iconName;
    switch (itemModel.status) {
      case Status.full:
        backgroundColor = theme.colorScheme.onSurface;
        textColor = theme.focusColor;
        iconName = 'check';

        break;
      case Status.empty:
        backgroundColor = theme.colorScheme.background;
        textColor = theme.unselectedWidgetColor;
        iconName = 'upload';
        break;
      case Status.inProcess:
        backgroundColor = theme.secondaryHeaderColor;
        textColor = theme.colorScheme.onSecondary;
        iconName = 'upload';
        break;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: const EdgeInsets.only(bottom: 8),
        height: 96,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12.0),
          // boxShadow: [
          //   BoxShadow(
          //     color: theme.primaryColor.withOpacity(0.15),
          //     offset: itemModel.status == Status.full
          //         ? const Offset(0, 0)
          //         : const Offset(2, 2),
          //     blurRadius: itemModel.status == Status.full ? 0 : 2,
          //   ),
          // ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Hero(
              tag: 'task-${itemModel.index}',
              child: Text(
                '${itemModel.index}',
                style: theme.textTheme.labelLarge!.copyWith(
                  color: textColor,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemModel.title,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  'status',
                  style: theme.textTheme.labelSmall!.copyWith(
                    color: theme.primaryColor,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                  child: SvgPicture.asset(
                    'assets/icons/$iconName.svg',
                    colorFilter: ColorFilter.mode(
                      textColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                const SizedBox(width: 4.0),
                Text(
                  '${itemModel.tons}т',
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
