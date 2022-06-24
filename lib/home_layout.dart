import 'package:flutter/material.dart';
import 'package:quizzler/quiz_model.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Icon>result=[];
  List <Icon>emptyList=[];
  int index=0;
  List<QuizModel> questionBank = [
    QuizModel('Some cats are actually allergic to humans', true),
    QuizModel('You can lead a cow down stairs but not up stairs.', false),
    QuizModel('Approximately one quarter of human bones are in the feet.', true),
    QuizModel('A slug\'s blood is green.', true),
    QuizModel('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    QuizModel('It is illegal to pee in the Ocean in Portugal.', true),
    QuizModel(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    QuizModel(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    QuizModel(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    QuizModel(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    QuizModel('Google was originally called \"Backrub\".', true),
    QuizModel(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    QuizModel(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    questionBank[index].questions!,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: RaisedButton(
                  color: Colors.green,
                  onPressed: () {
                    setState(() {

                      if(questionBank[index].answers==true){
                       result.add( Icon(
                         Icons.check,
                         color: Colors.green,
                       ));
                      }else{
                        result.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ),);
                      }
                      if(index<questionBank.length-1){
                        index++;
                      }
                      else{
                        index=0;
                        result=[];
                      }
                    });

                  },
                  child: Text(
                    'True',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      if(questionBank[index].answers==false){
                        result.add( Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                      }else{
                        result.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ),);
                      }
                      if(index<questionBank.length-1){
                        index++;
                      }
                      else{
                        index=0;
                        result=[];

                      }
                    });

                  },
                  child: Text(
                    'False',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: result

              )
            ],
          ),
        ),
      ),
    );
  }
}
