//
//  20001.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/20001
//  알고리즘 분류: 구현

import Shared

public struct BOJ20001: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 346B
        var problem = 0

        while let input = readLine(), input != "고무오리 디버깅 끝" {
            if input == "문제" {
                problem += 1
            } else if input == "고무오리" {
                if problem > 0 {
                    problem -= 1
                } else {
                    problem += 2
                }
            }
        }

        print(problem == 0 ? "고무오리야 사랑해" : "힝구")
    }
}
