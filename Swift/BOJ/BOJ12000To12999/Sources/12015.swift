//
//  12015.swift
//  BOJ12000To12999
//
//  Created by 김이안 on 3/22/26.
//

//  문제 링크: https://www.acmicpc.net/problem/12015
//  알고리즘 분류: 이분 탐색, 가장 긴 증가하는 부분 수열 문제

import Shared

public struct BOJ12015: Solvable {
    public init() {}

    public func run() {
        // 메모리: 134296KB, 시간: 444ms, 코드 길이: 508B
        _ = readLine()
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        var partList = [0]

        for a in A {
            if a > partList.last! {
                partList.append(a)
            } else {
                var left = 1
                var right = partList.count - 1

                while left < right {
                    let mid = (left + right) >> 1

                    if partList[mid] < a {
                        left = mid+1
                    } else {
                        right = mid
                    }
                }

                partList[right] = a
            }
        }

        print(partList.count - 1)
    }
}
