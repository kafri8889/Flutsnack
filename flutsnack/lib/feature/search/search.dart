
import 'package:flutsnack/data/local_flutsnack_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/snack_category.dart';
import '../../theme.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State createState() => _SearchState();
}

class _SearchState extends State<Search> {

  List<SnackCategory> searchResult = LocalFlutsnackDataProvider.all;
  SearchController controller = SearchController();

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      setState(() {
        searchResult = LocalFlutsnackDataProvider.all.where((snack) => snack.name.toLowerCase().contains(controller.text.toLowerCase())).toList(growable: true);
      });
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: SearchAnchor(
                        isFullScreen: true,
                        searchController: controller,
                        builder: (BuildContext context, SearchController controller) {
                          return SearchBar(
                            controller: controller,
                            hintText: "Search Flutsnack",
                            elevation: WidgetStateProperty.all(0),
                            leading: SvgPicture.asset(
                                "assets/icons/search_normal_outlined.svg",
                                colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn)
                            ),
                            padding: const WidgetStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 16)
                            ),
                            onTap: () {
                              controller.openView();
                            },
                            onChanged: (String query) {
                              controller.openView();
                            },
                          );
                        },
                        suggestionsBuilder: (BuildContext context, SearchController controller) {
                          return List.generate(searchResult.length, (int index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8
                              ),
                              padding: const EdgeInsets.only(left: 8),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(8)),
                                gradient: LinearGradient(
                                  colors: [
                                    Theme.of(context).colorScheme.primaryFixed,
                                    Theme.of(context).colorScheme.tertiaryFixedDim,
                                    Theme.of(context).colorScheme.secondaryFixedDim,
                                  ]
                                )
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      searchResult[index].name,
                                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                          color: Colors.black87
                                      )
                                    )
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: 72,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(100),
                                              bottomLeft: Radius.circular(100)
                                          )
                                      ),
                                      child: Image.asset(
                                        searchResult[index].imagePath,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  )
                                ],
                              ),
                            );
                          });
                        }
                    ),
                  ),
                  const Divider(height: 1, thickness: 1),
                  LayoutBuilder(
                    builder: (context, constraint) {
                      return Padding(
                        padding: const EdgeInsets.all(16),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Text(
                              "Categories",
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: constraint.maxWidth < 700 ? 2 : 4,
                              childAspectRatio: 2/1,
                              children: _generateSnackCategoryItem(
                                snacks: LocalFlutsnackDataProvider.categories,
                                gradientColors: [
                                  MaterialTheme.darkScheme().tertiaryFixed,
                                  MaterialTheme.darkScheme().onSurface,
                                  MaterialTheme.darkScheme().primary,
                                  MaterialTheme.darkScheme().onTertiaryContainer,
                                ]
                              ),
                            ),
                            Text(
                              "Lifestyles",
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: constraint.maxWidth < 700 ? 2 : 4,
                              childAspectRatio: 2/1,
                              children: _generateSnackCategoryItem(
                                snacks: LocalFlutsnackDataProvider.lifestyles,
                                gradientColors: [
                                  MaterialTheme.lightScheme().primaryContainer,
                                  MaterialTheme.lightScheme().surfaceDim,
                                  MaterialTheme.lightScheme().tertiaryFixedDim,
                                  MaterialTheme.lightScheme().secondaryContainer,
                                ]
                              ),
                            )
                          ],
                        ),
                      );
                    }
                  )
                ],
              )
          ),
        ),
      ),
    );
  }

  List<Widget> _generateSnackCategoryItem({
    required List<SnackCategory> snacks,
    required List<Color> gradientColors
  }) {
    return snacks.map((snack) {
      return Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.only(left: 8),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: gradientColors)
        ),
        child: Row(
          children: [
            Expanded(
                child: Text(
                  snack.name,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.black87
                  ),
                )
            ),
            Expanded(
              child: FractionalTranslation(
                translation: const Offset(0.2, 0),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      bottomLeft: Radius.circular(100)
                    )
                  ),
                  child: Image.asset(
                    snack.imagePath,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            )
          ],
        ),
      );
    }).toList();
  }
}
