
class CalculaorProsess{
  String num1;
  String num2;
  String operator;
  CalculaorProsess(this.num1,this.num2,this.operator);

int calculation(){
   if(num1.isEmpty || num2.isEmpty){
      return 0;
    }

 int fristnum = int.parse(num1);
 int sacandnum = int.parse(num2);
 int finalresult =0;
 switch(operator){
  case "+":
  return finalresult= fristnum+sacandnum;
  case "-":
  return finalresult= fristnum-sacandnum;
  case "*":
  return finalresult= fristnum*sacandnum;
  case "/":
  return finalresult= fristnum~/sacandnum;
  case "^":
  return finalresult= fristnum*(fristnum*sacandnum);
  case "%":
  return finalresult= fristnum~/100 ;
  default:
  return 0;

 }

} 

}