package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_112:int = 1;
      
      public static const const_77:int = 2;
       
      
      private var var_1329:int;
      
      private var _furniId:int;
      
      private var var_2575:int;
      
      private var var_2264:String;
      
      private var var_1984:int;
      
      private var var_2574:int;
      
      private var var_2764:int;
      
      private var var_439:int;
      
      private var var_2576:int = -1;
      
      private var var_2034:int;
      
      private var var_49:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1329 = param1;
         this._furniId = param2;
         this.var_2575 = param3;
         this.var_2264 = param4;
         this.var_1984 = param5;
         this.var_439 = param6;
         this.var_2574 = param7;
         this.var_2034 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_49)
         {
            this.var_49.dispose();
            this.var_49 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1329;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2575;
      }
      
      public function get stuffData() : String
      {
         return this.var_2264;
      }
      
      public function get price() : int
      {
         return this.var_1984;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2574;
      }
      
      public function get image() : BitmapData
      {
         return this.var_49;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_49 != null)
         {
            this.var_49.dispose();
         }
         this.var_49 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2764 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2764;
      }
      
      public function get status() : int
      {
         return this.var_439;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2576;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2576 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1984 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1329 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_2034;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2034 = param1;
      }
   }
}
