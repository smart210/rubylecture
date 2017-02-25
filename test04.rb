a = 10
b = 98
c = a+b
d = a*b
e = a/b
f = "카페"
g = "코이"
h = f+g

puts c
puts d
puts e
puts h

x=1
if x>=2
    puts "x is greater than 2"
elsif x<2 and x!=0
    puts "x는 1"
else
    puts "I cant guess the num"
end

puts "-------"

x = 0
if x>0
    if x%2 == 0
        puts "x는 짝수"
    else
        puts "x는 홀수"
    end
elsif x==0
    puts "x=0"
else
    puts "x는 음수"
end

puts "-------"

a= 1;
while a<10 do
    puts a
    a = a+1
end

puts "-------"

a = Array.new(6)
for i in 0 .. a.size
    a[i] =i
    puts a[i]
end


puts "-----------"
def love(love) 
    @love_point = love
    @love_breaking = @love_point * 80
    return @love_breaking
end

a = love(100)
puts a

puts "-------test----"

a = [1,3,4,8,13,17,20]
f = 0

# for i in 0..5
#     d = a[i] - a[i+1]
#     e = d.abs
#     if i ==0
#         f = e
#     else 
#         if f > e
#             f = e
#         end
#     end
# end

i = 0
g = a.length - 1
while i < g do
    d = a[i+1] - a[i]
    if i == 0
        f = d
    else
        if f > d
            f = d
        end
    end
    i = i + 1
end

puts f





