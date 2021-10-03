package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_2096:int = 0;
      
      private var var_2095:int = 0;
      
      private var var_1986:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_2096;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_2095;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1986;
      }
      
      public function flush() : Boolean
      {
         this.var_2096 = 0;
         this.var_2095 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2096 = param1.readInteger();
         this.var_2095 = param1.readInteger();
         this.var_1986 = param1.readInteger();
         return true;
      }
   }
}
