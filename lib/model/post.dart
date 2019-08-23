class Post {
  final String title;
  final String author;
  final String imageUrl;
  final String description;
  const Post({this.title, this.author, this.imageUrl,this.description});
}

final List<Post> posts = [
  Post(title: 'A', author: '甲', imageUrl: 'http://www.tu.com/a.png',description: 'Contenta'),
  Post(title: 'B', author: '乙', imageUrl: 'http://www.tu.com/b.png',description: 'Contentb'),
  Post(title: 'C', author: '丙', imageUrl: 'http://www.tu.com/c.png',description: 'Contentc'),
  Post(title: 'D', author: '丁', imageUrl: 'http://www.tu.com/d.png',description: 'Contentd')
];
