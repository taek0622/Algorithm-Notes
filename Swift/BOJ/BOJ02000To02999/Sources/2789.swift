//
//  2789.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2789
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ2789: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 55B
        print(readLine()!.filter { !"CAMBRIDGE".contains($0) })
    }
}
