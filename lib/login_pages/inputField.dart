import 'package:flutter/material.dart';


class InputField extends StatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override

  bool _throwShotAway = false;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
              ),),
            SizedBox(height: 7,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.black12,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: EdgeInsets.only(left: 10),
              ),
            ),
            SizedBox(height: 46,),
            Text('Password',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
              ),),
            SizedBox(height: 7,),
            TextField(
              obscureText: true,
              cursorColor: Colors.black12,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: EdgeInsets.only(left: 10),
              ),
            ),
            SizedBox(height: 22,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                        activeColor: Colors.black,
                        value: _throwShotAway, onChanged: (bool? newValue)
                    {
                      setState(() {
                        _throwShotAway = newValue!;
                      });
                    }
                    ),
                    Text('Remember for 30 days',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF5A5A5A),
                    ),),
                  ],
                ),
                Text('Forget password',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF5A5A5A),
                ),)
              ],
            ),
            SizedBox(height: 22,),
            ElevatedButton(
                onPressed: (){},
                child: Center(
                  child: Text('Sign in',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                      color: Color(0xFFFFEFEF),
                    ),
                  ),
                ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            )
            ),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF929292)
                ),),
                Text(' Sign up for free',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 11,
                  color: Color(0xFF5A5A5A),
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}

