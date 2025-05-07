//
//  10797.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10797
//  알고리즘 분류: 구현

import Shared

public struct BOJ10797: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 89B
        let day = readLine()!
        print(readLine()!.split(separator: " ").filter { $0 == day }.count)
    }
}
