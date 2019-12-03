import 'dart:io';

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

final Music nobody =
    Music(id: 0, cancion: 'Nobody Can Sava Sava', 
          artista: "Linkin Park",
          tiempo: 3.45,
          imageUrl: 'assets/images/oneMore.jpg',
          imageAlbumUrl: 'assets/images/linkinPark.jpg'
    );
final Music goodBye =
    Music(id: 0, cancion: 'Good GoodBye(feat.Pusha T and Stormzy)', 
          artista: "Linkin Park,Pusha T, Stormzy",
          tiempo: 3.31,
          imageUrl: 'assets/images/oneMore.jpg',
          imageAlbumUrl: 'assets/images/linkinPark.jpg'
    );

final Music talking =
    Music(id: 0, cancion: 'Talkinf to Myself', 
          artista: "Linkin Park",
          tiempo: 3.31,
          imageUrl: 'assets/images/oneMore.jpg',
          imageAlbumUrl: 'assets/images/linkinPark.jpg'
    );
// FAVORITE CONTACTS
List<Music> listNext = [nobody, ];