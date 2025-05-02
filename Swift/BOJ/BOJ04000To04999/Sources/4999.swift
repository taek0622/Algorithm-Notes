//
//  4999.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4963
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ4999: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69092KB, 시간: 8ms, 코드 길이: 89B
        let aaah = readLine()!.count
        let aah = readLine()!.count
        print(aaah >= aah ? "go" : "no")
    }
}
