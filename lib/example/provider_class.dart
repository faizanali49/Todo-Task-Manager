import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/example/model.dart';

class Listing extends StateNotifier<List<ListingModel>> {
  Listing() : super([]);

  void addItem(ListingModel item) {
    state = [...state, item];
  }
}

// Providers

final listprovider = StateNotifierProvider<Listing, List<ListingModel>>((ref) {
  return Listing();
});

final count = StateProvider<int>((ref) {
  return 5;
});
