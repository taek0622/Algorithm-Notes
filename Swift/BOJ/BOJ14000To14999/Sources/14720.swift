//
//  14720.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14720
//  알고리즘 분류: 구현, 그리디 알고리즘

class BOJ14720: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 174B
        _ = Int(readLine()!)!
        let milks = readLine()!.split(separator: " ").map { Int($0)! }
        var count = 0

        for milk in milks where count % 3 == milk {
            count += 1
        }

        print(count)
    }
}
