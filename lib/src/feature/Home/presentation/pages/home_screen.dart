import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';
import 'package:flutter_keep/src/feature/Home/presentation/widgets/note_item.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        locator<NotesCubit>().fetchNotes();
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: locator<GlobalKey<ScaffoldState>>(),
      drawer: const DrawerWidget(),
      body: CustomScrollView(
        slivers: <Widget>[
          const AppBarWidget(),
          BlocBuilder<NotesCubit, NotesState>(
            builder: (context, state) {
              if (state is NotesInitial || state is NotesLoading) {
                return const LoadingGridView();
              } else if (state is NotesLoaded) {
                if (state.noteList.isNotEmpty) {
                  return SliverPadding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: kBottomNavigationBarHeight * 1.7,
                      left: 5,
                      right: 5,
                    ),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisExtent: size.width / 2,
                        maxCrossAxisExtent: size.width / 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        childAspectRatio: 1 / 1.3,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) => NoteItem(
                          noteModel: state.noteList[index],
                        ),
                        childCount: state.noteList.length,
                        addRepaintBoundaries: true,
                        addAutomaticKeepAlives: true,
                      ),
                    ),
                  );
                }
                return SliverFillRemaining(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Lottie.asset(AppAssets.emptyAnimation),
                        Text(
                          'No notes'.hardcoded,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                );
              } else if (state is NotesError) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text(state.failure.reason),
                  ),
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
      floatingActionButton: const FabWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      extendBody: true,
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
