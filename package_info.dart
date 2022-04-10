import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyAppPackageInfo());
}

class MyAppPackageInfo extends StatelessWidget {
  const MyAppPackageInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppPackageInfoPage(),
    );
  }
}

//---------------------------------------------------------- //

class MyAppPackageInfoPage extends StatelessWidget {
  const MyAppPackageInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Package Info Flutter')),
        body: FutureBuilder(
          future: PackageInfo.fromPlatform(),
          builder: (context, AsyncSnapshot<PackageInfo> snapshot) {
            if (!snapshot.hasData) return Container();
            PackageInfo? _info = snapshot.data;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Nama App : ${_info?.appName}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Nama Package : ${_info?.packageName}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Versi : ${_info?.version}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Build Number : ${_info?.buildNumber}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

//---------------------------------------------------------- //