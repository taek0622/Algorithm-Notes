//
//  12787.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/12787
//  알고리즘 분류: 구현, 문자열, 파싱

class BOJ12787: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 740B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let MN = readLine()!.split(separator: " ").map { String($0) }
            let M = (MN[0] == "1")

            if M {
                var N = MN[1].split(separator: ".").map { UInt64($0)! }
                N.reverse()

                var number: UInt64 = 0

                for idx in N.indices {
                    var mul: UInt64 = 1

                    for _ in 0..<idx {
                        mul *= 256
                    }

                    number += mul * N[idx]
                }

                print(number)
                continue
            }

            var N = UInt64(MN[1])!
            var divisor: UInt64 = 72_057_594_037_927_936
            var result = ""

            for _ in 0..<7 {
                result += "\(N / divisor)."
                N %= divisor
                divisor /= 256
            }

            result += "\(N)"
            print(result)
        }
    }
}
