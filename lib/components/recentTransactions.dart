import 'package:banking_app/utilities/themeStyles.dart';
import 'package:banking_app/widgets/transactionCard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  const RecentTransactions({super.key});

  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 16.0,
              top: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Transações Recentes', style: ThemeStyles.primaryTitle),
                Text('Ver todas', style: ThemeStyles.seeAll),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: const [
                TransactionCard(
                  color: Colors.black,
                  letter: 'H',
                  title: 'Hospedagem em Hotel',
                  subTitle: 'Hospedagem no Hotél Hilton',
                  price: '- R\$ 1340,00',
                ),
                TransactionCard(
                  color: Color(0xfffe695d),
                  letter: 'C',
                  title: 'Compras Supermercado',
                  subTitle: 'Compras do mês',
                  price: '- R\$ 620,30',
                ),
                TransactionCard(
                  color: Color(0xff103289),
                  letter: 'S',
                  title: 'Saída',
                  subTitle: 'Saída com amigos',
                  price: '- R\$ 59,99',
                ),
                TransactionCard(
                  color: Colors.greenAccent,
                  letter: 'V',
                  title: 'Viagem',
                  subTitle: 'Viagem para Londres',
                  price: '- R\$ 9.720,30',
                ),
                TransactionCard(
                  color: Colors.amberAccent,
                  letter: 'L',
                  title: 'Lanche no Aeroporto',
                  subTitle: 'Lanche',
                  price: '- R\$ 59,99',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}