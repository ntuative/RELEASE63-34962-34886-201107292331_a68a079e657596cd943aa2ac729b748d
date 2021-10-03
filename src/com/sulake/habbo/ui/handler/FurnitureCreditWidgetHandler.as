package com.sulake.habbo.ui.handler
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.ui.IRoomWidgetHandler;
   import com.sulake.habbo.ui.IRoomWidgetHandlerContainer;
   import com.sulake.habbo.ui.widget.enums.RoomWidgetEnum;
   import com.sulake.habbo.ui.widget.events.RoomWidgetCreditFurniUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetCreditFurniRedeemMessage;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetFurniToWidgetMessage;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetMessage;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import flash.events.Event;
   
   public class FurnitureCreditWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var var_1157:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      public function FurnitureCreditWidgetHandler()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1157;
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_662;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         this._container = param1;
      }
      
      public function dispose() : void
      {
         this.var_1157 = true;
         this._container = null;
      }
      
      public function getWidgetMessages() : Array
      {
         return [RoomWidgetFurniToWidgetMessage.const_890,RoomWidgetCreditFurniRedeemMessage.const_945];
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc8_:* = null;
         var _loc2_:Boolean = this._container.roomSession.isRoomOwner || this._container.sessionDataManager.isAnyRoomController;
         if(!_loc2_)
         {
            return null;
         }
         switch(param1.type)
         {
            case RoomWidgetFurniToWidgetMessage.const_890:
               _loc3_ = param1 as RoomWidgetFurniToWidgetMessage;
               _loc4_ = this._container.roomEngine.getRoomObject(_loc3_.roomId,_loc3_.roomCategory,_loc3_.id,_loc3_.category);
               if(_loc4_ != null)
               {
                  _loc6_ = _loc4_.getModel();
                  if(_loc6_ != null)
                  {
                     _loc7_ = _loc6_.getNumber(RoomObjectVariableEnum.const_1240);
                     _loc8_ = new RoomWidgetCreditFurniUpdateEvent(RoomWidgetCreditFurniUpdateEvent.const_909,_loc3_.id,_loc7_);
                     this._container.events.dispatchEvent(_loc8_);
                  }
               }
               break;
            case RoomWidgetCreditFurniRedeemMessage.const_945:
               _loc5_ = param1 as RoomWidgetCreditFurniRedeemMessage;
               if(this._container != null && this._container.roomSession != null)
               {
                  this._container.roomSession.sendCreditFurniRedeemMessage(_loc5_.objectId);
               }
         }
         return null;
      }
      
      public function getProcessedEvents() : Array
      {
         return [];
      }
      
      public function processEvent(param1:Event) : void
      {
         if(this._container != null && this._container.events != null && null != null)
         {
            this._container.events.dispatchEvent(null);
         }
      }
      
      public function update() : void
      {
      }
   }
}
