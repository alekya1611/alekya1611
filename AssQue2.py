arr=list(map(int,input("Enter elements :").split()))
a=[]
for i in arr:
    if i not in a:
        a.append(i)
print("Unique Elements :",a)
for i in range(0,len(a)):
    key=a[i]
    j=i-1
    while j>=0 and a[j]>key :
        a[j+1]=a[j]
        j=j-1
        a[j+1]=key
print("Sorted Elements :",a)
