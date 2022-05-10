import string 

#original string 
s="""imagine a vast sheet of paper on which straight lines, triangles, squares, pentagons, hexagons, and other figures, instead of remaining fixed in their places, move freely about, on or in the surface, but without the power of rising above or sinking below it, very much like shadows — only hard and with luminous edges — and you will then have a pretty correct notion of my country and countrymen. alas, a few years ago, i should have said "my universe": but now my mind has been opened to higher views of things."""

#converting to lowercase
s=s.lower()

#spliting s into words seperated by space as a list 
#words is a list 
words= s.split()

#creating a list of punctuation from "string" module
punctuation_list=list(string.punctuation)

#creating a string s without punctuation marks
#if any element in s belongs to punctuation_list, then it is  replaced by empty sting.
for element in s:
    if element in punctuation_list:
        s=s.replace(element, "")

#Now, s has no punctuation marks 

#Splitting s into words seperated by space as a list 
words=s.split()

#created Dictionary. dictionary is a (key, value) pair in python.
wordDict={}

#If a word exists as a key in wordDict, then its count increases by 1,
#otherwise, a new key is created with value as 1
for word in words:
    if word in wordDict:
        wordDict[word] += 1
    else:
        wordDict[word] = 1

#Since each key in the wordDict is unique, so, distinct_words = len(wordDict)
distinct_words = len(wordDict)

#printing WordDict, distinct words 
print("Word Dictionary:\n", wordDict)
print("Distinct words in s:", distinct_words)