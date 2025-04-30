//
//  10093.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10093
//  알고리즘 분류: 구현

class BOJ10093: Solvable {
    func run() {
        // 메모리: 73616KB, 시간: 36ms, 코드 길이: 213B
        let AB = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        print(AB[1] - AB[0] > 1 ? AB[1] - AB[0] - 1 : 0)
        print(Array(stride(from: AB[0]+1, to: AB[1], by: 1)).map { String($0) }.joined(separator: " "))
    }
}
