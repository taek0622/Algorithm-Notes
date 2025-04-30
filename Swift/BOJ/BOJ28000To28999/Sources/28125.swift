//
//  28125.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28125
//  알고리즘 분류: 구현, 문자열

class BOJ28125: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 1221B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let input = readLine()!.map { String($0) }
            var count = 0
            var result = ""
            var idx = 0

            while idx < input.count {
                if input[idx] == "@" {
                    result += "a"
                } else if input[idx] == "[" {
                    result += "c"
                } else if input[idx] == "!" {
                    result += "i"
                } else if input[idx] == ";" {
                    result += "j"
                } else if input[idx] == "^" {
                    result += "n"
                } else if input[idx] == "0" {
                    result += "o"
                } else if input[idx] == "7" {
                    result += "t"
                } else if input[idx] == "\\" {
                    if idx != input.count - 1 && input[idx+1] == "'" {
                        result += "v"
                        idx += 1
                    } else if idx != input.count - 2 && input[idx+1] == "\\" && input[idx+2] == "'" {
                        result += "w"
                        idx += 2
                    } else {
                        result += input[idx]
                        count -= 1
                    }
                } else {
                    result += input[idx]
                    count -= 1
                }

                count += 1
                idx += 1
            }

            print((result.count+1)/2 <= count ? "I don't understand" : result)
        }
    }
}
