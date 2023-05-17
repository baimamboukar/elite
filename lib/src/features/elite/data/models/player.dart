// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/features/elite/data/models/club_model.dart';

class Player {
  final String id;
  final String name;
  final String? photo;
  final String? position;

  final Club club;
  Player({
    required this.id,
    required this.name,
    required this.club,
    this.photo,
    this.position,
  });
}

final patient = Player(
  id: '1',
  name: 'Wassou Patient',
  club: coton,
  photo: Assets.assetsImagesWassou,
  position: 'Striker',
);

final narcisse = Player(
  id: '2',
  name: 'Narcisse Junior',
  club: bamboutos,
  photo: Assets.assetsImagesNarcisseJr,
  position: 'Goalkeeper',
);

final marou = Player(
  id: '3',
  name: 'Souaibou Marou',
  club: coton,
  photo: Assets.assetsImagesMarou,
  position: 'Midfielder',
);

final yerima = Player(
  id: '4',
  name: 'Yerima Issa',
  club: coton,
  photo: Assets.assetsImagesYerimaIssa,
  position: 'Defender',
);
final daman = Player(
  id: '5',
  name: 'Daman Bouba',
  club: coton,
  photo: Assets.assetsImagesDaman,
  position: 'Midfielder',
);
final frank = Player(
  id: '6',
  name: 'Frank Boya',
  club: coton,
  photo: Assets.assetsImagesFrank,
  position: 'Midfielder',
);

final players = [
  patient,
  narcisse,
  marou,
  yerima,
  daman,
  frank,
];
