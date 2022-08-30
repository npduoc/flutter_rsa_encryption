import 'package:fast_rsa/fast_rsa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    var message = 'Hello world';
    var publicKey = 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnh6r01rzztzc0LDmY9Cio8ELjnRzl1SxPEVLOxBS02Y2xRnn5oMRAhhUhTBI6HpML1pK3lmJ39hTaFOdaSh0EEVbJlNSRaLfBg8cfvwb0uYl2kQAPAEbd3/nNOOvKBp70fOkJ2+jCiy+AuF8xoQD3Yjt4OE7TYVGRlJueLjovuf4mNjsbjzy2Z259RTm8+6057OREFglci17iqA8DT149uS5PovulZIE9MWQVd5/NJDxsh5S60nAGO7JBJhezaNVspV13ZsJTBf4fdzygzakg7F/hk/PGORyE8EkWtljLXoi2b/GPlulody93CH0sud5kXmD7IQMO13FJGmNIO9LnwIDAQAB';
    var privateKey = 'MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCeHqvTWvPO3NzQsOZj0KKjwQuOdHOXVLE8RUs7EFLTZjbFGefmgxECGFSFMEjoekwvWkreWYnf2FNoU51pKHQQRVsmU1JFot8GDxx+/BvS5iXaRAA8ARt3f+c0468oGnvR86Qnb6MKLL4C4XzGhAPdiO3g4TtNhUZGUm54uOi+5/iY2OxuPPLZnbn1FObz7rTns5EQWCVyLXuKoDwNPXj25Lk+i+6VkgT0xZBV3n80kPGyHlLrScAY7skEmF7No1WylXXdmwlMF/h93PKDNqSDsX+GT88Y5HITwSRa2WMteiLZv8Y+W6Wh3L3cIfSy53mReYPshAw7XcUkaY0g70ufAgMBAAECggEAYmiMYBp3KwPimi++89hhoLEA1EQ9vK2FMRGfZL8gDVnMNJeO8LQZ3cfusoX+mlGjIMV9Wy021g34uzFvAoee1JGVzSCGT7iyPT8iaRXW60c5v8Iasz2tLo54Az7BQKBa96w/OhwMyMRX7csQsSxwi2wxQIhtNC4CMroS7yeGE2moB3M83nxQzNpXvi10BALzYAeERJa+WwC6opb2X9kPdBi5M2JEE/EZlGiWHKxsP/f7wTuiFu8gHUrgaMEeKXi8p2EULrnax5hjWYGtHZ+zkSJ33P3CBNGeWT/tP/n8yPdx7O/iFd7YRvzcnd62KV5U7HV3gp6JiNVD1ifuVjTO4QKBgQDhk69W2rEOHd6HOA9+PrLUS/6rx3mDAEDkxDz1BaOpfFyPHqU039LUET9LmTvIQ7csGz/STuRcDIRhiI/zWUCLuHeoc3yovg8JU0A3b+jKKpO4IO5bC7J3TKo8qStCDqvS+zSNeyeJlrKQpdovGPLnpdeXKJOSUqQynNJA/r3N/QKBgQCzcfLnFTVieqdk/wQKIGpZ8vrjQB00MjZdD9YUGScu+O/EOJVP2gRL8WTppX9irz+tLeHSD9koa6WXlrxII+E04AvN99N0AJ8L0zBPIGEAOhktp19moQsYteDDF0lgZH9DECp4uFon6C+NOR8Z1F9hEqgNAA3Sz7PLPxaHUZkEywKBgGx7Fn6Ba1ZrnOGQXzsKMfwQk+fOZSxPyeV6TgpTbPKMAQM+7Jox7XTY2oSjq3FSx1spu5aLJBz0VBGHmBqiWH0Y+EqFR3Tq+dY1OBOw+NWIhkOtapNUW74tm0zS2h/JaG5tKkfD6y6qzzLq37N4nxAx3C0wcU+T+KzyZ9aj62mNAoGAQMFkKKPsqecdNUMZ0BW2i1M12oAuicF9AMRQOtyA2WCYFbVdnH1Og6FPC0nf2FrpnbMrBMUXVpDSJwwMUfQwtwYK/H7sXbZDrt69VjCXEJ/mqiT2NnDzMi2gOIbUweZCTo8s5HeSgUg2sL3mTUnoSX2UC2zzkBnIBhZ0KMz3bVUCgYEAw3yEfr9rtP5zjkzX0EjJ3pUUVqKh+30JsGkQ5vK7j59gCt6Ay6tZUzVm38MJEMsDDajbVeT3KLRaOGWuJWVzgToOvd5Khbm4D/J3RqpX5AcmO8by0ksdWUGQx7P2ogqgNDSyzyaXZ3B6B6q7mPAtI/DaoWOYbH/3wMENXgV4krU=';
    var publicKey1 = 'MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAObuiXi4MKntcDE1Kv3InL7+PZdVrQ2euXE4GTw+0LSZZC75/xbMPgR2DjCw0XqW95JXYQQY7jqjh9/5fMq0Ky0CAwEAAQ==';
    var privateKey1 = 'MIIBVAIBADANBgkqhkiG9w0BAQEFAASCAT4wggE6AgEAAkEA5u6JeLgwqe1wMTUq/cicvv49l1WtDZ65cTgZPD7QtJlkLvn/Fsw+BHYOMLDRepb3kldhBBjuOqOH3/l8yrQrLQIDAQABAkBjZWhmPWE0wq33gBrxANf2nReFe6rwodDPmoXCGIdcM5hD39XNYEFKztWyxwgCJeWVvSKp8XZ5Q654N5mjrc1BAiEA95p3mb1KnAje+IYDXUrpy/QFzsjydRQmiuvAI1DGWo8CIQDuw1Z0nyaZmwa+hyGqs2Xy4dCyQfAETnkkfM8KhsjsgwIgL5ekR4vH7IgT+6cevG7q04YbG60qVXDDG87GxsL+7WcCIEgOB09WoE2G7XgeS9i6HzA3WcYSBB8ol4Kdb9YbaxOFAiEA9V64LQ4fpwQAJRPFMhSa04vyNGQjkXxxFdRU1o+8h+s=';
    var key = await RSA.generate(2048);
    print('NPD: publicKey ${key.publicKey}');
    print('NPD: privateKey ${key.privateKey}');

    var finalPublicKey = '-----BEGIN PUBLIC KEY-----\n' + publicKey + '\n-----END PUBLIC KEY-----';
    var finalPrivateKey = '-----BEGIN RSA PRIVATE KEY-----\n' + privateKey + '\n-----END RSA PRIVATE KEY-----';
    var result1 = await RSA.encryptPKCS1v15(message, finalPublicKey);
    print('NPD: encrypted text: $result1');
    var result2 = await RSA.decryptPKCS1v15(result1, finalPrivateKey);
    print('NPD: DEcrypted text: $result2');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
