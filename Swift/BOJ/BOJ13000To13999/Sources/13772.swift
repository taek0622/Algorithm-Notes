//
//  13772.swift
//  BOJ13000To13999
//
//  Created by 김민택 on 1/1/26.
//

//  문제 링크: https://www.acmicpc.net/problem/13772
//  알고리즘 분류: 수학, 구현, 문자열, 런타임 전의 전처리

import Shared

public struct BOJ13772: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 306B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            var count = 0
            let input = readLine()!.map { String($0) }

            for char in input {
                if char == "B" {
                    count += 2
                } else if ["A", "D", "O", "P", "Q", "R"].contains(char) {
                    count += 1
                }
            }

            print(count)
        }
    }
}
