//
//  32795.swift
//  BOJ32000To32999
//
//  Created by 김이안 on 3/15/26.
//

//  문제 링크: https://www.acmicpc.net/problem/32795
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ32795: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 20ms, 코드 길이: 294B
        let t = Int(readLine()!)!

        for _ in 0..<t {
            let origin = readLine()!
            let name = Set(readLine()!.map { $0 })
            var isAllContains = true

            for letter in name where !origin.contains(letter) {
                isAllContains = false
                break
            }

            print(isAllContains ? "YES" : "NO")
        }
    }
}
