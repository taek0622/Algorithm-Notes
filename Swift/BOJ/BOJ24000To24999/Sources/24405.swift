//
//  24405.swift
//  BOJ24000To24999
//
//  Created by 김민택 on 1/26/26.
//

//  문제 링크: https://www.acmicpc.net/problem/24405
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ24405: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 272B
        let input = readLine()!.map { String($0) }
        print(input.count % 2 == 0 && input.filter { $0 == "(" }.count == 1 && input.filter { $0 == ")" }.count == 1 && input.firstIndex(of: "(") == input.count / 2 - 1 && input.firstIndex(of: ")") == input.count / 2 ? "correct" : "fix")
    }
}
