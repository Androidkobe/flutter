import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class TextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Page'),
        backgroundColor: Colors.red,
      ),
      body: renderInteractionArea(),
    );
  }

  Widget renderInteractionArea() {
    return new Container(
        margin: EdgeInsets.fromLTRB(70, 20, 70, 0),
        alignment: Alignment.topCenter,
        child: new TextFieldWidget());
  }
}

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: TextFieldController(),
        ),
        TextFieldOther(),
        TextFieldPlaceHolder(),
      ],
    );
  }
}

///输入框 监视器
class TextFieldController extends StatelessWidget {
  var inputStr = "";
  var textInput = new TextInput();

  Widget buildTextField(TextEditingController controller) {
    return TextField(
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    controller.addListener(() {
      inputStr = controller.text;
      textInput.textFileInput.changeText(inputStr);
    });
    return Column(
      children: <Widget>[textInput, buildTextField(controller)],
    );
  }
}

class TextInput extends StatefulWidget {
  var textFileInput = new TextFileInputShow();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return textFileInput;
  }
}

class TextFileInputShow extends State<StatefulWidget> {
  var str = "";

  @override
  Widget build(BuildContext context) {
    return Text(
      "input : $str",
      style: TextStyle(
          color: Colors.red, fontSize: 14, decoration: TextDecoration.none),
    );
  }

  changeText(var s) {
    setState(() {
      str = s;
    });
  }
}

///限制输入类型
class TextFieldOther extends StatelessWidget {
  Widget buildTextField(TextEditingController controller) {
    return TextField(
      controller: controller,
      maxLength: 30,
      //最大长度，设置此项会让TextField右下角有一个输入数量的统计字符串
      maxLines: 1,
      //最大行数
      autocorrect: true,
      //是否自动更正
      autofocus: true,
      //是否自动对焦
      obscureText: true,
      //是否是密码
      textAlign: TextAlign.center,
      //文本对齐方式
      style: TextStyle(fontSize: 30.0, color: Colors.blue),
      //输入文本的样式
      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
      //允许的输入格式
      onChanged: (text) {
        //内容改变的回调
        print('change $text');
      },
      onSubmitted: (text) {
        //内容提交(按回车)的回调
        print('submit $text');
      },
      enabled: true, //是否禁用
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    controller.addListener(() {
      print('input ${controller.text}');
    });
    return buildTextField(controller);
  }
}

class TextFieldPlaceHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
              fillColor: Colors.blue.shade100,
              filled: true,
              labelText: 'Hello'),
        ),
        TextField(
          decoration: InputDecoration(
              fillColor: Colors.blue.shade100,
              filled: true,
              hintText: 'Hello',
              errorText: 'error'),
        ),
        TextField(
          decoration: InputDecoration(
              fillColor: Colors.blue.shade100,
              filled: true,
              helperText: 'help',
              prefixIcon: Icon(Icons.local_airport),
              suffixText: 'airport'),
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
//            borderSide: BorderSide(color: Colors.red, width: 3.0, style: BorderStyle.solid)//没什么卵效果
              )),
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
//            borderSide: BorderSide(color: Colors.red, width: 3.0, style: BorderStyle.solid)//没什么卵效果
              )),
        ),
      ],
    );
  }
}
