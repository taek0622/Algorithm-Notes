//
//  33557.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 5/1/25.
//

//  문제 링크: https://www.acmicpc.net/problem/33557
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산

import Shared

public struct BOJ33557: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 574B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let AB = readLine()!.split(separator: " ").map { String($0) }
            var (A, B) = (AB[0].map { Int(String($0))! }, AB[1].map { Int(String($0))! })
            var product = [String]()
            A.reverse()
            B.reverse()

            for idx in 0..<min(A.count, B.count) {
                product.append("\(A[idx] * B[idx])")
            }

            for idx in min(A.count, B.count)..<max(A.count, B.count) {
                product.append(A.count > B.count ? "\(A[idx])" : "\(B[idx])")
            }

            print(String(Int(AB[0])! * Int(AB[1])!) == product.reversed().joined() ? 1 : 0)
        }
    }
}
