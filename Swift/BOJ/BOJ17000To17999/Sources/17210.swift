//
//  17210.swift
//  BOJ17000To17999
//
//  Created by 김민택 on 9/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17210
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ17210: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 189B
        let N = Int(readLine()!)!
        var door = readLine()!

        if N >= 6 {
            print("Love is open door")
        } else {
            for _ in 1..<N {
                door = door == "0" ? "1" : "0"
                print(door)
            }
        }
    }
}
