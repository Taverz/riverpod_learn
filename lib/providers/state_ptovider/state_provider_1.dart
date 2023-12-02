import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The currently active filter.
///
/// We use [StateProvider] here as there is no fancy logic behind manipulating
/// the value since it's just enum.
/// 
// final todoListFilter = StateProvider((_) => Object.all);