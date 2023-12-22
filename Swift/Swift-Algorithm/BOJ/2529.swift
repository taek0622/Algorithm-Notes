//
//  2529.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/22/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2512
//  알고리즘 분류: 브루트포스 알고리즘, 백트래킹

class BOJ2529: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 52ms, 코드 길이: 794B
        let k = Int(readLine()!)!
        var max = Array(repeating: "0", count: k+1).joined()
        var min = Array(repeating: "9", count: k+1).joined()
        let signs = readLine()!.split(separator: " ").map { String($0) }

        for num in 0...9 {
            matchSign([num])
        }

        print("\(max)\n\(min)")

        func matchSign(_ number: [Int]) {
            let count = number.count

            if count == k + 1 {
                let temp = number.map { String($0) }.joined()

                if Int(max)! < Int(temp)! {
                    max = temp
                }

                if Int(min)! > Int(temp)! {
                    min = temp
                }

                return
            }

            for next in 0...9 where !number.contains(next) {
                if (signs[count - 1] == "<" && number.last! < next) || (signs[count - 1] == ">" && number.last! > next) {
                    matchSign(number + [next])
                }
            }
        }
    }
}
