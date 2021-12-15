part of widgets;

class OrderItem extends StatelessWidget {
  //const OrderItems({Key? key}) : super(key: key);

  final OrderItems order;

  OrderItem(this.order);

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text('\$${order.amount}'),
            subtitle: Text(DateFormat('dd/MM/yyyy hh:mm').format(order.dateTime)),
            trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.expand_more)
            ),
          ),
        ],
      ),
    );
  }
}
