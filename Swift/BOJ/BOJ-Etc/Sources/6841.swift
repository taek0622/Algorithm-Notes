//
//  6841.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/12.
//

// 문제: https://www.acmicpc.net/problem/6841

class BOJ6841: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 469B
        let shortForm = ["CU": "see you", ":-)": "I’m happy", ":-(": "I’m unhappy",
                         ";-)": "wink", ":-P": "stick out my tongue", "(~.~)": "sleepy",
                         "TA": "totally awesome", "CCC": "Canadian Computing Competition", "CUZ": "because",
                         "TY": "thank-you", "YW": "you’re welcome", "TTYL": "talk to you later"]

        while let input = readLine() {
            print(shortForm[input] ?? input)

            if input == "TTYL" {
                break
            }
        }
    }
}
