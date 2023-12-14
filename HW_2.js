//Сделать функцию, которая при вызове напишет в консоль сумму 2-х переданных в нее чисел
//function f1 (a,b) {
  //  console.log (a+b)
//}
//f1(4,5);
//Сделать функцию, которая вернет в консоль квадрат переданного числа
//function sqr(a) {
    //let result = a * a;
    //return result;
//}
//let result = sqr(11);
//console.log(result)



//Сделать функцию, которая на вход принимает три параметра (Ф.И.О.), а вернет JSON
//{"name":И,
 //"surname":Ф,
 //"middlename":О}
//   function f3(p1,p2,p3) {  
    
//     let result =
//     ({name:p1,
//       surname:p2,
//       middlename:p3})
//     //let result_2 = JSON.stringify(result)
     
//      console.log(JSON.stringify(result,false,4))
    
//      return result
//    }

//    let a = 'И'
//    let b = 'Ф'
//    let c = 'О' 
// let m = f3(a,b,c)


//4 задание
// Вывести в консоль переменную-массив, в которой будут все четные числа
//Переменную возвращает функция,которая на вход принимает массив чисел
//Если четных чисел не нашлось,то функция вернет текст "No even numbers"

// function numb(...mass){
//   let number = []
//   for(let i=0; i<mass.length; i +=1)
//   {
//     if(mass[i]%2==0){number.push(mass[i])
//      };
//   }
//     if(number.length>0){
//     return number;
//     console.log(number)
//   }
//   else{
//     return 'No even numbers'
//   }
//   }
// let m = numb(1,3,5,7)
// console.log(m)

// Задание 5//
// Сделать функцию, которая вернет количество букв "a",в переданном
// в нее слове. Алфавит Eng. Если нет букв 'a', то вернуть текст
// 'No a characters'

// function fun(Q) { 

  // let str = 'Harry';
function fun(str) {
   let count = [...str].filter(x => x === 'a').length;
 if (count >=1) 
 {
  console.log(count);
  return count
 }
 if (count < 1)
 {
  console.log('No a characters')
  return('No a characters')
  
  }
 }
 

let m = fun('Harry')


