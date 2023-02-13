def Palindrome(str):
    rev=""
    for i in str:
        rev=i+rev
    if (str==rev):
        print(str,"is a palindrome")
    else:
         print(str,"is not palindrome")
str=input()
Palindrome(str)




        
