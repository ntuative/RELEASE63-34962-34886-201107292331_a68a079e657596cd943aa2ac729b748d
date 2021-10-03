package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FavouriteChangedMessageParser implements IMessageParser
   {
       
      
      private var var_430:int;
      
      private var var_2412:Boolean;
      
      public function FavouriteChangedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_430 = param1.readInteger();
         this.var_2412 = param1.readBoolean();
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_430;
      }
      
      public function get added() : Boolean
      {
         return this.var_2412;
      }
   }
}
