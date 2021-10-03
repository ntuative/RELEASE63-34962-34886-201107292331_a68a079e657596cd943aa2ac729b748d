package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_187:Number = 0;
      
      private var var_188:Number = 0;
      
      private var var_2436:Number = 0;
      
      private var var_2438:Number = 0;
      
      private var var_2441:Number = 0;
      
      private var var_2440:Number = 0;
      
      private var var_457:int = 0;
      
      private var var_2437:int = 0;
      
      private var var_366:Array;
      
      private var var_2439:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_366 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_187 = param3;
         this.var_188 = param4;
         this.var_2436 = param5;
         this.var_457 = param6;
         this.var_2437 = param7;
         this.var_2438 = param8;
         this.var_2441 = param9;
         this.var_2440 = param10;
         this.var_2439 = param11;
         this.var_366 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_187;
      }
      
      public function get z() : Number
      {
         return this.var_188;
      }
      
      public function get localZ() : Number
      {
         return this.var_2436;
      }
      
      public function get targetX() : Number
      {
         return this.var_2438;
      }
      
      public function get targetY() : Number
      {
         return this.var_2441;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2440;
      }
      
      public function get dir() : int
      {
         return this.var_457;
      }
      
      public function get dirHead() : int
      {
         return this.var_2437;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2439;
      }
      
      public function get actions() : Array
      {
         return this.var_366.slice();
      }
   }
}
