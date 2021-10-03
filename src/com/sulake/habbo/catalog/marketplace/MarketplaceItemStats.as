package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2574:int;
      
      private var var_2644:int;
      
      private var var_2643:int;
      
      private var _dayOffsets:Array;
      
      private var var_1982:Array;
      
      private var var_1983:Array;
      
      private var var_2642:int;
      
      private var var_2641:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2574 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2644 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2643 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1982 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1983 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2642 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2641 = param1;
      }
   }
}
