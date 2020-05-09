num = gets.chomp.to_i;

first = 0;
second = 1;
for i in (0..num-1)
    puts (first);
    third = first + second;
    first = second;
    second = third;
end