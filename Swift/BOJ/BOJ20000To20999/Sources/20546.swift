//
//  20546.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/20546
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ20546: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1094B
        let money = Int(readLine()!)!
        let price = readLine()!.split(separator: " ").map { Int($0)! }
        let junhyeonPrice = price.filter { $0 <= money }.first ?? 0
        let junhyeon = junhyeonPrice == 0 ? money : money / junhyeonPrice * price[13] + money % junhyeonPrice
        var seongmin = (0, money)
        var isASC = (false, 0)

        for idx in 1..<14 {
            if price[idx-1] < price[idx] {
                if isASC.0 == false {
                    isASC.0 = true
                    isASC.1 = 1
                } else {
                    isASC.1 += 1
                }
            } else if price[idx-1] > price[idx] {
                if isASC.0 == true {
                    isASC.0 = false
                    isASC.1 = 1
                } else {
                    isASC.1 += 1
                }
            } else {
                isASC.1 = 0
            }

            if isASC.1 >= 3 {
                if isASC.0 {
                    seongmin.1 += seongmin.0 * price[idx]
                    seongmin.0 = 0
                } else {
                    seongmin.0 += seongmin.1 / price[idx]
                    seongmin.1 %= price[idx]
                }
            }
        }

        let seongminLast = seongmin.0 * price[13] + seongmin.1
        print(junhyeon > seongminLast ? "BNP" : junhyeon < seongminLast ? "TIMING" : "SAMESAME")
    }
}
