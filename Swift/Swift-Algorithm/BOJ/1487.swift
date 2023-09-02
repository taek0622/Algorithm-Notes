//
//  1487.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/02.
//

//  문제 링크: https://www.acmicpc.net/problem/1487
//  알고리즘 분류: 브루트포스 알고리즘

class BOJ1487: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 568B
        let N = Int(readLine()!)!
        var customers = [(Int, Int)]()
        var maxSum = 0
        var maxPrice = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            if input[0] - input[1] > 0 {
                customers.append((input[0], input[1]))
            }
        }

        customers.sort(by: <)

        for customer in customers {
            var sum = 0
            let price = customer.0

            for sale in customers where sale.0 >= price && price - sale.1 > 0 {
                sum += price - sale.1
            }

            if sum > maxSum {
                maxSum = sum
                maxPrice = price
            }
        }

        print(maxPrice)
    }
}
