//
//  13133.swift
//  BOJ13000To13999
//
//  Created by 김민택 on 5/18/25.
//

//  문제 링크: https://www.acmicpc.net/problem/13133
//  알고리즘 분류: 구현

import Shared

public struct BOJ13133: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 512B
        let N = Int(readLine()!)!
        var people = Array(repeating: (true, 0, 0), count: N+1)
        people[0].0 = false
        var count = 0

        for idx in 1...N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            people[idx].1 = input[0]
            people[idx].2 = input[1]
        }

        _ = readLine()
        let nums = readLine()!.split(separator: " ").map { Int($0)! }

        for num in nums {
            people[num].0 = false
        }

        for idx in 1...N where people[idx].0 && people[people[idx].1].0 && people[people[idx].2].0 {
            count += 1
        }

        print(count)
    }
}
