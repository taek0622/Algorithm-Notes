//
//  PGM12909.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/17/24.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/12909
//  알고리즘 분류: 스택/큐

import Foundation

import Shared

class PGM12909: Solvable {
    public init() {}

    public func run() {
        print(solution2("()()"))
        print(solution2("(())()"))
        print(solution2(")()("))
        print(solution2("(()("))
    }

    func solution1(_ s: String) -> Bool {
        var ans: Bool = true
        var frontStack = Array(s)
        var backStack = [Character]()

        while !frontStack.isEmpty {
            let current = frontStack.removeLast()

            if current == ")" {
                backStack.append(current)
            } else {
                if !backStack.isEmpty {
                    backStack.removeLast()
                } else {
                    ans = false
                    break
                }
            }
        }

        if !backStack.isEmpty {
            ans = false
        }

        return ans
    }

    func solution2(_ s: String) -> Bool {
        var count = 0

        for ch in s {
            switch ch {
            case "(":
                count += 1
            case ")":
                count -= 1
            default:
                break
            }

            if count < 0 {
                return false
            }
        }

        return count == 0
    }
}
