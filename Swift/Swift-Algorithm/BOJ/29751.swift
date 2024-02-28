//
//  29751.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/29751
//  알고리즘 분류: 수학, 기하학, 사칙연산

import Foundation

class BOJ29751: Solvable {
    func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 130B
        let WH = readLine()!.split(separator: " ").map { Double($0)! }
        print(String(format: "%.1f", WH[0] * WH[1] / 2))
    }
}
