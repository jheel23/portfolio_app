import 'package:flutter/material.dart';
import 'package:yoliday_assignment_app/model/project.dart';
import 'package:yoliday_assignment_app/providers/dummy_projects.dart';
import 'package:yoliday_assignment_app/widgets/project_info_tile.dart';

class ProjectTabWidget extends StatefulWidget {
  const ProjectTabWidget({super.key});

  @override
  State<ProjectTabWidget> createState() => _ProjectTabWidgetState();
}

class _ProjectTabWidgetState extends State<ProjectTabWidget> {
  late List<Project> projects;
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    projects = dummyProjects;
    super.initState();
  }

  void searchProject(String query) {
    setState(() {
      projects = dummyProjects
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                    controller: _searchController,
                    onChanged: (value) {
                      searchProject(value);
                    },
                    decoration: InputDecoration(
                        hintStyle: theme.textTheme.titleMedium!
                            .copyWith(color: Colors.black38),
                        border: InputBorder.none,
                        hintText: 'Search a project'),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: projects.length,
              itemBuilder: (context, index) {
                return ProjectInfoTile(projects[index]);
              },
            ))
          ],
        ));
  }
}
