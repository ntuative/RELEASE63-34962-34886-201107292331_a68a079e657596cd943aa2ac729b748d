package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1332:Boolean;
      
      private var var_1331:Boolean;
      
      private var var_1619:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1332;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1331;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1619;
      }
      
      public function flush() : Boolean
      {
         this.var_1332 = false;
         this.var_1331 = false;
         this.var_1619 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1332 = param1.readBoolean();
         this.var_1331 = param1.readBoolean();
         this.var_1619 = param1.readBoolean();
         return true;
      }
   }
}
