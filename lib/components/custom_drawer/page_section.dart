import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:xlomobx/components/custom_drawer/page_tile.dart';
import 'package:xlomobx/stores/page_store.dart';

class PageSection extends StatefulWidget {
  const PageSection({Key? key}) : super(key: key);

  @override
  State<PageSection> createState() => _PageSectionState();
}

class _PageSectionState extends State<PageSection> {
  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Anúncio',
          iconData: Icons.list,
          onTap: () {
            pageStore.setPage(0);
          },
          highlighted: pageStore.page == 0,
        ),
        PageTile(
          label: 'Inserir Anúncio',
          iconData: Icons.edit,
          onTap: () {
            pageStore.setPage(1);
          },
          highlighted: pageStore.page == 1,
        ),
        PageTile(
          label: 'Chat',
          iconData: Icons.chat,
          onTap: () {
            pageStore.setPage(2);
          },
          highlighted: pageStore.page == 2,
        ),
        PageTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          onTap: () {
            pageStore.setPage(3);
          },
          highlighted: pageStore.page == 3,
        ),
        PageTile(
          label: 'Minha conta',
          iconData: Icons.person,
          onTap: () {
            pageStore.setPage(4);
          },
          highlighted: pageStore.page == 4,
        ),
      ],
    );
  }
}
