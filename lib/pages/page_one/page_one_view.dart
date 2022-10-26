
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/pages/page_one/page_one.dart';
import 'package:netflix/pages/page_one/page_one_provider.dart';
import 'package:provider/provider.dart';

class PageOneView extends StatefulWidget {
  const PageOneView({Key? key}) : super(key: key);

  @override
  State<PageOneView> createState() => _PageOneViewState();
}

class _PageOneViewState extends State<PageOneView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PageOneProvider(),
      child: const PageOne(),
    );
  }
}