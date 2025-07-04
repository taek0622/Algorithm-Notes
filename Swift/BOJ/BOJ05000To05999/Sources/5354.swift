//
//  5354.swift
//  BOJ05000To05999
//
//  Created by 김민택 on 7/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5354
//  알고리즘 분류: 구현

import Shared

public struct BOJ5354: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 352B
        for _ in 0..<Int(readLine()!)! {
            let J = Int(readLine()!)!

            if J == 1 {
                print("#")
                print()
                continue
            }

            print(String(repeating: "#", count: J))

            for _ in stride(from: 0, to: J-2, by: 1) {
                print("#\(String(repeating: "J", count: J-2))#")
            }

            print(String(repeating: "#", count: J))
            print()
        }
    }
}
