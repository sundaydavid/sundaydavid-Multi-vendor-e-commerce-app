import 'package:flutter/material.dart';

Widget productMoreDetails(
  BuildContext context,
) {
  return Table(
    border: TableBorder.all(),
    columnWidths: const <int, TableColumnWidth>{
      0: IntrinsicColumnWidth(),
      1: FlexColumnWidth(),
      2: FixedColumnWidth(100)
    },
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    children: <TableRow>[
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Center(
              child: Text(
            "Name",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          )),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Center(
                  child: Text(
                "Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              )),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "Product name",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Original iPhone 15 Pro MAX Smartphones 16GB+512GB Internal Storage",
              ),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "Brand/Store",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "OtterBox",
              ),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "Color",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Black",
              ),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "Form factor",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Basic Case, Bumper",
              ),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "Compatible phone model",
            maxLines: 4,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "iPhone XR",
              ),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "Material",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Synthetic Rubber, Polycarbonate",
              ),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "In Stock",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Qty: 40",
              ),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "Actual price",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "₦300,000.00",
              ),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "List price",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "₦500,000.00",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough, color: Colors.grey),
              ),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "Ram/Rom",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "4+2Ram and 128Rom",
              ),
            )),
      ]),

      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "Charger",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "20Hz power adapter",
              ),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "About this item",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                  children: List.generate(5, (index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: const Text(
                    "Thin, Lightweight, 2-piece case provider and DOES not come with a protector",
                    style: TextStyle(fontSize: 12),
                  ),
                );
              })),
            )),
      ]),
      TableRow(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            "Note",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Products with electrical plugs are designed for use in the US. "
                "Outlet and Voltage differ internationally and this products may require an "
                    "adapter or converter for use in your destination. Please check compatibility before purchasing",
                textAlign: TextAlign.justify,
              ),
            )),
      ]),
    ],
  );
}
