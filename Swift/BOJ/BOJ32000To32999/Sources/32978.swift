//
//  32978.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/6/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32978
//  알고리즘 분류: 구현, 자료 구조, 브루트포스 알고리즘, 해시를 사용한 집합과 맵

class BOJ32978: Solvable {
    func run() {
        // 메모리: 69372KB, 시간: 8ms, 코드 길이: 240B
        let N = Int(readLine()!)!
        var ingredient = Set(readLine()!.split(separator: " ").map { String($0) })
        let input = readLine()!.split(separator: " ").map { String($0) }

        for ing in input {
            ingredient.remove(ing)
        }

        print(ingredient.first!)
    }
}
