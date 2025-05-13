//
//  2812.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/31/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2812
//  알고리즘 분류: 자료 구조, 그리디 알고리즘, 스택

import Shared

public struct BOJ2812: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 80780KB, 시간: 96ms, 코드 길이: 377B
    private func solution1() {
        var NK = readLine()!.split(separator: " ").map { Int($0)! }
        let number = readLine()!.map { Int(String($0))! }
        var stack = [Int]()

        for idx in 0..<NK[0] {
            while NK[1] > 0 && !stack.isEmpty && stack.last! < number[idx] {
                _ = stack.popLast()
                NK[1] -= 1
            }

            stack.append(number[idx])
        }

        print(stack[0...(stack.count-NK[1]-1)].map { String($0) }.joined())
    }

    // 메모리: 86700KB, 시간: 84ms, 코드 길이: 357B
    private func solution2() {
        var NK = readLine()!.split(separator: " ").map { Int($0)! }
        let numbers = Array(readLine()!)
        var stack = [Character]()

        for number in numbers {
            while NK[1] > 0 && !stack.isEmpty && stack.last! < number {
                _ = stack.popLast()
                NK[1] -= 1
            }

            stack.append(number)
        }

        for _ in 0..<NK[1] {
            stack.removeLast()
        }

        print(String(stack))
    }
}
