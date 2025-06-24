//
//  9933.swift
//  BOJ09000To09999
//
//  Created by 김민택 on 6/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9933
//  알고리즘 분류: 구현, 자료 구조, 문자열, 해시를 사용한 집합과 맵, 집합과 맵

import Shared

public struct BOJ9933: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 400B
        let N = Int(readLine()!)!
        var pws = Set<String>()
        var answer = (0, "")

        for _ in 0..<N {
            let input = readLine()!

            if !pws.insert(input).inserted {
                answer = (input.count, input.map { String($0) }[input.count / 2])
            }

            if !pws.insert(String(input.reversed())).inserted {
                answer = (input.count, input.map { String($0) }[input.count / 2])
            }
        }

        print(answer.0, answer.1)
    }
}
