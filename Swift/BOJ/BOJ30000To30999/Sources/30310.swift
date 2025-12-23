//
//  30310.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 12/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30310
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ30310: Solvable {
    public init() {}

    public func run() {
        // 메모리: 78396KB, 시간: 64ms, 코드 길이: 99B
        _ = readLine()
        let a = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        print(a[0]+a[1])
    }
}
