 # CS 224 Project 1 - Markov Words
 
 The idea of this project is to use a squence of N elements to provide a likely N+1 element. This project is constructed by a pari of bash scripts that are used to generate gibberish sentences using this technique.
 
 ## Usage
 
 Begin with a text file, the longer it is, the more unique the generated sentences will become.
 
 Use this to convert the text file to the proper format.
 ```
 $ ./markov-words.sh < [input.txt] > [output.txt]
 ```
 
 Once converted, you may now use the markov-sentences.sh to complete the process.
 ```
 $ ./markov-sentence.sh [output.txt] [numberOfLines]
 ```
 
 Do keep in mind, the numberOfLines must be greater than 0.
 
 
