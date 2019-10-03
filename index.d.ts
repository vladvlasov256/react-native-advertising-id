declare module "react-native-advertising-id" {

  export interface AdvertisingIdStatic {
    getAdvertisingId: () => Promise<{
        /**
         * a string representing the GAID/AAID or IDFA
         * depending on the platform.
         */
        advertisingId: string,
        /**
         * an indicatator wether the user opted to restrict
         * the usage of his AdvertisingId or not.
         * **Only iOS**
         */
        isLimitAdTrackingEnabled?: boolean
    }>;
  }

  const AdvertisingId: AdvertisingIdStatic;

  export default AdvertisingId;
}
