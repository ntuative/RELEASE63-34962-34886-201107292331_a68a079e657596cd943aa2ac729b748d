package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_430:int;
      
      private var var_777:Boolean;
      
      private var var_984:String;
      
      private var _ownerName:String;
      
      private var var_2381:int;
      
      private var var_2327:int;
      
      private var var_2382:int;
      
      private var var_1904:String;
      
      private var var_2383:int;
      
      private var var_2377:Boolean;
      
      private var var_804:int;
      
      private var var_1470:int;
      
      private var var_2376:String;
      
      private var var_939:Array;
      
      private var var_2380:RoomThumbnailData;
      
      private var var_2378:Boolean;
      
      private var var_2379:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_939 = new Array();
         super();
         this.var_430 = param1.readInteger();
         this.var_777 = param1.readBoolean();
         this.var_984 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2381 = param1.readInteger();
         this.var_2327 = param1.readInteger();
         this.var_2382 = param1.readInteger();
         this.var_1904 = param1.readString();
         this.var_2383 = param1.readInteger();
         this.var_2377 = param1.readBoolean();
         this.var_804 = param1.readInteger();
         this.var_1470 = param1.readInteger();
         this.var_2376 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_939.push(_loc4_);
            _loc3_++;
         }
         this.var_2380 = new RoomThumbnailData(param1);
         this.var_2378 = param1.readBoolean();
         this.var_2379 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_430;
      }
      
      public function get event() : Boolean
      {
         return this.var_777;
      }
      
      public function get roomName() : String
      {
         return this.var_984;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2381;
      }
      
      public function get userCount() : int
      {
         return this.var_2327;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2382;
      }
      
      public function get description() : String
      {
         return this.var_1904;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2383;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2377;
      }
      
      public function get score() : int
      {
         return this.var_804;
      }
      
      public function get categoryId() : int
      {
         return this.var_1470;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2376;
      }
      
      public function get tags() : Array
      {
         return this.var_939;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2380;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2378;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2379;
      }
   }
}
