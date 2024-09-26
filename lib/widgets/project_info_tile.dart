import 'package:flutter/material.dart';
import 'package:yoliday_assignment_app/model/project.dart';

class ProjectInfoTile extends StatelessWidget {
  final Project project;
  const ProjectInfoTile(this.project, {super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: deviceSize.height * 0.2,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black38, width: 0.5),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            child: Image.network(
              project.image,
              width: deviceSize.width * 0.3,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  project.name,
                  style: theme.textTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            project.description,
                            style: theme.textTheme.titleMedium!
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            project.company,
                            style: theme.textTheme.titleSmall!
                                .copyWith(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Colors.orange,
                                Colors.orange,
                                Colors.orange.withOpacity(0.8),
                                Colors.orange.withOpacity(0.6),
                                Colors.orange.withOpacity(0.5)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)),
                      child: const Text(
                        'A',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



  // Column(
  //           children: [
  //             Text(
  //               'Title of the project',
  //               style: theme.textTheme.headlineMedium,
  //             ),
  //             const SizedBox(
  //               height: 20,
  //             ),
  //             Row(
  //               children: [
  //                 Column(
  //                   children: [
  //                     Text(
  //                       'Desciption of the project',
  //                       style: theme.textTheme.headlineSmall!
  //                           .copyWith(fontWeight: FontWeight.w300),
  //                     ),
  //                     const SizedBox(
  //                       height: 5,
  //                     ),
  //                     Text('Company Name',
  //                         style: theme.textTheme.headlineSmall!
  //                             .copyWith(color: Colors.black54)),
  //                   ],
  //                 ),
  //                 const Spacer(),
  //                 Container(
  //                   decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(10),
  //                       gradient: LinearGradient(
  //                           colors: [
  //                             Colors.amber,
  //                             Colors.amber,
  //                             Colors.amber.withOpacity(0.8),
  //                             Colors.amber.withOpacity(0.5),
  //                             Colors.amber.withOpacity(0.3)
  //                           ],
  //                           begin: Alignment.topLeft,
  //                           end: Alignment.bottomRight)),
  //                 )
  //               ],
  //             )
  //           ],
  //         )