//
//  1541.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/3/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1541
//  알고리즘 분류: 수학, 그리디 알고리즘, 문자열, 파싱

import Shared

public struct BOJ1541: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 543B
    private func solution1() {
        let input = readLine()!
        var result = ""
        var numbers = [Int]()

        for idx in input.indices {
            if input[idx] == "-" || input[idx] == "+" {
                numbers.append(Int(result)!)
                result = "\(input[idx])"
            } else {
                result += "\(input[idx])"
            }
        }

        numbers.append(Int(result)!)

        var idx = 1

        while idx < numbers.count {
            if numbers[idx-1] < 0 && numbers[idx] >= 0 {
                numbers[idx-1] = -(abs(numbers[idx-1])+numbers[idx])
                numbers.remove(at: idx)
            } else {
                idx += 1
            }
        }

        print(numbers.reduce(0, +))
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 168B
    private func solution2() {
        let numbers = readLine()!.split(separator: "-").map { $0.split(separator: "+").map { Int(String($0))! }.reduce(0, +) }
        print(numbers[0] + numbers.reduce(numbers[0], -))
    }
}
