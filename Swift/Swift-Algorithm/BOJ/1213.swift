//
//  1213.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1213
//  알고리즘 분류: 구현, 그리디 알고리즘, 문자열

class BOJ1213: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 604B
        var S = readLine()!.map { String($0) }.sorted(by: >)
        var front = ""
        var middle = ""
        var back = ""
        var isPalindrome = true

        while S.count > 1 {
            let base = S.removeLast()
            let target = S.removeLast()

            if base == target {
                front += base
                back += target
            } else if S.count % 2 == 1 {
                middle += base
                S.append(target)
            } else {
                isPalindrome = false
                break
            }
        }

        if S.count == 1 {
            middle += S.removeLast()
        }

        if middle.count > 1 {
            isPalindrome = false
        }

        print(isPalindrome ? front + middle + String(back.reversed()) : "I'm Sorry Hansoo")
    }
}
