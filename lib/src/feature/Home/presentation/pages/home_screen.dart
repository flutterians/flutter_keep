import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';
import 'package:flutter_keep/src/feature/Home/presentation/widgets/note_item.dart';

const _defaultColor = Color(0xFF34568B);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    locator<NotesCubit>().fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const AppBarWidget(),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 1.2,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) =>
                  NoteItem(noteModel: NoteModel(id: index, title: 'title')),
              childCount: 10,
            ),
          ),
        ],
      ),
      floatingActionButton: const FabWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      extendBody: true,
      // extendBodyBehindAppBar: true,
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    super.key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  });

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      color: backgroundColor ?? _defaultColor,
      height: extent,
      child: Center(
        child: CircleAvatar(
          minRadius: 20,
          maxRadius: 20,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: Text('$index', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}
