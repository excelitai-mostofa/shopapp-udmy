part of widgets;

class ProductItem extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final product = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),

      child: GridTile(

          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(
                  ProductDetailScreen.routeName,
                  arguments: product.id,
              );
            },
            child: Image.network(
              product.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        footer: GridTileBar(

          leading: IconButton(
              onPressed: (){

                product.toggleFavoriteStatus();


              },
              icon: Icon(product.isFav ? Icons.favorite : Icons.favorite_border),
              color: Theme.of(context).accentColor,
          ),

          backgroundColor: Colors.black54,
          title: Text(product.title, textAlign: TextAlign.center,),
          trailing: IconButton(
              onPressed: (){

                cart.addItem(product.id, product.price, product.title);


              },
              icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).accentColor,
          ),

        ),
      ),
    );
  }
}
