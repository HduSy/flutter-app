class Post {
  final String title;
  final String author;
  final String imageUrl;
  final String description;
  bool selected;
  Post({this.title, this.author, this.imageUrl,this.description,this.selected});
}

final List<Post> posts = [
  Post(title: '01_emoj_png', author: 'razz', imageUrl: 'http://sudasuta.com/smilies/icon_razz.png',description: 'icon_razzicon_razzicon_razzicon_razzicon_razzicon_razzicon_razzicon_razzicon_razzicon_razzicon_razzicon_razzicon_razzicon_razzicon_razzicon_razz',selected: false),
  Post(title: '02_emoj_png', author: 'sad', imageUrl: 'http://sudasuta.com/smilies/icon_sad.png',description: 'icon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sadicon_sad',selected: false),
  Post(title: '03_emoj_png', author: 'evil', imageUrl: 'http://sudasuta.com/smilies/icon_evil.png',description: 'icon_evilicon_evilicon_evilicon_evilicon_evilicon_evilicon_evilicon_evilicon_evilicon_evilicon_evilicon_evilicon_evilicon_evilicon_evilicon_evil',selected: false),
  Post(title: '04_emoj_png',author: 'smile',imageUrl: 'http://sudasuta.com/smilies/icon_smile.png',description: 'icon_smile',selected: false),
  Post(title: '05_emoj_png',author: 'redface',imageUrl: 'http://sudasuta.com/smilies/icon_redface.png',description: 'icon_redface',selected: false),
  Post(title: '06_emoj_png',author: 'biggrin',imageUrl: 'http://sudasuta.com/smilies/icon_biggrin.png',description: 'icon_biggrin',selected: false),
  Post(title: '07_emoj_png',author: 'confused',imageUrl: 'http://sudasuta.com/smilies/icon_confused.png',description: 'icon_confused',selected: false),
  Post(title: '08_emoj_png',author: 'surprised',imageUrl: 'http://sudasuta.com/smilies/icon_surprised.png',description: 'icon_surprised',selected: false),
  Post(title: '09_emoj_png',author: 'lol',imageUrl: 'http://sudasuta.com/smilies/icon_lol.png',description: 'icon_lol',selected: false),
  Post(title: '10_emoj_png',author: 'twisted',imageUrl: 'http://sudasuta.com/smilies/icon_twisted.png',description: 'icon_twisted',selected: false),
  Post(title: '11_emoj_png',author: 'wink',imageUrl: 'http://sudasuta.com/smilies/icon_wink.png',description: 'icon_wink',selected: false),
  Post(title: '12_emoj_png',author: 'arrow',imageUrl: 'http://sudasuta.com/smilies/icon_arrow.png',description: 'icon_arrow',selected: false),
  Post(title: '13_emoj_png',author: 'cry',imageUrl: 'http://sudasuta.com/smilies/icon_cry.png',description: 'icon_cry',selected: false),
  Post(title: '14_emoj_png', author: 'mrgreen', imageUrl: 'http://sudasuta.com/smilies/icon_mrgreen.png',description: 'icon_mrgreen',selected: false)
];
