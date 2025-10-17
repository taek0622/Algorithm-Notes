//
//  14561.swift
//  BOJ14000To14999
//
//  Created by 김민택 on 10/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14561
//  알고리즘 분류: 수학, 구현, 문자열

import Shared

public struct BOJ14561: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 206B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let An = readLine()!.split(separator: " ").map { Int($0)! }
            let trans = String(An[0], radix: An[1])
            print(trans == String(trans.reversed()) ? 1 : 0)
        }
    }
}
