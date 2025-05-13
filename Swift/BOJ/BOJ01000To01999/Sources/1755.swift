//
//  1755.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/04.
//

//  문제 링크: https://www.acmicpc.net/problem/1755
//  알고리즘 분류: 문자열, 정렬

import Shared

public struct BOJ1755: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 69116KB, 시간: 8ms, 코드 길이: 1540B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let numbers = Array(input[0]...input[1])
        var dict = [String]()
        var result = ""

        for num in numbers {
            let engNum = String(num).map { convertToEnglish(String($0)) }
            dict.append(engNum.joined(separator: " "))
        }

        dict.sort()

        for idx in dict.indices {
            let engNum = dict[idx].split(separator: " ").map { convertToNumber(String($0)) }
            result += "\(engNum.joined()) "

            if (idx+1) % 10 == 0 {
                result += "\n"
            }
        }

        print(result)

        func convertToEnglish(_ num: String) -> String {
            switch num {
            case "0":
                return "zero"
            case "1":
                return "one"
            case "2":
                return "two"
            case "3":
                return "three"
            case "4":
                return "four"
            case "5":
                return "five"
            case "6":
                return "six"
            case "7":
                return "seven"
            case "8":
                return "eight"
            case "9":
                return "nine"
            default:
                return ""
            }
        }

        func convertToNumber(_ eng: String) -> String {
            switch eng {
            case "zero":
                return "0"
            case "one":
                return "1"
            case "two":
                return "2"
            case "three":
                return "3"
            case "four":
                return "4"
            case "five":
                return "5"
            case "six":
                return "6"
            case "seven":
                return "7"
            case "eight":
                return "8"
            case "nine":
                return "9"
            default:
                return ""
            }
        }
    }

    // 메모리: 69116KB, 시간: 8ms, 코드 길이: 760B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let numbers = Array(input[0]...input[1])
        let numberDict = ["zero": "0", "one": "1", "two": "2", "three": "3", "four": "4",
                          "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"]
        var dict = [String]()
        var result = ""

        for num in numbers {
            let engNum = String(num).map { eng in numberDict.filter { $0.value == String(eng) }.keys.first! }
            dict.append(engNum.joined(separator: " "))
        }

        dict.sort()

        for idx in dict.indices {
            let engNum = dict[idx].split(separator: " ").map { eng in numberDict.filter { $0.key == String(eng) }.values.first! }
            result += "\(engNum.joined()) "

            if (idx+1) % 10 == 0 {
                result += "\n"
            }
        }

        print(result)
    }

    // 메모리: 69112KB, 시간: 8ms, 코드 길이: 538B
    private func solution3() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let numberDict: [Character: String] = ["0": "zero", "1": "one", "2": "two", "3": "three", "4": "four",
                          "5": "five", "6": "six", "7": "seven", "8": "eight", "9": "nine"]
        let dict = (input[0]...input[1]).map { ($0, String($0).map { numberDict[$0]! }.joined()) }.sorted(by: { $0.1 < $1.1 }).map { $0.0 }
        var result = ""

        for (idx, num) in dict.enumerated() {
            result += "\(num)\((idx+1) % 10 == 0 ? "\n" : " ")"
        }

        print(result)
    }
}
