//
//  12033.swift
//  BOJ12000To12999
//
//  Created by 김민택 on 5/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/12033
//  알고리즘 분류: 구현, 그리디 알고리즘, 브루트포스 알고리즘

import Shared

public struct BOJ12033: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 917B
        let T = Int(readLine()!)!

        for t in 1...T {
            let N = Int(readLine()!)!
            var prices = readLine()!.split(separator: " ").map { Int($0)! }
            var origins = [Int]()
            var discounts = [Int]()
            var idx = 0

            while idx < prices.count {
                if prices[idx] % 3 != 0 {
                    let (origin, discount) = (prices[idx], prices[idx]/4*3)
                    origins.append(origin)
                    discounts.append(discount)
                    prices.remove(at: idx)
                    prices.remove(at: prices.firstIndex(of: discount)!)
                } else {
                    idx += 1
                }
            }

            while discounts.count != N {
                let origin = prices.removeLast()
                let discount = origin/4*3
                origins.append(origin)
                discounts.append(discount)
                prices.remove(at: prices.firstIndex(of: discount)!)
            }

            discounts.sort()
            print("Case #\(t): \(discounts.map { String($0) }.joined(separator: " "))")
        }
    }
}
