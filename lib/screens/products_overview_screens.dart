part of screens;


class ProductOverviewScreens extends StatelessWidget {
  //const ProductOverviewScreens({Key? key}) : super(key: key);

  final List<Product> loadedProducts =[
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imgUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imgUrl:
      'https://www.myar.pk/wp-content/uploads/2020/07/mst4HG0.jpg',
    ),
    Product(
      id: 'p3',
      title: 'A pan',
      description: 'Prepare any meal you want.',
      price: 50.99,
      imgUrl:
      'https://www.ubuy.com.bd/productimg/?image=aHR0cHM6Ly9tLm1lZGlhLWFtYXpvbi5jb20vaW1hZ2VzL0kvODE5aHpaSUZOdUwuX0FDX1NMMTUwMF8uanBn.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Laptop',
      description: 'best product',
      price: 200.99,
      imgUrl:
      'https://m.media-amazon.com/images/I/71h6PpGaz9L._AC_SL1500_.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
      ),


      body: GridView.builder(
        padding: const EdgeInsets.all(10),
          itemCount: loadedProducts.length,
          itemBuilder: (ctx, i)=> ProductItem(
              loadedProducts[i].id,
              loadedProducts[i].title,
              loadedProducts[i].imgUrl
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
      ),
    );
  }
}
