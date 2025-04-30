//
//  13866.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/27.
//

// 문제: https://www.acmicpc.net/problem/13866

class BOJ13866: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 133B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
        print(abs(input[0] + input[3] - input[1] - input[2]))
    }
}
