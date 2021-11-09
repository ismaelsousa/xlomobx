import 'package:flutter/material.dart';
import 'package:xlomobx/components/custom_drawer/custom_drawer_header.dart';
import 'package:xlomobx/components/custom_drawer/page_section.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(right: Radius.circular(50)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: ListView(
            children: const [CustomDrawerHeader(), PageSection()],
          ),
        ),
      ),
    );
  }
}
