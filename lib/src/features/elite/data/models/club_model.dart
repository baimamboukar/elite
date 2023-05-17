// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:elite_one/src/app/assets.dart';
import 'package:elite_one/src/features/elite/data/models/player.dart';
import 'package:uuid/uuid.dart';

class Club {
  final String id;
  final String name;
  final String? logo;
  final String? department;
  final String? city;
  final String? stadium;
  final String? coach;
  final String? president;
  final String? founded;
  final List<Player> players;
  final String? summary;
  Club({
    required this.id,
    required this.name,
    required this.players,
    this.logo,
    this.department,
    this.city,
    this.stadium,
    this.coach,
    this.president,
    this.founded,
    this.summary,
  });
}

final coton = Club(
  id: const Uuid().v4(),
  name: 'Coton Sport',
  logo: Assets.assetsImagesCotonsport,
  department: 'Benoue',
  city: 'Garoua',
  stadium: 'Stade Omnisports Roumde-Adja',
  coach: 'Souleymanou Aboubakar',
  president: 'Fernand Sadou',
  players: [],
);

final union = Club(
  id: const Uuid().v4(),
  name: 'UMS Loum',
  logo: Assets.assetsImagesUms,
  department: 'Loum',
  city: 'Douala',
  stadium: 'Stade de la Réunification',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);

final gazelle = Club(
  id: const Uuid().v4(),
  name: 'Gazelle FC',
  logo: Assets.assetsImagesGazelle,
  department: 'Benoue',
  city: 'Garoua',
  stadium: 'Stade Ahmadou Ahidjo',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);

final canon = Club(
  id: const Uuid().v4(),
  name: 'Canon FC',
  logo: Assets.assetsImagesCanon,
  department: 'Mfoundi',
  city: 'Yaoundé',
  stadium: 'Stade Ahmadou Ahidjo',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);

final feutcheu = Club(
  id: const Uuid().v4(),
  name: 'Feutcheu FC',
  logo: Assets.assetsImagesFootball,
  department: 'Noun',
  city: 'Bandjoun',
  stadium: 'Stade Municipal de Bandjoun',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);

final dragon = Club(
  id: const Uuid().v4(),
  name: 'Dragon FC',
  logo: Assets.assetsImagesFootball,
  department: 'Mfoundi',
  city: 'Yaoundé',
  stadium: 'Stade Omnisports Ahmadou Ahidjo',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);

final yafoot = Club(
  id: const Uuid().v4(),
  name: 'Yafoot FC',
  logo: Assets.assetsImagesFootball,
  department: 'Mfoundi',
  city: 'Yaoundé',
  stadium: 'Stade Omnisports Ahmadou Ahidjo',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);

final avion = Club(
  id: const Uuid().v4(),
  name: 'Avion FC',
  logo: Assets.assetsImagesAvion,
  department: 'Mfoundi',
  city: 'Yaoundé',
  stadium: 'Stade Omnisports Ahmadou Ahidjo',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);

final asfao = Club(
  id: const Uuid().v4(),
  name: 'AS Fortuna',
  logo: Assets.assetsImagesFootball,
  department: 'Mfoundi',
  city: 'Yaoundé',
  stadium: 'Stade Omnisports Ahmadou Ahidjo',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);
final pwd = Club(
  id: const Uuid().v4(),
  name: 'PWD',
  logo: Assets.assetsImagesPwd,
  department: 'Mfoundi',
  city: 'Yaoundé',
  stadium: 'Stade Omnisports Ahmadou Ahidjo',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);
final apejes = Club(
  id: const Uuid().v4(),
  name: 'Apejes',
  logo: Assets.assetsImagesApejes,
  department: 'Mfou',
  city: 'Yaoundé',
  stadium: 'Stade Omnisports Ahmadou Ahidjo',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);
final aigle = Club(
  id: const Uuid().v4(),
  name: 'Aigle Royal',
  logo: Assets.assetsImagesAigle,
  department: 'Mfoundi',
  city: 'Yaoundé',
  stadium: 'Stade Omnisports Ahmadou Ahidjo',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);
final colombe = Club(
  id: const Uuid().v4(),
  name: 'Colombe',
  logo: Assets.assetsImagesColombe,
  department: 'Dja et Lobo',
  city: 'Ebolowa',
  stadium: 'Stade Ebolowa',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);
final bamboutos = Club(
  id: const Uuid().v4(),
  name: 'Bamboutos',
  logo: Assets.assetsImagesBamboutos,
  department: 'Baffoussam',
  city: 'Mbouda',
  stadium: 'Stade Omnisports Ahmadou Ahidjo',
  coach: 'Franck Happi',
  president: 'Franck Happi',
  players: [],
);
final clubs = [
  coton,
  union,
  gazelle,
  canon,
  feutcheu,
  dragon,
  yafoot,
  avion,
  asfao,
  pwd,
  apejes,
  aigle,
  colombe,
  bamboutos,
];
