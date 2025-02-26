import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/Add%20Note%20Cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/color%20item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
            });
          },
          child: ColorItem(
            color: kColors[index],
            isSelected: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
