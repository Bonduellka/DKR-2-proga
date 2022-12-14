begin
  var a,b:array[1..100] of integer;
    var n,k,j:integer;

randomize;
repeat
print('Введите размер массива от 10 до 100 n=');
readln(n);
until n in [10..100];
print('Массив А');
for var i:=1 to n do
 begin
  a[i]:=random(100);
  write(a[i]:4);
 end;
print;
repeat
print('Введите размер последовательности для поиска от 2 до ',n,' k=');
Readln(k);
until k in [2..n];
writeln('Введите элементы последовательности');
for var i:=1 to k do
readln(b[i]);
var i:=16;
while (i<n)and(a[i]<>b[1]) do inc(i);
if i=n then print('Последовательности в массиве нет')
else
 begin
  j:=i;
  while(j<=k)and(b[j]=a[j]) do inc(j);
  if j>k then print('Последовательность в массиве есть')
  else print('Последовательности в массиве нет')
 end;
end.