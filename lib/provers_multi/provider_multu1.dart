import 'package:hooks_riverpod/hooks_riverpod.dart';

// final futureNultiProvider1 = FutureProvider.internal((ref) => null);
final futureNultiProvider1 = FutureProvider<Object>(
  (ref) async{
    //TODO: ref.watch ?
    //TODO: ref.read ?
    //TODO: select ?
    //TODO: selectAsync ?
    //        
    //     final room
    // ref. watch(selectedRoomProvider). value;
    // if (room =
    // ทนไป)
    // final
    // roomId
    // await ref.watch(selectedRoomProvider.selectAsync((room)
    // 1f
    // (roomid
    // == null) {
    // return null;
    // room!. id)) ;
    // final
    // roomHistorySubscription =
    // ref. watch(socketProvider(SocketQuery(name:
    // *room-history', id:
    // room. id)));

    return '';
  },
);
final futureNultiProvider_AutoDispose1 = FutureProvider.autoDispose<Object>(
  (ref) async{
    return '';
  },
);



final abonnemenOuttNotifierProvider =
    StateNotifierProvider<AbonnementNotifier, AbonnementState>((ref) {
  return AbonnementNotifier(
    ref.watch(serviceAbonnementOutProvider),
  );
});
class AbonnementNotifier extends StateNotifier<AbonnementState> {
  final ServiceAbonnement _serviceAbonnement;
  AbonnementNotifier(
    this._serviceAbonnement,
  ) : super(const AbonnementState.loading());
}

@freezed
sealed class AbonnementState with _$AbonnementState {
  const factory AbonnementState.data(InfoUserToBraclet abonnementList) = _Data;
  const factory AbonnementState.loading() = _Loading;
  const factory AbonnementState.error([String? message]) = _Error;
}
