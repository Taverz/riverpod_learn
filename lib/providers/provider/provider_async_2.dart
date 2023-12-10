import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A scoped provider, exposing the current question used by [QuestionItem].
///
/// This is used as a performance optimization to pass a [Question] to
/// [QuestionItem], while still instantiating [QuestionItem] using the `const`
/// keyword.
///
/// This allows [QuestionItem] to rebuild less often.
/// By doing so, even when using [QuestionItem] in a [ListView], even if new
/// questions are obtained, previously rendered [QuestionItem]s won't rebuild.
///
/// This is an optional step. Since scoping is a fairly advanced mechanism,
/// it's entirely fine to simply pass the [Question] to [QuestionItem] directly.
/// 
// final currentQuestion = Provider<AsyncValue<Object>>((ref) {
//   return CountProviderAsync.data(0);
// });

final countStreamProvider = StreamProvider<int>((ref) => Stream.value(0));
// ignore: subtype_of_sealed_class
// class CountProviderAsync extends AsyncValue<Object>{
//   const CountProviderAsync.data(super.value) : super.error(null, null);

//   @override
//   AsyncValue<Object> copyWithPrevious(AsyncValue<Object> previous, {bool isRefresh = true}) {
//     // TODO: implement copyWithPrevious
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement error
//   Object? get error => throw UnimplementedError();

//   @override
//   // TODO: implement hasValue
//   bool get hasValue => throw UnimplementedError();

//   @override
//   // TODO: implement isLoading
//   bool get isLoading => throw UnimplementedError();

//   @override
//   R map<R>({required R Function(AsyncData<Object> data) data, required R Function(AsyncError<Object> error) error, required R Function(AsyncLoading<Object> loading) loading}) {
//     // TODO: implement map
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement stackTrace
//   StackTrace? get stackTrace => throw UnimplementedError();

//   @override
//   // TODO: implement value
//   Object? get value => throw UnimplementedError();

// }

// /// A provider that asynchronously exposes the current user
// final userProvider = StreamProvider<User>((_) async* {
//   // fetch the user
// });
//  final AsyncValue<User> user = ref.watch(userProvider);