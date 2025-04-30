//
//  1544.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/1/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1544
//  알고리즘 분류: 구현, 자료 구조, 문자열, 브루트포스 알고리즘, 해시를 사용한 집합과 맵

class BOJ1544: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 24ms, 코드 길이: 397B
        let N = Int(readLine()!)!
        var words = Set<String>()

        for _ in 0..<N {
            var newWords = words
            let word = readLine()!.map { String($0) }
            var base = 0

            for idx in 0..<word.count where !newWords.insert(word[idx...].joined() + word[..<idx].joined()).inserted {
                base = idx
                break
            }

            words.insert(word[base...].joined() + word[..<base].joined())
        }

        print(words.count)
    }
}
