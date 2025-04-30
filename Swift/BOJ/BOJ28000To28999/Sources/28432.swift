//
//  28432.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/28432
//  알고리즘 분류: 구현, 문자열

class BOJ28432: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 682B
        let N = Int(readLine()!)!
        var words = [String]()
        var blankIdx = 0

        for idx in 0..<N {
            let word = readLine()!
            words.append(word)

            if word == "?" {
                blankIdx = idx
            }
        }

        let start = blankIdx == 0 ? " " : words[blankIdx-1].last!
        let end = blankIdx == N - 1 ? " " : words[blankIdx+1].first!

        var wordsSet = Set(words)

        let M = Int(readLine()!)!
        var result = ""

        for _ in 0..<M {
            let candidate = readLine()!

            if wordsSet.insert(candidate).inserted && ((start == candidate.first! && end == candidate.last!) || (start == " " && end == candidate.last!) || (end == " " && start == candidate.first!) || N == 1) {
                result = candidate
            }
        }

        print(result)
    }
}
