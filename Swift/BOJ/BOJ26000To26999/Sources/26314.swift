//
//  26314.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 11/29/25.
//

//  문제 링크: https://www.acmicpc.net/problem/26314
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ26314: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 198B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let input = readLine()!
            print("\(input)\n\(input.filter { "aeiou".contains($0) }.count > input.filter { !"aeiou".contains($0) }.count ? 1 : 0)")
        }
    }
}
