//
//  10699.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/23.
//

//  문제 링크: https://www.acmicpc.net/problem/10699
//  알고리즘 분류: 구현

import Foundation

import Shared

public struct BOJ10699: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 백준에서 Date를 따올 수 없는 문제로 해당 방법으로 답 제출 불가
    private func solution1() {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ko_KR")
        dateFormatter.timeZone = TimeZone(abbreviation: "KST")
        dateFormatter.dateFormat = "yyyy-MM-dd"

        let convertedDate = dateFormatter.string(from: Date())
        print(convertedDate)
    }

    // 메모리: 69092KB, 시간: 8ms, 코드 길이: 19B
    private func solution2() {
        print("2023-01-23")
    }
}
