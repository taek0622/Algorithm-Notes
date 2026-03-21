//
//  9627.swift
//  BOJ09000To09999
//
//  Created by 김이안 on 3/21/26.
//

//  문제 링크: https://www.acmicpc.net/problem/9627
//  알고리즘 분류: 구현, 문자열, 브루트포스 알고리즘

import Shared

public struct BOJ9627: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 1052B
        let N = Int(readLine()!)!
        var words = Array(repeating: "", count: N)
        var numsLocation = -1
        var count = 0
        let oneDigit = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
        let tenDigit = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
        let tenToTwenty = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
        let hundredDigit = "hundred"

        for idx in 0..<N {
            words[idx] = readLine()!

            if words[idx] == "$" {
                numsLocation = idx
                continue
            }

            count += words[idx].count
        }

        for number in 1...999 {
            var num = number
            let hundred = oneDigit[num/100] + (num > 99 ? hundredDigit : "")
            num %= 100
            let ten = 10..<20 ~= num ? tenToTwenty[num-10] : tenDigit[num/10]
            num = 10..<20 ~= num ? 0 : num % 10
            let one = oneDigit[num]

            if count + (hundred + ten + one).count == number {
                words[numsLocation] = hundred + ten + one
                break
            }
        }

        print(words.joined(separator: " "))
    }
}
