//
//  main.swift
//  palitest
//
//  Created by kaveh mohammadpour on 10/15/19.
//  Copyright © 2019 kaveh mohammadpour. All rights reserved.
//

import Foundation


let arr = [1,2,3,[1.1,[4.3,5,[1:"test","car":"bood"]],2,[]]] as [Any]

func superItratpr<T>(_ arr:T, _ visit:(Any)->Void){
    
    guard let num = arr as? Array<Any>  else {
        guard let dic = arr as? [AnyHashable:Any] else {
            visit(arr)
            return
        }
        
        dic.forEach { (arg0) in
            
            let (key, value) = arg0
            print("Key:\(key), Value:\(value)")
        }
        return
        
    }

    num.forEach { (el) in
        superItratpr(el,visit)
    }
  
}

superItratpr(arr){ el in
    print(el)
}

