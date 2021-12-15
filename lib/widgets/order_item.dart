part of widgets;

class OrderItem extends StatefulWidget {
  //const OrderItems({Key? key}) : super(key: key);

  final OrderItems order;

  OrderItem(this.order);

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {


  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [


          ListTile(
            title: Text('\$${widget.order.amount}'),
            subtitle: Text(DateFormat('dd/MM/yyyy hh:mm').format(widget.order.dateTime)),
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
