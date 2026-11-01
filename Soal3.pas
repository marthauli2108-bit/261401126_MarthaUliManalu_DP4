program CekKelilusan;
uses crt;

//METODE: input n (1-10), simpan nilai UAS di array,urutkan pakai bubble sort (naik), lalu tampilkan.

var
    nilai : array[1..10] of real;
    n, i, j : integer;
    temp : real;

begin
    clrscr;
//input jumlah mahasiswa, ulangi kalau di luar 1..10 
    repeat
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);
    if (n < 1) or (n > 10) then
        writeln('Jumlah harus antara 1 sampai 10!');
        until (n >= 1) and (n <= 10);

//input nilai UAS 
    for i := 1 to n do
    begin
        write('Nilai UAS mahasiswa ke-', i, ': ');
        readln(nilai[i]);
    end;

//bubble sort: tukar dua nilai bersebelahan kalau kiri > kanan 
    for i := 1 to n - 1 do
    for j := 1 to n - i do
    if nilai[j] > nilai[j + 1] then
    begin
        temp := nilai[j];
        nilai[j] := nilai[j + 1];
        nilai[j + 1] := temp;
    end;

//tampilkan hasil urut 
    writeln;
    writeln('Nilai UAS terurut dari terendah ke tertinggi:');
    for i := 1 to n do
    writeln(i, '. ', nilai[i]:0:2);

readln;

end.