//
//  15814.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15814
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ15814: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 194B
        var S = readLine()!.map { String($0) }
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let AB = readLine()!.split(separator: " ").map { Int($0)! }
            S.swapAt(AB[0], AB[1])
        }

        print(S.joined())
    }
}
