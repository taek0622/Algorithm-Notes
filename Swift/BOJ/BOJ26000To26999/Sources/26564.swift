//
//  26564.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 1/29/26.
//

//  문제 링크: https://www.acmicpc.net/problem/26564
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ26564: Solvable {
    public init() {}

    public func run() {
        // 메모리:69112 KB, 시간: 4ms, 코드 길이: 364B
        let n = Int(readLine()!)!
        var strength = Array(repeating: 0, count: n)

        for idx in 0..<n {
            let input = readLine()!.split(separator: " ").map { String($0.first!) }
            let ranks = Set(input)

            for rank in ranks {
                strength[idx] = max(strength[idx], input.filter { $0 == rank }.count)
            }
        }

        print(strength.map { String($0) }.joined(separator: "\n"))
    }
}
