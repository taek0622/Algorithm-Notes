//
//  12605.swift
//  BOJ12000To12999
//
//  Created by 김민택 on 6/28/25.
//

//  문제 링크: https://www.acmicpc.net/problem/12605
//  알고리즘 분류: 구현, 자료 구조, 문자열, 파싱, 스택

import Shared

public struct BOJ12605: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 178B
        let N = Int(readLine()!)!

        for idx in 1...N {
            let L = readLine()!.split(separator: " ").map { String($0) }
            print("Case #\(idx): \(L.reversed().joined(separator: " "))")
        }
    }
}
