int a = 5, b = 3, c = 10, result = 11;
if (a < c) {
  if (a < b) {
    if (a % 2 == 0) {
      result = result + 2;
    } else {
      result = result - 2;
    }
  } 
  else {
    if (a % 2 != 0) {
      result = result + 1;
    } else {
      result = result - 1;
    }
  }
  println(result);
}

// My initial answer would be 12
