//
//  15720.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15720
//  알고리즘 분류: 수학, 구현, 그리디 알고리즘, 정렬, 사칙연산

class BOJ15720: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 403B
        let BCD = readLine()!.split(separator: " ").map { Int($0)! }
        let setCount = BCD.min()!
        var total = 0
        var discount = 0

        for _ in 0..<3 {
            let price = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: { $0 > $1 })
            let sum = price.reduce(0, +)
            total += sum
            discount += sum

            for idx in 0..<setCount {
                discount -= price[idx] / 10
            }
        }

        print("\(total)\n\(discount)")
    }
}
