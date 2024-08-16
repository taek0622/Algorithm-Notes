//
//  1718.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1718
//  알고리즘 분류: 구현, 문자열

class BOJ1718: Solvable {
    func run() {
        // 메모리: 69708KB, 시간: 12ms, 코드 길이: 330B
        let sentence = Array(readLine()!)
        let key = Array(readLine()!)
        var result = ""

        for idx in sentence.indices {
            if sentence[idx] == " " {
                result.append(" ")
            } else {
                result += String(UnicodeScalar((Int(sentence[idx].asciiValue!) - Int(key[idx%key.count].asciiValue!) + 25) % 26 + 97)!)
            }
        }

        print(result)
    }
}
