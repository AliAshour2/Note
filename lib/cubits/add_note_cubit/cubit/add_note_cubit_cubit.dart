import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel model){}


}
