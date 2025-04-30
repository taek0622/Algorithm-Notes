//
//  4949.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/23.
//

// 문제: https://www.acmicpc.net/problem/4949

class BOJ4949: Solvable {
    func run() {
        solution1()
    }

    // 메모리: 69096KB, 시간: 32ms, 코드 길이: 395B
    private func solution1() {
        while let sentence = readLine(), sentence != "." {
            var stack = [Character]()

            for char in sentence {
                if (stack.last == "(" && char == ")") || (stack.last == "[" && char == "]") {
                    stack.removeLast()
                } else if char == "(" || char == ")" || char == "[" || char == "]" {
                    stack.append(char)
                }
            }

            print(stack.count == 0 ? "yes" : "no")
        }
    }

    // 메모리: 69096KB, 시간: 32ms, 코드 길이: 398B
    private func solution2() {
        while let sentence = readLine(), sentence != "." {
            var stack = [Character]()

            for char in sentence where char == "(" || char == ")" || char == "[" || char == "]" {
                if (stack.last == "(" && char == ")") || (stack.last == "[" && char == "]") {
                    stack.removeLast()
                } else {
                    stack.append(char)
                }
            }

            print(stack.count == 0 ? "yes" : "no")
        }
    }

    // 메모리: 69096KB, 시간: 52ms, 코드 길이: 397B
    private func solution3() {
        while let sentence = readLine(), sentence != "." {
            let paranthesis = "()[]"
            var stack = [Character]()

            for char in sentence where paranthesis.contains(char) {
                if (stack.last == "(" && char == ")") || (stack.last == "[" && char == "]") {
                    stack.removeLast()
                } else {
                    stack.append(char)
                }
            }

            print(stack.count == 0 ? "yes" : "no")
        }
    }
}
