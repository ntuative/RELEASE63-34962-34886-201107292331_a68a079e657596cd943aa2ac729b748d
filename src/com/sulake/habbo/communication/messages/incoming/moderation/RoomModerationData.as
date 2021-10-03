package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_430:int;
      
      private var var_2327:int;
      
      private var var_2931:Boolean;
      
      private var var_2505:int;
      
      private var _ownerName:String;
      
      private var var_140:RoomData;
      
      private var var_777:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_430 = param1.readInteger();
         this.var_2327 = param1.readInteger();
         this.var_2931 = param1.readBoolean();
         this.var_2505 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_140 = new RoomData(param1);
         this.var_777 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_140 != null)
         {
            this.var_140.dispose();
            this.var_140 = null;
         }
         if(this.var_777 != null)
         {
            this.var_777.dispose();
            this.var_777 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_430;
      }
      
      public function get userCount() : int
      {
         return this.var_2327;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2931;
      }
      
      public function get ownerId() : int
      {
         return this.var_2505;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_140;
      }
      
      public function get event() : RoomData
      {
         return this.var_777;
      }
   }
}
