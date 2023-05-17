import 'package:auto_route/annotations.dart';
import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

@RoutePage()
class EliteStore extends StatelessWidget {
  const EliteStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      primary: true,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: index.isEven
                ? 120
                : index % 5 == 0
                    ? 148
                    : 164,
            width: 120,
            color: context.colorScheme.primary,
          ),
        );
      },
    );
  }
}
