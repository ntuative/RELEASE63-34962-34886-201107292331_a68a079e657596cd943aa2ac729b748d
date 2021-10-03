package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2445:Boolean;
      
      private var var_2446:int;
      
      private var var_1817:Array;
      
      private var var_870:Array;
      
      private var var_869:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2445;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2446;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1817 = [];
         this.var_870 = [];
         this.var_869 = [];
         this.var_2445 = param1.readBoolean();
         this.var_2446 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1817.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_870.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_869.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
