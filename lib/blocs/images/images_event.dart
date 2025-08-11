import 'package:equatable/equatable.dart';
abstract class ImagesEvent extends Equatable {
  @override List<Object?> get props => [];
}
class LoadImages extends ImagesEvent {}
class LoadMockImages extends ImagesEvent {}
