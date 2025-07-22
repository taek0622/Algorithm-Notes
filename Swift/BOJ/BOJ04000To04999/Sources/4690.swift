//
//  4690.swift
//  BOJ04000To04999
//
//  Created by 김민택 on 7/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4690
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘

import Shared

public struct BOJ4690: Solvable {
    public func run() {
        // 메모리: 69096KB, 시간: 12ms, 코드 길이: 508B
        for a in 2...100 {
            let a3 = a * a * a

            for b in 2..<a {
                let b3 = b * b * b

                if a3 < b3 + 2 * 2 * 2 * 2 { break }

                for c in b..<a {
                    let c3 = b3 + c * c * c

                    if a3 < c3 + 2 * 2 * 2 { break }

                    for d in c..<a {
                        let sum = c3 + d * d * d

                        if a3 < sum { break }
                        else if a3 == sum {
                            print("Cube = \(a), Triple = (\(b),\(c),\(d))")
                        }
                    }
                }
            }
        }
    }
}
