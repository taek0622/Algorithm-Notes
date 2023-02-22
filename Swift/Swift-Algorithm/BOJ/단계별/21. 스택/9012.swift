//
//  9012.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/30.
//

// 문제: https://www.acmicpc.net/problem/9012

class BOJ9012: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 436B
    private func solution1() {
        let T = Int(readLine()!)!

        testcase: for _ in 0..<T {
            let ps = String(readLine()!)
            var stack = [Character]()

            for char in ps {
                if char == "(" {
                    stack.append("(")
                } else if stack.count > 0 {
                    stack.removeLast()
                } else {
                    print("NO")
                    continue testcase
                }
            }

            if stack.count == 0 {
                print("YES")
            } else {
                print("NO")
            }
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 312B
    private func solution2() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let ps = String(readLine()!)
            var stack = 0

            for char in ps {
                if char == "(" {
                    stack += 1
                } else {
                    stack -= 1
                }

                if stack < 0 {
                    break
                }
            }

            print(stack == 0 ? "YES" : "NO")
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 315B
    private func solution3() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let ps = String(readLine()!)
            var stack = [Character]()
            
            for char in ps {
                if stack.last == "(" && char == ")" {
                    stack.removeLast()
                } else {
                    stack.append(char)
                }
            }

            print(stack.count == 0 ? "YES" : "NO")
        }
    }
}
