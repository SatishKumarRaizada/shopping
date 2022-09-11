import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_shopping/constant/app_icon.dart';
import 'package:my_shopping/feature/home/pod/category_pod.dart';
import 'model/category_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          _categoryListWidget(),
        ],
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: SvgPicture.asset(AppIcon.appIocn),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.bell),
        ),
      ],
    );
  }

  Widget _categoryListWidget() {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.1,
      child: Consumer(
        builder: (context, ref, child) {
          final data = ref.watch(categoryProvider);
          return data.when(
            loading: () => const CircularProgressIndicator(),
            error: (err, stack) => Text('Error: $err'),
            data: (posts) {
              return ListView.builder(
                itemCount: posts.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _categoryListItemWidget(posts[index]);
                },
              );
            },
          );
        },
      ),
    );
  }

  Widget _categoryListItemWidget(CategoryModel item) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Center(
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(item.image ?? ''),
          ),
        ),
      ),
    );
  }
}
