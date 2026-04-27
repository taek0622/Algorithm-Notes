//
//  2108.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/04.
//

// 문제: https://www.acmicpc.net/problem/2108

// 산술평균: N개의 수들의 합을 N으로 나눈 값
// 중앙값: N개의 수들을 증가하는 순서로 나열했을 경우 그 중앙에 위치하는 값
// 최빈값: N개의 수들 중 가장 많이 나타나는 값
// 범위: N개의 수들 중 최대값과 최솟값의 차이

import Foundation

import Shared

public struct BOJ2108: Solvable {
    public init() {}

    public func run() {
        // 메모리: 85764KB, 시간: 296ms, 코드 길이: 659B
        let N = Int(readLine()!)!
        var numbers = [Int]()
        var countNum = [Int: Int]()
        var sameMode = 0
        var modeNum = 4001

        for _ in 0..<N {
            numbers.append(Int(readLine()!)!)
        }

        numbers.sort()

        numbers.forEach {
            countNum[$0, default: 0] += 1
        }

        countNum.keys.sorted().forEach {
            if countNum[$0]! > countNum[modeNum, default: 0] {
                sameMode = 0
                modeNum = $0
                sameMode += 1
            } else if countNum[$0]! == countNum[modeNum] && sameMode == 1 {
                modeNum = $0
                sameMode += 1
            }
        }

        print("\(Int(round(Double(numbers.reduce(0, +))/Double(N))))\n\(numbers[N/2])\n\(modeNum)\n\(numbers.last! - numbers.first!)")
    }
}
