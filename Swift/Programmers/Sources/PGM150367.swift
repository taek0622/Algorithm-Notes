//
//  PGM150367.swift
//  Programmers
//
//  Created by 김이안 on 5/8/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/150367
//  문제 분류: 2023 KAKAO BLIND RECRUITMENT

import Foundation

import Shared

public struct PGM150367: Solvable {
    public init() {}

    public func run() {
        print(solution([7, 42, 5]) == [1, 1, 0])
        print(solution([63, 111, 95]) == [1, 1, 0])
    }

    func solution(_ numbers: [Int64]) -> [Int] {
        var result = Array(repeating: 0, count: numbers.count)

        for idx in numbers.indices {
            var bin = String(numbers[idx], radix: 2).map { $0 }
            var length = 1

            while length <= bin.count {
                length *= 2
            }

            length -= 1

            bin = Array(repeating: "0", count: length - bin.count) + bin
            result[idx] = checkTree(bin, 0, bin.count-1) == 1 ? 1 : 0
        }

        return result
    }

    func checkTree(_ bin: [Character], _ start: Int, _ end: Int) -> Int {
        if start == end { return bin[start] == "1" ? 1 : 0 }
        let mid = (start + end) / 2
        let left = checkTree(bin, start, mid-1)
        let right = checkTree(bin, mid+1, end)
        if left == -1 || right == -1 { return -1 }
        if bin[mid] == "0" && (left != 0 || right != 0) { return -1 }
        return bin[mid] == "1" || left == 1 || right == 1 ? 1 : 0
    }
}
