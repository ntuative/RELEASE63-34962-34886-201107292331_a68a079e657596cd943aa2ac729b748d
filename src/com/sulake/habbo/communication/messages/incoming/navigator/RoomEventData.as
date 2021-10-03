package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_2217:Boolean;
      
      private var var_3032:int;
      
      private var var_3033:String;
      
      private var var_430:int;
      
      private var var_3036:int;
      
      private var var_1812:String;
      
      private var var_3034:String;
      
      private var var_3035:String;
      
      private var var_939:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_939 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_2217 = false;
            return;
         }
         this.var_2217 = true;
         this.var_3032 = int(_loc2_);
         this.var_3033 = param1.readString();
         this.var_430 = int(param1.readString());
         this.var_3036 = param1.readInteger();
         this.var_1812 = param1.readString();
         this.var_3034 = param1.readString();
         this.var_3035 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_939.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_939 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_3032;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_3033;
      }
      
      public function get flatId() : int
      {
         return this.var_430;
      }
      
      public function get eventType() : int
      {
         return this.var_3036;
      }
      
      public function get eventName() : String
      {
         return this.var_1812;
      }
      
      public function get eventDescription() : String
      {
         return this.var_3034;
      }
      
      public function get creationTime() : String
      {
         return this.var_3035;
      }
      
      public function get tags() : Array
      {
         return this.var_939;
      }
      
      public function get exists() : Boolean
      {
         return this.var_2217;
      }
   }
}
