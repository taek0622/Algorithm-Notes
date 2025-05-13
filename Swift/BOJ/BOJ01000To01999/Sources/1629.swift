//
//  1629.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/08.
//

//  문제 링크: https://www.acmicpc.net/problem/1629
//  알고리즘 분류: 수학, 분할 정복을 이용한 거듭제곱

import Shared

public struct BOJ1629: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 271B
        let ABC = readLine()!.split(separator: " ").map { Int(String($0))! }

        print(exp(ABC[1]))

        func exp(_ N: Int) -> Int {
            if N == 0 { return 1 }

            let prev = exp(N/2) % ABC[2]
            let even = prev * prev % ABC[2]

            return N % 2 != 0 ? even * ABC[0] % ABC[2] : even
        }
    }
}
