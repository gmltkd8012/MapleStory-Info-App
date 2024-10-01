part of 'character_info_bloc.dart';

@freezed
class CharacterInfoState with _$CharacterInfoState {
  const factory CharacterInfoState.initial() = _Initial;
  const factory CharacterInfoState.loading() = _onLoading;
  const factory CharacterInfoState.success(List<CharacterTotalModel> list) = _onSuccess;
  const factory CharacterInfoState.error() = _onError;
}
