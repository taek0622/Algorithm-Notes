//
//  11659.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/04.
//

// 문제: https://www.acmicpc.net/problem/11659

class BOJ11659: Solvable {
    func run() {
        // 메모리: 76200KB, 시간: 280ms, 코드 길이: 360B
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }

        for idx in 1...NM[0] {
            numbers[idx] += numbers[idx - 1]
        }

        for _ in 0..<NM[1] {
            let range = readLine()!.split(separator: " ").map { Int(String($0))! }

            print(numbers[range[1]] - numbers[range[0]-1])
        }
    }
}
