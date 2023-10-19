import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn_platform_interface.dart';
import 'package:note/constants.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:note/views/widgets/add_note_forn.dart';
import 'package:note/views/widgets/custom_text_filed.dart';
import 'package:note/views/widgets/cutom_buttom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print("there is problem${state.errMessage}");
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding:  EdgeInsets.only(
                left: 16 ,
                 right: 16,
                 bottom:MediaQuery.of(context).viewInsets.bottom
                 ),
              
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
