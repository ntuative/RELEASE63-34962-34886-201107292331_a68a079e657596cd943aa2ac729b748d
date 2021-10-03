package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1278:String;
      
      private var var_1477:Array;
      
      private var var_1359:Array;
      
      private var var_1807:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1278;
      }
      
      public function get choices() : Array
      {
         return this.var_1477.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1359.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1807;
      }
      
      public function flush() : Boolean
      {
         this.var_1278 = "";
         this.var_1477 = [];
         this.var_1359 = [];
         this.var_1807 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1278 = param1.readString();
         this.var_1477 = [];
         this.var_1359 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1477.push(param1.readString());
            this.var_1359.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1807 = param1.readInteger();
         return true;
      }
   }
}
