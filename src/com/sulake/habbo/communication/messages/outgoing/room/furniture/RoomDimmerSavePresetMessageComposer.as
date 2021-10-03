package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2587:int;
      
      private var var_2586:int;
      
      private var var_2588:String;
      
      private var var_2585:int;
      
      private var var_2589:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2587 = param1;
         this.var_2586 = param2;
         this.var_2588 = param3;
         this.var_2585 = param4;
         this.var_2589 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2587,this.var_2586,this.var_2588,this.var_2585,int(this.var_2589)];
      }
      
      public function dispose() : void
      {
      }
   }
}
