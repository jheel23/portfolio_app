import 'package:flutter/material.dart';
import 'package:yoliday_assignment_app/widgets/project_tab_widget.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('Portfolio', style: theme.textTheme.headlineMedium),
          floating: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag_rounded,
                  color: theme.colorScheme.primary,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: theme.colorScheme.primary,
                ))
          ],
          bottom: TabBar(
              unselectedLabelColor: Colors.black,
              controller: tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              textScaler: const TextScaler.linear(0.8),
              tabs: const [
                Tab(text: 'Project'),
                Tab(text: 'Saved'),
                Tab(text: 'Shared'),
                Tab(text: 'Achievement'),
              ]),
        ),
        SliverFillRemaining(
          child: TabBarView(
            controller: tabController,
            children: const [
              ProjectTabWidget(),
              Center(child: Text('Saved')),
              Center(child: Text('Shared')),
              Center(child: Text('Achievement')),
            ],
          ),
        )
      ],
    );
  }
}
