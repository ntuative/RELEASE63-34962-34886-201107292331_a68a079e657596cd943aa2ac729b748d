package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class Triggerable
   {
       
      
      private var var_2655:Boolean;
      
      private var _furniLimit:int;
      
      private var var_1956:Array;
      
      private var _id:int;
      
      private var var_2654:String;
      
      private var var_1557:Array;
      
      private var var_2653:int;
      
      private var var_1955:int;
      
      public function Triggerable(param1:IMessageDataWrapper)
      {
         var _loc5_:int = 0;
         this.var_1956 = new Array();
         this.var_1557 = new Array();
         super();
         this.var_2655 = param1.readBoolean();
         this._furniLimit = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc5_ = param1.readInteger();
            this.var_1956.push(_loc5_);
            _loc3_++;
         }
         this.var_2653 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2654 = param1.readString();
         var _loc4_:int = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            this.var_1557.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1955 = param1.readInteger();
      }
      
      public function get stuffTypeSelectionEnabled() : Boolean
      {
         return this.var_2655;
      }
      
      public function get stuffTypeSelectionCode() : int
      {
         return this.var_1955;
      }
      
      public function set stuffTypeSelectionCode(param1:int) : void
      {
         this.var_1955 = param1;
      }
      
      public function get furniLimit() : int
      {
         return this._furniLimit;
      }
      
      public function get stuffIds() : Array
      {
         return this.var_1956;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get stringParam() : String
      {
         return this.var_2654;
      }
      
      public function get intParams() : Array
      {
         return this.var_1557;
      }
      
      public function get code() : int
      {
         return 0;
      }
      
      public function get stuffTypeId() : int
      {
         return this.var_2653;
      }
      
      public function getBoolean(param1:int) : Boolean
      {
         return this.var_1557[param1] == 1;
      }
   }
}
