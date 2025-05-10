//
//  28445.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/28/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28445
//  알고리즘 분류: 구현, 자료 구조, 문자열, 정렬

import Shared

public struct BOJ28445: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 186B
        let colors = Set(readLine()!.split(separator: " ") + readLine()!.split(separator: " ")).sorted()

        for front in colors {
            for back in colors {
                print("\(front) \(back)")
            }
        }
    }
}
