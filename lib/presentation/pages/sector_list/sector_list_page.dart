import 'package:dostavka/presentation/custom_widget/back_button_widget.dart';
import 'package:dostavka/presentation/pages/task_list/task_list_page.dart';
import 'package:dostavka/presentation/pages/task_list/widget/task_list_item.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SectorListPage extends StatefulWidget {
  const SectorListPage({super.key});

  @override
  State<SectorListPage> createState() => _SectorListPageState();
}

class _SectorListPageState extends State<SectorListPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isAppBarCollapsed = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        if (_scrollController.offset > 100 && !_isAppBarCollapsed) {
          setState(() {
            _isAppBarCollapsed = true;
          });
        } else if (_scrollController.offset <= 100 && _isAppBarCollapsed) {
          setState(() {
            _isAppBarCollapsed = false;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            pinned: true,
            centerTitle: false,
            expandedHeight: 140.0,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final double top = constraints.biggest.height;
                final bool isCollapsed = top <= kToolbarHeight + 80;

                return FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                  title: isCollapsed
                      ? Text(
                          context.localizations.selectSector,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        )
                      : null,
                  background: Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          context.localizations.distributionKKZ,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'AA 1234 AA',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(fontSize: 20),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          context.localizations.selectSector,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final completedUnits = index % 2 == 0 ? 12 : 5;
                  final taskItemModel = TaskItemModel(
                    index: index + 1,
                    completedUnits: completedUnits,
                    totalUnits: 12,
                  );

                  return TaskListItem(
                    onTap: () => context.push('/task-list-page/${index + 1}'),
                    taskItemModel: taskItemModel,
                  );
                },
                childCount: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
