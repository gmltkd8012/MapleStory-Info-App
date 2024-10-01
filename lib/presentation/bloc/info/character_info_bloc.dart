import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maple_info_app/domain/model/ocid/ocid_model.dart';
import 'package:maple_info_app/domain/model/total/character_total_model.dart';
import 'package:maple_info_app/presentation/utils/fetch_Util.dart';

import '../../../domain/model/basic/basic_model.dart';
import '../../../domain/model/stat/stat_model.dart';

part 'character_info_event.dart';
part 'character_info_state.dart';
part 'character_info_bloc.freezed.dart';

class CharacterInfoBloc extends Bloc<CharacterInfoEvent, CharacterInfoState> with FetchUtil {
  CharacterInfoBloc() : super(CharacterInfoState.initial()) {
    on<CharacterInfoEvent>((event, emit) {
      return event.when(
        started: (characterList) => _onStarted(emit, characterList),
        add: (characterName) => _onAdd(emit, characterName),
        delete: (characterName) => _onDelete(emit, characterName),
      );
    });
  }

  Future<void> _onStarted(Emitter<CharacterInfoState> emit, List<String> characterList) async {
    print('bloc 탐');
    emit(CharacterInfoState.loading());
    print('로딩중');
    List<CharacterTotalModel> list = [];

    for(var character in characterList) {
      print('chracter -> $character');

      OcidModel ocidModel = await fetchOcid(character);
      print('ocid -> ${ocidModel.ocid}');
      BasicModel basicModel = await fetchBasic(ocidModel.ocid, "2024-09-30");
      StatModel statModel = await fetchStat(ocidModel.ocid, "2024-09-30");

      list.add(
        CharacterTotalModel(
          ocid: ocidModel.ocid,
          characterBasic: basicModel,
          characterStat: statModel,
        )
      );
    }
    print('로딩 완료');
    //TODO Preference 에서 이전 캐릭터 목록으로 API 조회
    emit(CharacterInfoState.success(list));
  }

  void _onAdd(Emitter<CharacterInfoState> emit, String characterName) {
    emit(CharacterInfoState.loading());
    //TODO Preference 에서 이전 캐릭터 목록으로 API 조회

    emit(CharacterInfoState.success([]));
  }

  void _onDelete(Emitter<CharacterInfoState> emit, String characterName) {
    emit(CharacterInfoState.loading());
    //TODO Preference 에서 이전 캐릭터 목록으로 API 조회
    emit(CharacterInfoState.success([]));
  }

}
