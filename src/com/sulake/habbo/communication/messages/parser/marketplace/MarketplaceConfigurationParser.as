package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1542:Boolean;
      
      private var var_2770:int;
      
      private var var_2059:int;
      
      private var var_2058:int;
      
      private var var_2771:int;
      
      private var var_2773:int;
      
      private var var_2772:int;
      
      private var var_2308:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1542;
      }
      
      public function get commission() : int
      {
         return this.var_2770;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2059;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2058;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2773;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2771;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2772;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2308;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1542 = param1.readBoolean();
         this.var_2770 = param1.readInteger();
         this.var_2059 = param1.readInteger();
         this.var_2058 = param1.readInteger();
         this.var_2773 = param1.readInteger();
         this.var_2771 = param1.readInteger();
         this.var_2772 = param1.readInteger();
         this.var_2308 = param1.readInteger();
         return true;
      }
   }
}
