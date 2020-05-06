n = ARGV[0].to_i;
m = ARGV[1].to_i;

ARGV.clear();
num = 0;
arr = [];
for i in (0..n-1)
    row = [];
    for j in (0..m-1)
        row.push(gets.chomp.to_i);
    end
    arr.push(row);
end

min_row = 0;
min_col = 0;

max_row = n-1;
max_col = m-1;

while(num < n*m)
    if(num < n*m)
        for i in (min_row..max_row)
            puts(arr[i][min_col]);
            num = num + 1; 
        end
        min_col = min_col+1;
    end

    if(num < n*m)
        for i in (min_col..max_col)
            puts(arr[max_row][i]);
            num = num + 1;
        end
        max_row = max_row - 1;
    end

    if(num < n*m)
        for i in (max_row).downto(min_row)
            puts(arr[i][max_col]);
            num = num+1;
        end
        max_col = max_col - 1;
    end

    if(num < n*m)
        for i in (max_col).downto(min_col)
            puts(arr[min_row][i])
            num = num + 1;
        end
        min_row = min_row + 1;
    end
end
