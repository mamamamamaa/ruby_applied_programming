# Ruby Programming Tasks Repository

This repository contains a collection of Ruby programming tasks, each represented as a separate branch. You can find the details and solutions for each task in their respective branches.

## Task Branches

1. **Task 1** - Branch: [task-1](https://github.com/mamamamamaa/ruby_applied_programming/tree/task-1)
    - Description: 
   ```
    Зробити невелику скрипт гру "кам'яні ножиці папір".
    На вхід передаємо предмет у вигляді аргументу командного рядка
    На виході результат

    EX:
    input --> ruby game.rb Stone Paper
    output --> You lose
   ```
2. **Task 2** - Branch: [task-2](https://github.com/mamamamamaa/ruby_applied_programming/tree/task-2)
    - Description: 
   ```
    Зробити невеликий скрипт 
    На вхід передаємо математичний вираз у звичному нам вигляді
    На виході бачимо його у RPN

    EX: 
    input --> 2 + 1 × 4
    output --> 2 1 4 * +
   ```
3. **Task 3** - Branch: [task-3](https://github.com/mamamamamaa/ruby_applied_programming/tree/task-3)
   - Description:
   ```
    Надати приклад паттерну Prototype
   ```
4. **Task 4** - Branch: [task-4](https://github.com/mamamamamaa/ruby_applied_programming/tree/task-4)
   - Description:
   ```
    Написати програму яка приймає на вхід "пиріг з родзинками"
    cake = 
      ........
      ..o.....
      ...o....
      ........
    // o це родзинка
    Нам потрібно рівно розрізати пиріг на n маленьких прямокутних шматочків так, щоб у кожному маленькому пирізі була 1 родзинка. n не є аргументом, ця кількість родзинок усередині торта
    cake = 
      ........
      ..o.....
      ...o....
      ........
 
    Результат ось такий масив
      [
         ........
         ..o.....
      ,
         ...o....
         ........
      ]
    Кількість родзинок завжди більше 1 та менше 10.
    Якщо рішень кілька, виберіть те, що має найбільшу ширину першого елемента масиву.
    Поступово розрізати на n частин, що означає однакову площу. Але їхня форма може бути різною.
    Кожен шматок торта має бути прямокутним.
   ```
5. **Task 5** - Branch: [task-5](https://github.com/mamamamamaa/ruby_applied_programming/tree/task-5)
   - Description:
   ```
    Треба написати програму, яка перетворює римську цифру в ціле число та навпаки.

    Сучасні римські цифри записуються, виражаючи кожну цифру окремо, починаючи з крайньої лівої цифри та пропускаючи будь-яку цифру зі значенням нуль. Римськими цифрами 1990 позначається: 1000=M, 900=CM, 90=XC; в результаті MCMXC. 2008       записується як 2000=MM, 8=VIII; або MMVIII. 1666 використовує кожен римський символ у порядку спадання: MDCLXVI.

    Діапазон введення: 1 <= n < 4000
    4 має бути представлено як IV.
   ```
6. **Task 6** - Branch: [task-6](https://github.com/mamamamamaa/ruby_applied_programming/tree/task-6)
   - Description:
   ```
    Реалізуйте метод, який повертатиме true, якщо заданий аргумент строки є IPv4-адресою - чотири числа (0-255), розділені крапками.
    Він повинен приймати лише адреси в канонічному представленні, тобто без ведучих нулів, пропусків тощо.
   ```
7. **KR 1** - Branch: [kr1](https://github.com/mamamamamaa/ruby_applied_programming/tree/kr1)
   - Description:
   ```
    3. Напишіть програму, яка приймає список чисел і сортує їх у порядку зростання або спадання за вибором користувача. 
    4. Напишіть програму, яка генерує випадковий пароль заданої довжини для користувача.
   ```
8. **Task 7** - Branch: [task-7](https://github.com/mamamamamaa/ruby_applied_programming/tree/task-7)
   - Description:
   ```
    За допомогою гему nokogiri спарсити назви шпиталів у csv файл
   ```
9. **KR 2** - Branch: [kr2](https://github.com/mamamamamaa/ruby_applied_programming/tree/kr2)
   - Description:
   ```
    3. Напишіть програму, у якій два потоки виводять числа від 1 до 10. Організуйте синхронізацію, щоб числа виводилися по черзі: спочатку першого потоку, потім із другого, тощо.
   ```
10. **EXAM** - Branch: [exam](https://github.com/mamamamamaa/ruby_applied_programming/tree/exam)

## Getting Started

To work on a specific task, follow these steps:

1. Clone this repository:
   ```sh
   git clone https://github.com/mamamamamaa/ruby_applied_programming.git

2. Checkout the branch corresponding to the task you want to work on:
   ```sh
    git checkout <branch-name> 
