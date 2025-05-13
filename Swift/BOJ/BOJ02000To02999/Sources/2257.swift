//
//  2257.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/19.
//

//  문제 링크: https://www.acmicpc.net/problem/2257
//  알고리즘 분류: 자료 구조, 문자열, 스택

import Shared

public struct BOJ2257: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 535B
        let input = readLine()!.map { String($0) }
        var stack = [Int]()

        for element in input {
            switch element {
            case "(":
                stack.append(0)
            case ")":
                var temp = 0

                while stack.last != 0 {
                    temp += stack.popLast()!
                }

                stack.removeLast()

                stack.append(temp)
            case "H":
                stack.append(1)
            case "C":
                stack.append(12)
            case "O":
                stack.append(16)
            default:
                stack.append(stack.popLast()! * Int(element)!)
            }
        }

        print(stack.reduce(0, +))
    }
}
