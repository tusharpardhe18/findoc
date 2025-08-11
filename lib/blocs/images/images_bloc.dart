import 'package:flutter_bloc/flutter_bloc.dart';
import 'images_event.dart';
import 'images_state.dart';
import '../../repositories/picsum_repository.dart';

class ImagesBloc extends Bloc<ImagesEvent, ImagesState> {
  final PicsumRepository repo;
  ImagesBloc(this.repo) : super(ImagesInitial()) {
    on<LoadImages>(_onLoadImages);
    on<LoadMockImages>(_onLoadMockImages);
  }

  Future<void> _onLoadImages(LoadImages e, Emitter<ImagesState> emit) async {
    emit(ImagesLoading());
    try {
      final images = await repo.fetchTenImages();
      emit(ImagesLoaded(images));
    } catch (err) {
      emit(ImagesError(err.toString()));
    }
  }

  Future<void> _onLoadMockImages(LoadMockImages e, Emitter<ImagesState> emit) async {
    emit(ImagesLoading());
    try {
      final images = await repo.getMockImages();
      emit(ImagesLoaded(images));
    } catch (err) {
      emit(ImagesError('Failed to load mock images: ${err.toString()}'));
    }
  }
}
