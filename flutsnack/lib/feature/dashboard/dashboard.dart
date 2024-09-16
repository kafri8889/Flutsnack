
import 'dart:ui';

import 'package:flutsnack/data/local_flutsnack_data_provider.dart';
import 'package:flutsnack/feature/detail/detail.dart';
import 'package:flutsnack/feature/search/search.dart';
import 'package:flutsnack/model/snack_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  List<String> addressList = [
    "Jiaxing Road 237, Hongkou District, Shanghai, China",
    "1600 Ampitheater Way"
  ];

  List<String> filterList = [
    "Organic",
    "Gluten-free",
    "Dairy-free",
    "Desserts",
    "Vegan"
  ];

  List<String> selectedFilters = [];

  late String selectedAddress;

  _DashboardState() {
    selectedAddress = addressList[0];
  }

  Widget _dashboardTopAppBar(BuildContext context, {required Function() onSearchClicked}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          PopupMenuButton(
              initialValue: selectedAddress,
              onSelected: (String address) {
                setState(() {
                  selectedAddress = address;
                });
              },
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Theme.of(context).colorScheme.primary,
              ),
              itemBuilder: (BuildContext context) {
                return addressList.map<PopupMenuEntry<String>>((address) {
                  return PopupMenuItem(
                    value: address,
                    child: Text(address)
                  );
                }).toList();
              }
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              "Delivery to $selectedAddress",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          IconButton(
              onPressed: onSearchClicked,
              icon: SvgPicture.asset(
                  "assets/icons/search_normal_outlined.svg",
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn)
              )
          )
        ],
      ),
    );
  }

  Widget _snackTitle(BuildContext context, String title, Function() onClick) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary
          ),
        ),
        IconButton(
            onPressed: onClick,
            icon: Icon(
              Icons.arrow_forward_rounded,
              color: Theme.of(context).colorScheme.primary,
            )
        )
      ],
    );
  }

  Widget _snackItem({
    required BuildContext context,
    required SnackCategory snack,
    required List<Color> gradients,
    required Function() onClick
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      shadowColor: Theme.of(context).colorScheme.onSurface,
      elevation: 2,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16)
        ),
        child: InkWell(
          onTap: onClick,
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 160,
                  height: 72,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: gradients
                      )
                  ),
                ),
              ),
              FractionalTranslation(
                translation: const Offset(0, -0.14),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      snack.imagePath,
                      fit: BoxFit.cover,
                      width: 96,
                      height: 96,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 160,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    children: [
                      Text(
                        snack.tagline,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).textTheme.bodyMedium?.color?.withAlpha((0.6 * 255).toInt())
                        ),
                      ),
                      Text(
                        snack.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularSnackItem(BuildContext context, SnackCategory snack) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100)
            ),
            child: Image.asset(
              snack.imagePath,
              fit: BoxFit.cover,
              width: 96,
              height: 96,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            snack.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

  Widget _snackItemList({
    required BuildContext context,
    required List<SnackCategory> snacks,
    required List<Color> gradients,
    required Function(SnackCategory snack) onSnackClicked
  }) {
    return SizedBox(
      height: 216,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        }),
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemCount: snacks.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 8);
          },
          itemBuilder: (BuildContext context, int index) {
            return _snackItem(
              context: context,
              snack: snacks[index],
              gradients: gradients,
              onClick: () {
                onSnackClicked(snacks[index]);
              }
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _dashboardTopAppBar(
                context,
                onSearchClicked: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Search();
                  }));
                }
            ),
            const Divider(height: 1, thickness: 1),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                }),
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: filterList.length + 1,
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 8);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return IconButton.outlined(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/icons/sort_outlined.svg",
                              colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                            )
                        );
                      }

                      return FilterChip(
                          label: Text(filterList[index - 1]),
                          selected: selectedFilters.contains(filterList[index - 1]),
                          onSelected: (bool isSelected) {
                            setState(() {
                              if (isSelected) {
                                selectedFilters.add(filterList[index - 1]);
                              } else {
                                selectedFilters.remove(filterList[index - 1]);
                              }

                              filterList.sort((a, b) {
                                if (selectedFilters.contains(a)) return -1;
                                if (selectedFilters.contains(b)) return 1;
                                return 0;
                              });
                            });
                          }
                      );
                    },
                ),
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _snackTitle(context, "Android's picks", () {}),
              ),
            ),
            _snackItemList(
              context: context,
              snacks: LocalFlutsnackDataProvider.androidPick,
              gradients: [
                MaterialTheme.darkScheme().primary,
                MaterialTheme.darkScheme().onSurfaceVariant,
                MaterialTheme.darkScheme().secondary,
                MaterialTheme.darkScheme().onSecondaryContainer,
              ],
              onSnackClicked: (SnackCategory snack) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Detail(snack: snack);
                }));
              }
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(height: 1, thickness: 1),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _snackTitle(context, "Popular on Flutsnack", () {}),
              ),
            ),
            SizedBox(
              height: 160,
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                }),
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: LocalFlutsnackDataProvider.popularOnFlutsnack.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 8);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return _popularSnackItem(context, LocalFlutsnackDataProvider.popularOnFlutsnack[index]);
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(height: 1, thickness: 1),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _snackTitle(context, "WFH favourites", () {}),
              ),
            ),
            _snackItemList(
              context: context,
              snacks: LocalFlutsnackDataProvider.wfhFavourites,
              gradients: [
                MaterialTheme.darkScheme().tertiary,
                MaterialTheme.lightScheme().secondaryContainer,
                MaterialTheme.lightScheme().primary,
              ],
              onSnackClicked: (SnackCategory snack) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Detail(snack: snack);
                }));
              }
            ),
          ],
        ),
      ),
    );
  }
}
