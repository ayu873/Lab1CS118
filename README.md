# ARM Assembly Lab 1: Program Structure and Output

## Why this lab matters

Welcome to your first ARM Assembly lab! In this lab, you’ll learn how to structure an ARM Assembly program correctly and use both `printf` and Linux system calls to display text output. You’ll gain hands-on practice with:

- Defining `.text` and `.data` sections  
- Writing structured code using a template  
- Printing strings using `printf` or system calls  
- Compiling and linking your assembly programs  
- Creating and using `Makefile` for automation

By the end of this lab, you’ll have the tools and confidence to start writing real programs in ARM Assembly. This foundation will support everything you do in this course and beyond.

---

## Style and Documentation Expectations

- Use the provided `template.s` structure, with proper stack setup and return.  
- Each file should include **header comments** with program name, author, date, and purpose.  
- Use consistent **indentation and inline comments** for clarity.  
- Keep code clean and easy to read, with each instruction on a separate line.  
- Use `.asciz` for null-terminated strings and descriptive labels in the `.data` section.  
- **Include a comment on nearly every line of assembly code.** Assembly is cryptic and low-level—well-written comments will help you (and others) understand what each instruction is doing, and are essential for debugging and grading.

---

## Rubric (100 points total)

Each of the first four exercises is worth 20 points. The remaining 20 points are awarded for clean, well-documented code that follows best practices.

| Points | Requirements                                  |
|--------|-----------------------------------------------|
| 20     | Hello World with printf                       |
| 20     | Hello World with system calls                 |
| 20     | Course and Personal Info Output               |
| 20     | ASCII Art Output                              |
| 20     | Coding style, documentation, structure        |

---

## Lab Exercises

### ✅ 1) Hello World with `printf`

**File(s):** `HelloWorldMain.s`, `Makefile`  
**Executable:** `helloWorld`

**Instructions:**

Write your first ARM Assembly program that prints a message using `printf`.

1. Create `HelloWorldMain.s` with:
   - Header comment block  
   - `.text` section with `.global main` and `main:` label  
   - Stack setup and teardown  
   - Load the address of a string and call `printf`

2. In the `.data` section, define:
   ```assembly
   helloWorld: .asciz "Hello, World!\n"
   ```

3. Create a `Makefile` to assemble, link, and clean.

**Output:**
```text
Hello, World!
```

---

### 💻 2) Hello World Using Linux System Calls

**File:** `helloWorldSys.s`  
**Executable:** `helloWorldSys`

**Instructions:**

Write a program that prints "Hello, World!" using Linux **system calls** (not `printf`).

Use `main:` as the entry point and set up:
- `write` syscall (r7 = 4)
- Output string
- Followed by an `exit` syscall (r7 = 1)

➡️ **Don’t forget to update your `Makefile` to build `helloWorldSys`.**  
💾 **Commit your work (`git add`, `git commit`, `git push`) before moving on to the next exercise.**

---

### 🧾 3) Course and Personal Information Output

**File:** `courseInfo.s`  
**Executable:** `courseInfo`  
**Note:** Add `courseInfo` to your `Makefile`.

**Instructions:**

Print your course and personal details.  
You may use either `printf` or Linux system calls.

**Include:**
- Course name and time  
- Final exam details  
- Professor’s name and office  
- Your name and college year  
- At least two past CS courses

**Example:**
```text
Course Name: Introduction to Assembly Programming
Course Time: Tuesdays and Thursdays 12:00 PM - 1:30 PM
Final Exam: May 21st, 12:00 PM - 2:00 PM

Professor's Name: Paul Raupach
Office Number: Room 215B
Office Hours: Wednesdays 2:00 PM - 4:00 PM

Student's Name: John Doe
Year in College: Sophomore

Past Computer Science Courses:
1. Introduction to Programming in C++, Ohlone College, Professor Paul Raupach
2. Data Structures, Ohlone College, Professor Paul Raupach
```

➡️ **Be sure to add `courseInfo` to your `Makefile` so you can compile and run it easily.**  
💾 **Commit your work before moving on to the next exercise.**

---

### 🎨 4) Create Your Own ASCII Art

**File:** `asciiArt.s`  
**Executable:** `asciiArt`

**Goal:** Display a creative ASCII art piece using ARM Assembly output only.

**Instructions:**

In this exercise, you’ll build a short visual design using **only string output** in ARM Assembly. It’s a chance to be expressive and have fun while reinforcing proper structure and section usage.

1. In the `.data` section:
   - Define each line of your ASCII art as a `.asciz` string  
   - You should include **at least 5 lines** of output  
2. In the `.text` section:
   - Load and print each line using `printf` or Linux system calls  
   - Add comments on every line to describe what’s happening  
3. Keep your art appropriate, respectful, and if you copy art from another source be sure to credit that source.

> 💡 Need inspiration? Browse [asciiart.eu](https://www.asciiart.eu/) for hundreds of fun examples—but be sure to cite or adapt if you borrow a design!

➡️ **Update your `Makefile` with a rule to build `asciiArt`.**  
💾 **Commit your work before turning it in.**

---

**Example ASCII Art Designs**

💻 *Stylized laptop with angled keyboard*:
```text
 ______________
||            ||
||            ||
||            ||
||            ||
||____________||
|______________|
 \\############\\
  \\############\\
   \      ____    \   
    \_____\___\____\CA15
```

🐘 *Small elephant*:
```text
       _.-- ,.--.
     .'   .'     /
     | @       |'..--------._
    /      \\._/              '.
   /  .-.-                     \\
  (  /    \\                     \\
  \\      '.                  | #
   \\       \\   -.           /
    :\\       |    )._____.'   \\
     "       |   /  \\  |  \\    )
             |   |./'  :__ \\.-'
             '--'
```

🐉 *Mini dragon head*:
```text
           ______________
     ,===:'.,            `-._
          `:.`---.__         `-._
            `:.     `--.         `.
              \.        `.         `.
      (,,(,    \.         `.   ____,-`.,
   (,'     `/   \.   ,--.___`.'
,  ,'  ,--.  `,   \.;'         `
 `{D, {    \  :    \;
   V,,'    /  /    //
   j;;    /  ,' ,-//.    ,---.      ,
   \;'   /  ,' /  _  \  /  _  \   ,'/
         \   `'  / \\  `'  / \\  `.' /
          `.___,'   `.__,'   `.__,'  
```

🕹 *Retro game controller*:
```text
   __________
  / ________ \\
 | | ______ | |
 | ||XXXXXX|| |
 | ||XXXXXX|| |
 | |--------| |
 |  ________  |
 | |   ||   | |
 | |___||___| |
 \___________/
```

🐱 *Cute animal face (simplest example)*:
```text
 /\\_/\\ 
( o.o )
 > ^ <
```

---

### 🧩 5) Generate Assembly from a C Program

**Files:** `helloWorld.c`, `helloWorldFromC.s`  
**Goal:** Observe what assembly code the compiler produces from a simple C program.

**Instructions:**

1. Write the following C program in a file called `helloWorld.c`:

   ```c
   #include <stdio.h>

   int main() {
       printf("Hello, World!\\n");
       return 0;
   }
   ```

2. Use `gcc` to compile the C program **to assembly** (not to an executable):

   ```bash
   gcc -S helloWorld.c -o helloWorldFromC.s
   ```

   This generates an ARM Assembly file named `helloWorldFromC.s`.

3. Open and read the contents of `helloWorldFromC.s`.  
   You are not required to understand every line, but you should:

   - Skim the **.text** and **.data** sections  
   - Notice how the call to `printf` is handled  

4. Include both `helloWorld.c` and `helloWorldFromC.s` in your repository.

📝 **You do not need to edit or run `helloWorldFromC.s`. This is purely for exploration.**

➡️ **Commit both files and push them to your GitHub repository before submitting.**

---

## Compiling and Running

Your `Makefile` should include a `make all` rule to build all programs at once.

```bash
make all            # Builds all programs
./helloWorld
./helloWorldSys
./courseInfo
./asciiArt

make clean          # Removes .o and executable files
```

---

## Turning It In

Commit and push all your work to GitHub.  
Submit the **GitHub repository URL** to the Canvas assignment.

> 💡 **Tip:** If you don’t submit the link, we won’t know it’s done.

---
