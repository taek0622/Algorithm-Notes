//
//  17094.swift
//  BOJ17000To17999
//
//  Created by 김민택 on 8/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17094
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ17094: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69576KB, 시간: 16ms, 코드 길이: 128B
        let len = Int(readLine()!)!
        let e = readLine()!.filter { $0 == "e" }.count
        print(len - e == e ? "yee" : len - e > e ? "2" : "e")
    }
}
