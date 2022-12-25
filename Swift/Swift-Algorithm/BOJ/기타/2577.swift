//
//  2577.swift
//  Swift
//
//  Created by 김민택 on 2022/05/26.
//

// 문제: https://www.acmicpc.net/problem/2577

class BOJ2577 {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 271B
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

        /*
         메모리: 60392KB, 시간: 8ms, 코드 길이: 128B
         var a=[0,0,0,0,0,0,0,0,0,0]
         String([1,2,3].map{_ in Int(readLine()!)!}.reduce(1,*)).map{a[Int(String($0))!]+=1}
         a.map{print($0)}
         */
    }
}
