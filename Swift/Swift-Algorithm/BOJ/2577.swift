//
//  2577.swift
//  Swift
//
//  Created by 김민택 on 2022/05/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2577
//  알고리즘 분류: 수학, 구현, 사칙연산

class BOJ2577: Solvable {
    func run() {
        solution1()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 271B
    private func solution1() {
        let a = Int(readLine()!)!
        let b = Int(readLine()!)!
        let c = Int(readLine()!)!

        var number = a * b * c

        var numberArray = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

        while number > 0 {
            numberArray[number % 10] += 1
            number = number / 10
        }

        for i in numberArray {
            print(i)
        }
    }

    // 메모리: 60392KB, 시간: 8ms, 코드 길이: 128B
    private func solution2() {
        var a=[0,0,0,0,0,0,0,0,0,0]
        String([1,2,3].map{_ in Int(readLine()!)!}.reduce(1,*)).map{a[Int(String($0))!]+=1}
        a.map{print($0)}
    }
}
