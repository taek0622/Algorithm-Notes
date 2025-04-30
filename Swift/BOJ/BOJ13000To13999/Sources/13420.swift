//
//  13420.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13420
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산

class BOJ13420: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 496B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ")
            var (num1, num2, result) = (Int(input[0])!, Int(input[2])!, 0)

            switch input[1] {
                case "+":
                    result = num1 + num2
                case "-":
                    result = num1 - num2
                case "*":
                    result = num1 * num2
                case "/":
                    result = num1 / num2
                default:
                    break
            }

            print(result == Int(input[4])! ? "correct" : "wrong answer")
        }
    }
}
