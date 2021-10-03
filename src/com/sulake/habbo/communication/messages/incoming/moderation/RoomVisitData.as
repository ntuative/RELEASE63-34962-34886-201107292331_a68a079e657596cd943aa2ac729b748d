package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1988:Boolean;
      
      private var _roomId:int;
      
      private var var_984:String;
      
      private var var_3044:int;
      
      private var var_3045:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1988 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_984 = param1.readString();
         this.var_3044 = param1.readInteger();
         this.var_3045 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1988;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_984;
      }
      
      public function get enterHour() : int
      {
         return this.var_3044;
      }
      
      public function get enterMinute() : int
      {
         return this.var_3045;
      }
   }
}
