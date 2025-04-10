//
//  10859.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/10/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10859
//  알고리즘 분류: 수학, 구현, 정수론, 소수 판정

class BOJ10859: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 1472ms, 코드 길이: 855B
        let N = Int(readLine()!)!
        var isPrime = true
        var number = N
        var flip = ""

        while number > 0 {
            if number % 10 == 3 || number % 10 == 4 || number % 10 == 7 {
                isPrime = false
                break
            } else if number % 10 == 6 {
                flip += "9"
            } else if number % 10 == 9 {
                flip += "6"
            } else {
                flip += "\(number % 10)"
            }

            number /= 10
        }

        if N == 1 {
            isPrime = false
        }

        if isPrime {
            var divisor = 2

            while divisor * divisor <= N {
                if N % divisor == 0 {
                    isPrime = false
                    break
                }

                divisor += 1
            }
        }

        if isPrime {
            let flipped = Int(flip)!

            var divisor = 2

            while divisor * divisor <= flipped {
                if flipped % divisor == 0 {
                    isPrime = false
                    break
                }

                divisor += 1
            }
        }

        print(isPrime ? "yes" : "no")
    }
}
