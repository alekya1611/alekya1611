def Rotate_Array(arr,n):
    o=[]
    for i in range(0,n):
        l=arr[len(arr)-1]
        for j in range(len(arr)-1,-1,-1):
            arr[j]=arr[j-1]
        arr[0]=l
    for i in range(0,len(arr)):
        o.append(arr[i])
    print(o)

arr=list(map(int,input("Enter elements :").split()))
n=int(input())
Rotate_Array(arr,n)