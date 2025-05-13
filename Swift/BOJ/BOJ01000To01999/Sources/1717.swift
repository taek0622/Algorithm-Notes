//
//  1717.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/15/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1717
//  알고리즘 분류: 자료 구조, 분리 집합

import Shared

public struct BOJ1717: Solvable {
    public init() {}

    public func run() {
        // 메모리: 81248KB, 시간: 184ms, 코드 길이: 732B
        let nm = readLine()!.split(separator: " ").map { Int($0)! }
        var setArray = Array(0...nm[0])
        var result = ""

        for _ in 0..<nm[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            if input[0] == 0 {
                union((input[1], input[2]))
                continue
            }

            result += (find(input[1]) == find(input[2]) ? "YES\n" : "NO\n")
        }

        print(result)

        func find(_ number: Int) -> Int {
            if setArray[number] != number {
                setArray[number] = find(setArray[number])
            }

            return setArray[number]
        }

        func union(_ numbers: (Int, Int)) {
            let base = find(numbers.0)
            let target = find(numbers.1)

            if base < target {
                setArray[target] = base
                return
            }

            setArray[base] = target
        }
    }
}
