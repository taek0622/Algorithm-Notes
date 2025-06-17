//
//  3425.swift
//  BOJ03000To03999
//
//  Created by 김민택 on 6/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/3425
//  알고리즘 분류: 구현, 자료 구조, 스택

import Shared

public struct BOJ3425: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 92ms, 코드 길이: 3529B
        var operations = [String]()

        while let input = readLine(), input != "QUIT" {
            if input != "END" {
                operations.append(input)
                continue
            }

            let N = Int(readLine()!)!

            for _ in 0..<N {
                var stack = [Int(readLine()!)!]
                var isError = false

                for operation in operations where !isError {
                    let op = operation.split(separator: " ")

                    switch op[0] {
                        case "NUM":
                            stack.append(Int(op[1])!)
                        case "POP":
                            if stack.isEmpty {
                                isError = true
                                break
                            }

                            stack.removeLast()
                        case "INV":
                            if stack.isEmpty {
                                isError = true
                                break
                            }

                            stack.append(stack.removeLast() * -1)
                        case "DUP":
                            if stack.isEmpty {
                                isError = true
                                break
                            }

                            stack.append(stack.last!)
                        case "SWP":
                            if stack.count < 2 {
                                isError = true
                                break
                            }

                            stack.swapAt(stack.count-2, stack.count-1)
                        case "ADD":
                            if stack.count < 2 {
                                isError = true
                                break
                            }

                            let num1 = stack.removeLast()
                            let num2 = stack.removeLast()

                            if num1 + num2 > 1000000000 || num1 + num2 < -1000000000 {
                                isError = true
                                break
                            }

                            stack.append(num1 + num2)
                        case "SUB":
                            if stack.count < 2 {
                                isError = true
                                break
                            }

                            let num1 = stack.removeLast()
                            let num2 = stack.removeLast()

                            if num2 - num1 > 1000000000 || num2 - num1 < -1000000000 {
                                isError = true
                                break
                            }

                            stack.append(num2 - num1)
                        case "MUL":
                            if stack.count < 2 {
                                isError = true
                                break
                            }

                            let num1 = stack.removeLast()
                            let num2 = stack.removeLast()

                            if num1 * num2 > 1000000000 || num1 * num2 < -1000000000 {
                                isError = true
                                break
                            }

                            stack.append(num1 * num2)
                        case "DIV":
                            if stack.count < 2 {
                                isError = true
                                break
                            }

                            let num1 = stack.removeLast()
                            let num2 = stack.removeLast()

                            if num1 == 0 {
                                isError = true
                                break
                            }

                            stack.append(num2/num1)
                        case "MOD":
                            if stack.count < 2 {
                                isError = true
                                break
                            }

                            let num1 = stack.removeLast()
                            let num2 = stack.removeLast()

                            if num1 == 0 {
                                isError = true
                                break
                            }

                            stack.append(num2%num1)
                        default:
                            break
                    }
                }

                print(isError || stack.count != 1 ? "ERROR" : stack.first!)
            }

            operations = []
            _ = readLine()
            print()
        }
    }
}
