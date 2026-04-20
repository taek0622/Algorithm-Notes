//
//  1561.swift
//  BOJ01000To01999
//
//  Created by 김이안 on 4/20/26.
//

//  문제 링크: https://www.acmicpc.net/problem/1561
//  알고리즘 분류: 이분 탐색, 매개 변수 탐색

import Shared

public struct BOJ1561: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69952KB, 시간: 12ms, 코드 길이: 571B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let playTime = readLine()!.split(separator: " ").map { Int($0)! }
        var left = 0
        var right = NM[0] * 30

        while left < right {
            let mid = (left + right) / 2
            let count = playTime.map { mid / $0 + 1 }.reduce(0, +)

            if count < NM[0] {
                left = mid + 1
            } else if count >= NM[0] {
                right = mid
            }
        }

        let prevCount = playTime.map { (right-1) / $0 + 1 }.reduce(0, +)
        print(right == 0 ? NM[0] : playTime.enumerated().filter { right % $0.element == 0 }.map { $0.offset }[NM[0]-prevCount-1]+1)
    }
}
