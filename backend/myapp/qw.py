a=[1,2,3,4,5]
z=0
for i in a:
    z=z+i
print(z)


b=[10,2,234,12,667,23,9,465]
for i in range(len(b)):
    for j in range(i+1,len(b)):
        if b[i]>b[j]:
            b[i],b[j]=b[j],b[i]

print(b)

a=27
for i in range(2,23):
    if a%i==0:
        break
else:
    print(a,"prime number")
    

for i in range(2,100):
    for j in range(2,i):
        if i%j==0:
            break
    else:
        print(i,"prime number")


a=5
zz=1
for i in range(a,0,-1):
    zz=zz*i
print(zz)



a="NITIN"

if a[::-1] ==a:
    print("number is palindrome")


a=0
b=1
print(a)
print(b)
for i in range(0,5):
    c=a+b
    a=b
    b=c
    print(c)

arr=[1,2,23,11,35,24,67,13]
z=max(arr)
print(z)








