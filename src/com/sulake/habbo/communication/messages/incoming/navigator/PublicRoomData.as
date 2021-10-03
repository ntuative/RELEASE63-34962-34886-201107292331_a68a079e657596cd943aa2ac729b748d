package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2720:String;
      
      private var var_2740:int;
      
      private var var_2363:int;
      
      private var var_2741:String;
      
      private var var_2874:int;
      
      private var var_2110:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2720 = param1.readString();
         this.var_2740 = param1.readInteger();
         this.var_2363 = param1.readInteger();
         this.var_2741 = param1.readString();
         this.var_2874 = param1.readInteger();
         this.var_2110 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2720;
      }
      
      public function get unitPort() : int
      {
         return this.var_2740;
      }
      
      public function get worldId() : int
      {
         return this.var_2363;
      }
      
      public function get castLibs() : String
      {
         return this.var_2741;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2874;
      }
      
      public function get nodeId() : int
      {
         return this.var_2110;
      }
   }
}
