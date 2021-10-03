package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_2012:int;
      
      private var var_2013:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return this.var_2012;
      }
      
      public function get answerText() : String
      {
         return this.var_2013;
      }
      
      public function flush() : Boolean
      {
         this.var_2012 = -1;
         this.var_2013 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2012 = param1.readInteger();
         this.var_2013 = param1.readString();
         return true;
      }
   }
}
