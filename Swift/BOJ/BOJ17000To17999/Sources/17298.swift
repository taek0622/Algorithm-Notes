//
//  17298.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/14/23.
//

//  문제 링크: https://www.acmicpc.net/problem/17298
//  알고리즘 분류: 자료 구조, 스택

import Shared

public struct BOJ17298: Solvable {
    public init() {}

    public func run() {
        // 메모리: 133216KB, 시간: 696ms, 코드 길이: 538B
        _ = Int(readLine()!)!
        var A = readLine()!.split(separator: " ").map { Int(String($0))! }
        A.reverse()
        var stack = [Int]()
        var result = [Int]()

        for num in A {
            while true {
                if stack.isEmpty {
                    result.append(-1)
                    stack.append(num)
                    break
                } else if stack.last! > num {
                    result.append(stack.last!)
                    stack.append(num)
                    break
                } else {
                    stack.removeLast()
                }
            }
        }

        print(result.reversed().map { String($0) }.joined(separator: " "))
    }
}
