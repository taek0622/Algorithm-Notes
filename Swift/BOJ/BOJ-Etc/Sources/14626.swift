//
//  14626.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/15.
//

// 문제: https://www.acmicpc.net/problem/14626

class BOJ14626: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 366B
        let isbn = readLine()!.map { $0 != "*" ? Int(String($0))! : -1 }
        let ruinedNumber = isbn.firstIndex(of: -1)
        var sum = 0

        for idx in isbn.indices where 0...9 ~= isbn[idx] {
            sum += (idx % 2 == 0 ? 1 : 3) * isbn[idx]
        }

        sum %= 10

        for number in 0...9 {
            if ((ruinedNumber! % 2 == 0 ? 1 : 3) * number + sum) % 10 == 0 {
                print(number)
                break
            }
        }
    }
}
