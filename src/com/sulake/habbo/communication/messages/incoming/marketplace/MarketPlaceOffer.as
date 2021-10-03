package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1329:int;
      
      private var _furniId:int;
      
      private var var_2575:int;
      
      private var var_2264:String;
      
      private var var_1984:int;
      
      private var var_439:int;
      
      private var var_2576:int = -1;
      
      private var var_2574:int;
      
      private var var_2034:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1329 = param1;
         this._furniId = param2;
         this.var_2575 = param3;
         this.var_2264 = param4;
         this.var_1984 = param5;
         this.var_439 = param6;
         this.var_2576 = param7;
         this.var_2574 = param8;
         this.var_2034 = param9;
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
      
      public function get status() : int
      {
         return this.var_439;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2576;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2574;
      }
      
      public function get offerCount() : int
      {
         return this.var_2034;
      }
   }
}
