//
//  12781.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/12781
//  알고리즘 분류: 기하학, 선분 교차 판정

import Shared

public struct BOJ12781: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 346B
        let xy = readLine()!.split(separator: " ").map { Int($0)! }
        var (p1, p2, p3, p4) = ((xy[0], xy[1]), (xy[2], xy[3]), (xy[4], xy[5]), (xy[6], xy[7]))

        print(CCW(p1, p2, p3) * CCW(p1, p2, p4) < 0 ? 1 : 0)

        func CCW(_ p1: (Int, Int), _ p2: (Int, Int), _ p3: (Int, Int)) -> Int {
            return ((p2.0-p1.0)*(p3.1-p2.1)-(p3.0-p2.0)*(p2.1-p1.1)).signum()
        }
    }
}
