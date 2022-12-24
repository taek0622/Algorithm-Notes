//
//  14681.swift
//  Swift
//
//  Created by 김민택 on 2022/05/12.
//

// 2-4단계 14681번 사분면 고르기

class BOJ14681 {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 237B
        let input1 = Int(readLine()!)!
        let input2 = Int(readLine()!)!

        if input1 > 0 && input2 > 0 {
            print("1")
        }
        else if input1 < 0 && input2 > 0 {
            print("2")
        }
        else if input1 < 0 && input2 < 0 {
            print("3")
        }
        else {
            print("4")
        }

        /*
         메모리: 69100KB, 시간: 8ms, 코드 길이: 251B
         var input1 = Int(readLine()!)!
         var input2 = Int(readLine()!)!

         if input1 > 0 {
             if input2 > 0 {
                 print("1")
             }
             else {
                 print("4")
             }
         }
         else {
             if input2 > 0 {
                 print("2")
             }
             else {
                 print("3")
             }
         }
         */
    }
}
