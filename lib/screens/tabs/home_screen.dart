import 'package:flutter/material.dart';
import 'package:yoliday_assignment_app/widgets/skeleton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('Home Screen'),
          floating: true,
          snap: true,
          pinned: true,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const Skeleton();
            },
          ),
        ),
      ],
    );
  }
}
