//
//  11051.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/13.
//

// 문제: https://www.acmicpc.net/problem/11051

class BOJ11051: Solvable {
    func run() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let N = input[0], K = input[1]
        var numbers = [Double]()
        var mul = 1.0

        if N-K == 0 {
            print(1)
        } else {
            for num in 0..<N-K {
                numbers.append(Double(N - num))
            }

            for num in 1...N-K {
                numbers[numbers.count - 1] /= Double(num)
            }

            numbers.forEach {
                mul *= $0
                mul = Double(Int(mul) % 100000)
            }

            print(Int(mul) % 10007)
        }


//        var mul = 1
//
//        for num in 0..<K {
//            mul *= (N - num)
//            mul %= 1000000
//        }
//
//        print("\(mul / factorial(K) % 10007)")
//
//        func factorial(_ number: Int) -> Int {
//            if number > 1 {
////                let result = number * factorial(number - 1) % 100000
//
//                return number * factorial(number - 1) % 1000000
//            }
//
//            return 1
//        }
    }
}

// n! / k!(n-k)!
