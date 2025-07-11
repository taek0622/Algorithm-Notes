//
//  6378.swift
//  BOJ06000To06999
//
//  Created by 김민택 on 7/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/6378
//  알고리즘 분류: 수학, 구현, 문자열, 임의 정밀도 / 큰 수 연산

import Shared

public struct BOJ6378: Solvable {
    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 207B
        while let input = readLine(), input != "0" {
            var num = input.map { Int(String($0))! }

            while num.count > 1 {
                num = String(num.reduce(0, +)).map { Int(String($0))! }
            }

            print(num[0])
        }
    }
}
