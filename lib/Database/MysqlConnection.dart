// ignore_for_file: file_names

import 'package:sqljocky5/connection/connection.dart';
import 'package:sqljocky5/connection/settings.dart';

///建立数据库连接   记得在MySqlConnection conn前面加 late表示之后再进行初始化
///不然当前版本的flutter会报错
MySqlConnection conn;

init() async {
  // ignore: avoid_print
  print('配置数据库链接');
  var setting = ConnectionSettings(
    //用户名
    user: "root",
    //密码
    password: "123",

    ///flutter中电脑本地的ip,必须用这个IP地址，不然会报错 "Socket has been closed"
    host: "192.168.211.1",
    //端口
    port: 3306,
    //需要连接的数据库
    db: "patient",
  );
  //获取数据库连接
  await MySqlConnection.connect(setting).then((_) {
    conn = _;
    // ignore: avoid_print
    print('连接成功');
  });
}
