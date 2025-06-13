//
//  2608.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 6/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2608
//  알고리즘 분류: 수학, 구현, 문자열

import Shared

public struct BOJ2608: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 1968B
        let input1 = readLine()!.map { String($0) }
        let input2 = readLine()!.map { String($0) }
        let resultNum = stringToNum(input1) + stringToNum(input2)
        print("\(resultNum)\n\(numberToString(resultNum))")

        func stringToNum(_ string: [String]) -> Int {
            var num = 0

            for idx in string.indices {
                switch string[idx] {
                    case "I":
                        if idx != string.count - 1 && string[idx+1] != "I" {
                            num -= 1
                        } else {
                            num += 1
                        }
                    case "V":
                        num += 5
                    case "X":
                        if idx != string.count - 1 && (string[idx+1] == "L" || string[idx+1] == "C") {
                            num -= 10
                        } else {
                            num += 10
                        }
                    case "L":
                        num += 50
                    case "C":
                        if idx != string.count - 1 && (string[idx+1] == "D" || string[idx+1] == "M") {
                            num -= 100
                        } else {
                            num += 100
                        }
                    case "D":
                        num += 500
                    case "M":
                        num += 1000
                    default:
                        break
                }
            }

            return num
        }

        func numberToString(_ num: Int) -> String {
            var num = num
            var result = ""
            var digit = 0
            let oneSymbol = ["I", "X", "C", "M"]
            let fiveSymbol = ["V", "L", "D"]

            while num > 0 {
                let mod = num % 10

                switch mod {
                    case 1, 2, 3:
                        result += String(repeating: oneSymbol[digit], count: mod)
                    case 4:
                        result += (fiveSymbol[digit] + oneSymbol[digit])
                    case 5:
                        result += fiveSymbol[digit]
                    case 6, 7, 8:
                        result += (String(repeating: oneSymbol[digit], count: mod-5) + fiveSymbol[digit])
                    case 9:
                        result += (oneSymbol[digit+1] + oneSymbol[digit])
                    default:
                        break
                }

                digit += 1
                num /= 10
            }

            return String(result.reversed())
        }
    }
}
