//
//  32621.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 12/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32621
//  알고리즘 분류: 구현, 문자열, 많은 조건 분기

import Shared

public struct BOJ32621: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 206B
        let input = readLine()!.split(separator: "+").map { String($0) }
        print(input.count == 2 && input[0].first != "0" && input[1].first != "0" && Int(input[0]) ?? -1 == Int(input[1]) ?? -2 ? "CUTE" : "No Money")
    }
}
