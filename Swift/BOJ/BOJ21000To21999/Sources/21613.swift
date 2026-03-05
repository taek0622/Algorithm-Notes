//
//  21613.swift
//  BOJ21000To21999
//
//  Created by 김이안 on 3/5/26.
//

//  문제 링크: https://www.acmicpc.net/problem/21613
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ21613: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 217B
        let N = Int(readLine()!)!
        var maxPrice = ("", -1)

        for _ in 0..<N {
            let name = readLine()!
            let price = Int(readLine()!)!

            if price > maxPrice.1 {
                maxPrice = (name, price)
            }
        }

        print(maxPrice.0)
    }
}
