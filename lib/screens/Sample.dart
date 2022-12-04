import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  late MapShapeSource? _mapSource;

  @override
  void initState() {
    _mapSource = const MapShapeSource.network(
      'https://raw.githubusercontent.com/deldersveld/topojson/master/world-countries.json',
      
      // shapeDataField: 'STATE_NAME',
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfMaps(
          layers: [
            MapShapeLayer(
              source: _mapSource!,
            ),
          ],
        ),
      ),
    );
  }
}
