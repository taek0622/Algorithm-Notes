//
//  4597.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4597
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ4597: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 326B
        while let input = readLine(), input != "#" {
            var string = Array(input)
            let bitCount = string.filter { $0 == "1" }.count % 2 == 0

            if string.last! == "e" {
                string[string.count - 1] = bitCount ? "0" : "1"
            } else {
                string[string.count - 1] = bitCount ? "1" : "0"
            }

            print(String(string))
        }
    }
}
