//
//  2999.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2999
//  알고리즘 분류: 구현, 문자열

class BOJ2999: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 347B
        let message = readLine()!.map { String($0) }
        let N = message.count
        var (R, C) = (1, N)
        var divisor = 1
        var result = ""

        while divisor * divisor <= N {
            if N % divisor == 0 {
                R = divisor
                C = N / R
            }

            divisor += 1
        }

        for row in 0..<R {
            for col in 0..<C {
                result += message[row + col * R]
            }
        }

        print(result)
    }
}
