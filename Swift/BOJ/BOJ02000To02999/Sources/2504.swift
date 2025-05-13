//
//  2504.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/20/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2504
//  알고리즘 분류: 구현, 자료 구조, 스택

import Shared

public struct BOJ2504: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 867B
        let input = readLine()!.map { $0 }
        var stack = [Character]()
        var isWrong = false
        var temp = 1
        var result = 0

        for idx in input.indices {
            if input[idx] == "(" {
                temp *= 2
                stack.append(input[idx])
            } else if input[idx] == "[" {
                temp *= 3
                stack.append(input[idx])
            } else if input[idx] == ")" {
                if stack.isEmpty || stack.last != "(" {
                    isWrong = true
                    break
                }

                if input[idx - 1] == "(" {
                    result += temp
                }

                stack.removeLast()
                temp /= 2
            } else if input[idx] == "]" {
                if stack.isEmpty || stack.last! != "[" {
                    isWrong = true
                    break
                }

                if input[idx - 1] == "[" {
                    result += temp
                }

                stack.removeLast()
                temp /= 3
            }
        }

        print(isWrong || !stack.isEmpty ? 0 : result)
    }
}
