import 'package:flutsnack/data/constants.dart';
import 'package:flutsnack/model/snack_category.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class Detail extends StatefulWidget {
  const Detail({super.key, required this.snack});

  final SnackCategory snack;

  @override
  State createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  int quantity = 0;
  bool isSeeMore = false;

  Widget _header(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    MaterialTheme.darkScheme().primary,
                    MaterialTheme.darkScheme().onSurfaceVariant,
                    MaterialTheme.darkScheme().secondary,
                    MaterialTheme.darkScheme().onSecondaryContainer,
                  ])
              ),
            ),
            Container(
              height: 160,
            )
          ],
        ),
        FractionalTranslation(
          translation: const Offset(0.25, 0.12),
          child: SizedBox(
            width: 256,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Image.asset(
                    widget.snack.imagePath,
                    fit: BoxFit.cover
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black87,
            )
          ),
        )
      ],
    );
  }

  Widget _snackInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.snack.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold
          ),
        ),
        Text(
          widget.snack.tagline,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).textTheme.bodyLarge?.color?.withAlpha((0.6 * 255).toInt())
          ),
        ),
        Text(
          "\$${widget.snack.price.toStringAsPrecision(3)}",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary
          ),
        )
      ],
    );
  }

  Widget _snackDetail(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Details",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          Constants.lipsum,
          maxLines: isSeeMore ? 0x7fffffff : 5,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        Align(
          child: TextButton(
              onPressed: () {
                setState(() {
                  isSeeMore = !isSeeMore;
                });
              },
              child: Text(isSeeMore ? "SEE LESS" : "SEE MORE")
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Ingredients",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold
          ),
        ),
        Text(
          widget.snack.ingredients.toString().substring(1, widget.snack.ingredients.toString().length - 1),
          style: Theme.of(context).textTheme.bodyMedium
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: _snackInfo(context),
              ),
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.all(16),
                child: _snackDetail(context),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: LayoutBuilder(
              builder: (context, constraint) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: constraint.maxWidth < 600 ? 0 : (constraint.maxWidth < 800) ? 3 : 8,
                      child: Row(
                        children: [
                          const Text('Qty'),
                          const SizedBox(width: 16),
                          IconButton.outlined(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (quantity > 0) quantity--;
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(quantity.toString()),
                          ),
                          IconButton.outlined(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: constraint.maxWidth < 600 ? 1 : (constraint.maxWidth < 800) ? 2 : 3,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text('ADD TO CART'),
                        ),
                      )
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
