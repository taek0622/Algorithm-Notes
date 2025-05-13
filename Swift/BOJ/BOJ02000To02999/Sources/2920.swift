//
//  2920.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2920
//  알고리즘 분류: 구현

import Shared

public struct BOJ2920: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 228B
        let note = Array(1...8)
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        if input == note {
            print("ascending")
        } else if input.reversed() == note {
            print("descending")
        } else {
            print("mixed")
        }
    }
}
