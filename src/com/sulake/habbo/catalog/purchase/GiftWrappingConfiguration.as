package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1542:Boolean = false;
      
      private var var_1984:int;
      
      private var var_1817:Array;
      
      private var var_870:Array;
      
      private var var_869:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1542 = _loc2_.isWrappingEnabled;
         this.var_1984 = _loc2_.wrappingPrice;
         this.var_1817 = _loc2_.stuffTypes;
         this.var_870 = _loc2_.boxTypes;
         this.var_869 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1542;
      }
      
      public function get price() : int
      {
         return this.var_1984;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1817;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_870;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_869;
      }
   }
}
