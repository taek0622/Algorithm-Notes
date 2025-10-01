//
//  11908.swift
//  BOJ11000To11999
//
//  Created by 김민택 on 10/1/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11908
//  알고리즘 분류: 구현

import Shared

public struct BOJ11908: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69260KB, 시간: 8ms, 코드 길이: 124B
        let n = Int(readLine()!)!
        let c = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        print(c[0..<n-1].reduce(0, +))
    }
}
