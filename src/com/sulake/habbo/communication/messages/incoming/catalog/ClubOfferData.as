package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1329:int;
      
      private var var_1876:String;
      
      private var var_1984:int;
      
      private var _upgrade:Boolean;
      
      private var var_2710:Boolean;
      
      private var var_2712:int;
      
      private var var_2714:int;
      
      private var var_2715:int;
      
      private var var_2713:int;
      
      private var var_2711:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1329 = param1.readInteger();
         this.var_1876 = param1.readString();
         this.var_1984 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2710 = param1.readBoolean();
         this.var_2712 = param1.readInteger();
         this.var_2714 = param1.readInteger();
         this.var_2715 = param1.readInteger();
         this.var_2713 = param1.readInteger();
         this.var_2711 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1329;
      }
      
      public function get productCode() : String
      {
         return this.var_1876;
      }
      
      public function get price() : int
      {
         return this.var_1984;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2710;
      }
      
      public function get periods() : int
      {
         return this.var_2712;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2714;
      }
      
      public function get year() : int
      {
         return this.var_2715;
      }
      
      public function get month() : int
      {
         return this.var_2713;
      }
      
      public function get day() : int
      {
         return this.var_2711;
      }
   }
}
