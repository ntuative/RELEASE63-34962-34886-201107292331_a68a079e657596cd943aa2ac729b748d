package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2574:int;
      
      private var var_2644:int;
      
      private var var_2643:int;
      
      private var _dayOffsets:Array;
      
      private var var_1982:Array;
      
      private var var_1983:Array;
      
      private var var_2642:int;
      
      private var var_2641:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2574;
      }
      
      public function get offerCount() : int
      {
         return this.var_2644;
      }
      
      public function get historyLength() : int
      {
         return this.var_2643;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1982;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1983;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2642;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2641;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2574 = param1.readInteger();
         this.var_2644 = param1.readInteger();
         this.var_2643 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1982 = [];
         this.var_1983 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1982.push(param1.readInteger());
            this.var_1983.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2641 = param1.readInteger();
         this.var_2642 = param1.readInteger();
         return true;
      }
   }
}
