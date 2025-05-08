//
//  31908.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 5/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31908
//  알고리즘 분류: 구현, 자료 구조, 해시를 사용한 집합과 맵

import Shared

public struct BOJ31908: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69240KB, 시간: 12ms, 코드 길이: 382B
        let N = Int(readLine()!)!
        var rings = [String: [String]]()

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            if input[1] == "-" { continue }
            rings[input[1], default: []].append(input[0])
        }

        let couples = rings.values.filter { $0.count == 2 }.map { $0.joined(separator: " ") }
        print("\(couples.count)\n\(couples.joined(separator: "\n"))")
    }
}
