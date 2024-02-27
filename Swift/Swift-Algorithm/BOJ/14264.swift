//
//  14264.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14264
//  알고리즘 분류: 수학, 기하학

import Foundation

class BOJ14264: Solvable {
    func run() {
        // 메모리: 79504KB, 시간: 12ms, 코드 길이: 74B
        let L = Double(readLine()!)!
        print(sqrt(3) * L * L / 4)
    }
}
