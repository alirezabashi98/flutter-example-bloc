import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example_bloc/bloc/home_bloc.dart';
import 'package:flutter_example_bloc/bloc/home_event.dart';
import 'package:flutter_example_bloc/bloc/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is ColorInit)
                return Container(
                  color: state.color,
                );
              else if (state is ColorRePaint)
                return Container(
                  color: state.color,
                );
              else
                return Container(
                  color: Colors.black,
                );
            },
          ),
          ElevatedButton(
            onPressed: () {
              context.read<HomeBloc>().add(ChangeColorEvent());
            },
            child: Text("change color"),
          ),
        ],
      ),
    );
  }
}
