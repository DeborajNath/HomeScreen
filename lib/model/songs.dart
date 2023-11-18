class Songs {
  String? id;
  String? songsText;

  Songs({
    required this.id,
    required this.songsText,
  });

  static List<Songs> songsList() {
    return [
      Songs(
        id: '01',
        songsText: 'Comfortably Numb',
      ),
      Songs(
        id: '02',
        songsText: 'Apocalypse',
      ),
      Songs(
        id: '03',
        songsText: 'Mockinbird',
      ),
      Songs(
        id: '04',
        songsText: 'The Unforgiven III',
      ),
      Songs(
        id: '05',
        songsText: 'Strange World',
      ),
      Songs(
        id: '06',
        songsText: 'A Million Dreams',
      ),
      Songs(
        id: '07',
        songsText: 'On an Island',
      ),
      Songs(
        id: '08',
        songsText: 'Wild Horses',
      ),
      Songs(
        id: '09',
        songsText: 'Take me home',
      ),
      Songs(
        id: '10',
        songsText: 'What a wonderful world',
      ),
      Songs(
        id: '11',
        songsText: 'Jamaica Farewell',
      ),
    ];
  }
}
