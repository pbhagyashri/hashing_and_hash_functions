#Objective - Write an efficient method that checks whether any permutaion of an input string is a palindrome

# assume that all given strings are in lowercase

#Examples - 
# 'civic' should return true
# 'ivicc' should return false
# 'civil' should return false
# 'livci' should return false

#Approaches - 
#Checking if every permutation of the string is a plindrom will cause huge time complexity.

#checking if any permutation is a palindrom will significantly lower the time.

#Keep 2 pointers one at the begining of the string and one at the end. move them in towrds the middle of the string and check if characters at both those pointers are same.

#Solution - check that each character apears an even number of times allowing for only one character to apear an odd number of time. The middle character. This is enough to determine if a permutation of the input string is a palindrome.

