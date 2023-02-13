def Max_Frequency(arr):
    Max_count=0
    max_ele=0
    for i in range(0,len(arr)):
        count=0
        for j in range(i+1,len(arr)):
            if (arr[i]==arr[j]):
                count+=1
        if (count > Max_count):
            Max_count=count
            max_ele=arr[i]
    print(max_ele)
arr=list(map(int,input("Enter elements :").split()))
Max_Frequency(arr)
