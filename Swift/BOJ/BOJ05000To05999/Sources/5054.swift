//
//  5054.swift
//  BOJ05000To05999
//
//  Created by 김민택 on 7/1/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5054
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ5054: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 172B
        let t = Int(readLine()!)!

        for _ in 0..<t {
            _ = readLine()
            let x = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
            print((x.last! - x.first!) * 2)
        }
    }
}
