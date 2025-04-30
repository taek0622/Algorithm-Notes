//
//  1339.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/26/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1339
//  알고리즘 분류: 그리디 알고리즘

class BOJ1339: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 361B
        let N = Int(readLine()!)!
        var dict = Array(repeating: 0, count: 26)
        var sum = 0

        for _ in 0..<N {
            let input = Array(readLine()!)
            var exp = 1

            for char in input.reversed() {
                dict[Int(char.asciiValue!) - 65] += exp
                exp *= 10
            }
        }

        var number = 9

        for idx in dict.sorted(by: >) {
            sum += number * idx
            number -= 1
        }

        print(sum)
    }
}
