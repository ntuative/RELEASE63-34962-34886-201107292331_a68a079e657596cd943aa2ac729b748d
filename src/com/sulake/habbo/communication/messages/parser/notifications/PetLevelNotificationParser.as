package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1865:int;
      
      private var var_2590:String;
      
      private var var_1355:int;
      
      private var var_1301:int;
      
      private var var_1932:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1865 = param1.readInteger();
         this.var_2590 = param1.readString();
         this.var_1355 = param1.readInteger();
         this.var_1301 = param1.readInteger();
         this.var_1932 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1865;
      }
      
      public function get petName() : String
      {
         return this.var_2590;
      }
      
      public function get level() : int
      {
         return this.var_1355;
      }
      
      public function get petType() : int
      {
         return this.var_1301;
      }
      
      public function get breed() : int
      {
         return this.var_1932;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
