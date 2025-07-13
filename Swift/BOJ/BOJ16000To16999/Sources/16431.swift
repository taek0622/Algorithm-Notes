//
//  16431.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 7/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16431
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ16431: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 467B
        let B = readLine()!.split(separator: " ").map { Int($0)! }
        let D = readLine()!.split(separator: " ").map { Int($0)! }
        let J = readLine()!.split(separator: " ").map { Int($0)! }
        let path = (max(B[0] - J[0] >= 0 ? B[0] - J[0] : -(B[0] - J[0]), B[1] - J[1] >= 0 ? B[1] - J[1] : -(B[1] - J[1])), (D[0] - J[0] >= 0 ? D[0] - J[0] : -(D[0] - J[0])) + (D[1] - J[1] >= 0 ? D[1] - J[1] : -(D[1] - J[1])))
        print(path.0 == path.1 ? "tie" : (path.0 < path.1 ? "bessie" : "daisy"))
    }
}
