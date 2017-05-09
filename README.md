## NAMES_SCORES CODE EXERCISE

This repository contains solution to names_scores code exercise.  
The main code path is names_scores/lib/names_scores.rb  
The file to run the code is names_scores/lib/run_names_scores.rb  
The test code path is names_scores/spec/names_scores_spec.rb  
[names_scores_exercise](https://projecteuler.net/problem=22)

### Task
```
Using names.txt (right click and 'Save Link/Target As...'), a 46K text
file containing over five-thousand first names, begin by sorting it into
alphabetical order. Then working out the alphabetical value for each
name, multiply this value by its alphabetical position in the list to
obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN,
which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list.
So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?
```

### Setup
```
$ git clone https://github.com/BasileKoko/names_scores.git
$ cd names_scores
```
### To run program
```
$ ruby lib/run_names_scores.rb
```
### To run test

```
$ rspec
```
