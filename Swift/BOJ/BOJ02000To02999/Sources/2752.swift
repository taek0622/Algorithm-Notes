//
//  2752.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2744
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ2752: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 108B
        print(readLine()!.split(separator: " ").map { Int($0)! }.sorted().map { String($0) }.joined(separator: " "))
    }
}
