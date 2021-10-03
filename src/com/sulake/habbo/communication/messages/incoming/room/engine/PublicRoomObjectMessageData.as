package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_187:Number = 0;
      
      private var var_188:Number = 0;
      
      private var var_457:int = 0;
      
      private var var_582:int = 0;
      
      private var var_708:int = 0;
      
      private var var_197:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_197 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_197)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_197)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_197)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_187;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_197)
         {
            this.var_187 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_188;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_197)
         {
            this.var_188 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_457;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_197)
         {
            this.var_457 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_582;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_197)
         {
            this.var_582 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_708;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_197)
         {
            this.var_708 = param1;
         }
      }
   }
}
