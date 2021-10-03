package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2527:int;
      
      private var var_2526:int;
      
      private var var_1287:int;
      
      private var var_1288:int;
      
      private var var_1986:int;
      
      private var var_2525:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2527 = param1.readInteger();
         this.var_2526 = param1.readInteger();
         this.var_1287 = param1.readInteger();
         this.var_1288 = param1.readInteger();
         this.var_1986 = param1.readInteger();
         this.var_2525 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2527;
      }
      
      public function get charges() : int
      {
         return this.var_2526;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1287;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1288;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2525;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1986;
      }
   }
}
