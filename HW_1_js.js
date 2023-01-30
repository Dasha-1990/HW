// JS. HW_1
let item_1 = 5;
console.log(item_1);
let item_2 = 3;
console.log(item_2);
let item_3 = item_1 + item_2;
console.log(item_3);
let item_4 = "Yolochka"
console.log(item_4);
let result1 = item_3 + item_4
console.log("Result =", result1);
console.log(+item_3 * +item_4);
let item_5 = item_3;
console.log(item_5);
let item_6 = 15;
let item_6_type = (typeof(item_6));
console.log(item_6_type);
console.log(typeof('item_6 =='), typeof(item_6), typeof('item_6_type=='), typeof(item_6_type));
let item_7 = String(item_6)
console.log(typeof(item_7));
 let item_7_type = (typeof(item_7));
 console.log(typeof('item_7 =='), typeof('item_7'), typeof('item_7_type =='), typeof('item_7_type'));
let age_1 = 10;
let age_2 = 18;
let age_3 = 60;
let result = age_1 < age_2; 

if (result)  {
    console.log("You don't have access cause your age is" + age_1 + "It's less then", result)

    } 

    else if (age_1 >= age_2 && age_1 < age_3) {
    console.log("Welcome!")

    }

    else if (age_1 > age_3) {
    console.log("Keep calm and look Culture channel")
    } 
else { 
    console.log("Technical work")

}