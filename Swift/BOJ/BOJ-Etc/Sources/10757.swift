//
//  10757.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/29.
//

// 문제: https://www.acmicpc.net/problem/10757

class BOJ10757: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69560KB, 시간: 16ms, 코드 길이: 665B
    private func solution1() {
        let numbers = readLine()!.split(separator: " ").map { $0 }
        let number1 = numbers[0].reversed().map { Int(String($0))! }
        let number2 = numbers[1].reversed().map { Int(String($0))! }

        print(addNumber(number1, number2))

        func addNumber(_ num1: [Int], _ num2: [Int]) -> String {
            var sum = num1.count >= num2.count ? num1 : num2
            let operand = num1.count >= num2.count ? num2 : num1

            for idx in 0..<operand.count {
                sum[idx] += operand[idx]
            }

            for idx in 0..<sum.count - 1 {
                let number = sum[idx]
                sum[idx] = number % 10
                sum[idx + 1] += (number / 10)
            }

            sum.reverse()

            return sum.map { String($0) }.joined()
        }
    }

    // 코드 길이: 69560KB, 시간: 16ms, 코드 길이: 608B
    private func solution2() {
        let numbers = readLine()!.split(separator: " ").map { $0 }
        let number1 = numbers[0].reversed().map { Int(String($0))! }
        let number2 = numbers[1].reversed().map { Int(String($0))! }

        var result = Array(repeating: 0, count: number1.count > number2.count ? number1.count : number2.count)

        for idx in 0..<number1.count {
            result[idx] += number1[idx]
        }

        for idx in 0..<number2.count {
            result[idx] += number2[idx]
        }

        for idx in 0..<result.count - 1 {
                let number = result[idx]
                result[idx] = number % 10
                result[idx + 1] += number / 10
        }

        result.reverse()

        print(result.map { String($0) }.joined())
    }

    // https://www.acmicpc.net/source/34234693 답을 참고하여 동일하게 작성해 보았으나 메모리가 더 많이 차지하는 문제 발견.
    // 테스트 데이터 등의 변경으로 메모리 차지에 변경이 생긴 것으로 추정되어 해당 답변은 기록하지 않음.
}
