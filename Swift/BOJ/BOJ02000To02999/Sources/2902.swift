//
//  2902.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2902
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ2902: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 130B
    private func solution1() {
        let input = readLine()!.split(separator: "-")
        var result = ""

        for name in input {
            result += "\(name.first!)"
        }

        print(result)
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 44B
    private func solution2() {
        print(readLine()!.filter { $0.isUppercase })
    }
}
