//
//  RNAdvertisingId.swift
//
//  Created by App Like on 28.09.17.
//

import AdSupport
import Foundation

@objc(RNAdvertisingId)
class RNAdvertisingId: NSObject {
    @objc(getAdvertisingId:rejecter:)
    func getAdvertisingId(_ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        let isAdvertisingTrackingEnabled : Bool = ASIdentifierManager.shared().isAdvertisingTrackingEnabled
        
        let response: NSMutableDictionary = [
            "isLimitAdTrackingEnabled" : isAdvertisingTrackingEnabled,
            "advertisingId" : ""
        ]
        
        if (isAdvertisingTrackingEnabled) {
            let idfa : String = ASIdentifierManager.shared().advertisingIdentifier.uuidString
            response["advertisingId"] = idfa
        }
        
        resolve(response)
    }
}
