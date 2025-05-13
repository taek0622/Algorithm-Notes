//
//  9935.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/14/23.
//

//  문제 링크: https://www.acmicpc.net/problem/9935
//  알고리즘 분류: 자료 구조, 문자열, 스택

import Shared

public struct BOJ9935: Solvable {
    public init() {}

    public func run() {
        // 메모리: 94712KB, 시간: 340ms, 코드 길이: 383B
        let sentence = readLine()!
        let explosion = readLine()!
        let expCount = explosion.count
        var stack = [Character]()

        for char in sentence {
            stack.append(char)
            let count = stack.count

            if count >= expCount && char == explosion.last! && String(stack[(count-expCount)...]) == explosion {
                stack.removeLast(expCount)
            }
        }

        print(stack.isEmpty ? "FRULA" : String(stack))
    }
}
