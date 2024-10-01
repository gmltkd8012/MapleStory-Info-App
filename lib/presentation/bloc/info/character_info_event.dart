part of 'character_info_bloc.dart';

@freezed
class CharacterInfoEvent with _$CharacterInfoEvent {


  const factory CharacterInfoEvent.started(List<String> characterList) = _Started;
  const factory CharacterInfoEvent.add(String characterName) = _Add;
  const factory CharacterInfoEvent.delete(String characterName) = _Delete;

}
