//
//  25178.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/30/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25178
//  알고리즘 분류: 구현, 문자열

class BOJ25178: Solvable {
    func run() {
        // 메모리: 73004KB, 시간: 24ms, 코드 길이: 607B
        let N = Int(readLine()!)!
        let word1 = readLine()!.map { Int($0.asciiValue!) - 97 }
        let word2 = readLine()!.map { Int($0.asciiValue!) - 97 }
        var alphabet = Array(repeating: 0, count: 26)
        var isDuramuri = true

        for idx in 0..<N {
            alphabet[word1[idx]] += 1
            alphabet[word2[idx]] -= 1
        }

        if word1.first! != word2.first! || word1.last! != word2.last! || alphabet != Array(repeating: 0, count: 26) || word1.filter { $0 != 0 && $0 != 4 && $0 != 8 && $0 != 14 && $0 != 20 } != word2.filter { $0 != 0 && $0 != 4 && $0 != 8 && $0 != 14 && $0 != 20 } {
            isDuramuri = false
        }

        print(isDuramuri ? "YES" : "NO")
    }
}
