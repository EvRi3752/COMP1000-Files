int a = 1, result = 0; 
while (a < 9) { 
   result = result + a; 
   a = a + 3;    
}
println(result);
// This will result in 4 | The correct answer is 12

int result2 = 2; 
for (int i = 0; i < 5; i++) { 
   result2 = result2 + 2; 
}

println(result2);
// this will result in 4 | The correct answer is 12

int result3 =3; 
for (int i = 2; i < 10; i+=3) { 
   result3 = result3 + i; 
}

println(result3);

// This will result in 12 | The correct answer was 18
