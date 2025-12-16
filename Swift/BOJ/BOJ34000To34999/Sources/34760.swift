//
//  34760.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 12/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/34760
//  알고리즘 분류: 구현

import Shared

public struct BOJ34760: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 157B
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        let nose = A.max()!
        print(A.filter { $0 == nose }.count == 1 && A.last! == nose ? nose : nose + 1)
    }
}
