//
//  10824.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/10.
//

// 문제: https://www.acmicpc.net/problem/10824

class BOJ10824: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms 코드 길이: 126B
        let input = readLine()!.split(separator: " ").map { String($0) }

        print(Int(input[0] + input[1])! + Int(input[2] + input[3])!)
    }
}
