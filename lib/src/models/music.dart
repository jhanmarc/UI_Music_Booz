
class Music {
  final int id;
  final String cancion;
  final String artista;
  final double tiempo;
  final String imageUrl;
  final String imageAlbumUrl;
  final String fileAudio;

  Music({
    this.id,
    this.cancion,
    this.artista,    
    this.tiempo,
    this.imageUrl,
    this.imageAlbumUrl,
    this.fileAudio,
  });
}

final Music somewhere =
    Music(id: 0, cancion: 'Somewhere I Belong', 
          artista: "Linkin Park",
          tiempo: 3.33,
          imageUrl: 'assets/images/oneMore.jpg',
          imageAlbumUrl: 'assets/images/linkinPark.jpg'
    );
final Music nobody =
    Music(id: 1, cancion: 'Nobody Can Sava Sava', 
          artista: "Linkin Park",
          tiempo: 3.45,
          imageUrl: 'assets/images/oneMore.jpg',
          imageAlbumUrl: 'assets/images/linkinPark.jpg'
    );
final Music goodBye =
    Music(id: 2, cancion: 'Good GoodBye(feat.Pusha T and Stormzy)', 
          artista: "Linkin Park,Pusha T, Stormzy",
          tiempo: 3.31,
          imageUrl: 'assets/images/oneMore.jpg',
          imageAlbumUrl: 'assets/images/linkinPark.jpg'
    );

final Music talking =
    Music(id: 3, cancion: 'Talkinf to Myself', 
          artista: "Linkin Park",
          tiempo: 3.40,
          imageUrl: 'assets/images/oneMore.jpg',
          imageAlbumUrl: 'assets/images/linkinPark.jpg'
    );

final Music oneMore =
    Music(id: 4, cancion: 'One More Light', 
          artista: "Linkin Park",
          tiempo: 4.15,
          imageUrl: 'assets/images/oneMore.jpg',
          imageAlbumUrl: 'assets/images/linkinPark.jpg'
    );

//REPRODUCTOR
List<Music> play = [somewhere];

// UP NEXT
List<Music> listNext = [nobody, goodBye,talking,oneMore];