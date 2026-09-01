# Day 06 – Linux Fundamentals: Read and Write Text Files

## 1. `touch notes.txt`
- Creates a file `notes.txt`.
- by default permission for the file is 664

## 2. `echo "Hi, Myself Naman Fakirde" > notes.txt`
- Writes the text into a file
- The `>` indicates to overwrite into a file.

## 3. `echo "This is day-06 of DevOps learning" >> notes.txt`
- This Appends the text into a file.
- This does not overwrites but append into a next line.

## 4. ` echo "This lines is written using tee command" | tee -a notes.txt`
- Writes into a file and displays the text.

## 5. `cat notes.txt`
- Displays the content of a file.

## 6. ` head -n 2 notes.txt`
- Displays the top 2 lines from a file.

## 7. `tail -n 2 notes.txt`
- displays the bottom 2 lines from a file.

## Output
![file-operation](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-06/Images/file-operation.png)