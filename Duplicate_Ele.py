def Duplicate_Ele(arr):
    l=[]
    for i in range(0,len(arr)):
        for j in range(0,len(arr)):
            if (arr[i]==arr[j]):
                l.append(arr[j])
    print(l)
arr=list(map(int,input("Enter elements :").split()))
Duplicate_Ele(arr)
