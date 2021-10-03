package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1621:Number = 12;
       
      
      private var var_2859:int = -1;
      
      private var var_2858:int = -2;
      
      private var var_230:Vector3d = null;
      
      private var var_1333:Number = 0;
      
      private var var_1622:Number = 0;
      
      private var var_2094:Boolean = false;
      
      private var var_201:Vector3d = null;
      
      private var var_2092:Vector3d;
      
      private var var_2867:Boolean = false;
      
      private var var_2866:Boolean = false;
      
      private var var_2865:Boolean = false;
      
      private var var_2863:Boolean = false;
      
      private var var_2862:int = 0;
      
      private var var_2860:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2861:int = 0;
      
      private var var_2864:int = 0;
      
      private var var_1823:int = -1;
      
      private var var_2091:int = 0;
      
      private var var_2093:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2092 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_201;
      }
      
      public function get targetId() : int
      {
         return this.var_2859;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2858;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2092;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2867;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2866;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2865;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2863;
      }
      
      public function get screenWd() : int
      {
         return this.var_2862;
      }
      
      public function get screenHt() : int
      {
         return this.var_2860;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2861;
      }
      
      public function get roomHt() : int
      {
         return this.var_2864;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1823;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_230 != null && this.var_201 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2859 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2092.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2858 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2867 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2866 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2865 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2863 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2862 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2860 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2093 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2861 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2864 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1823 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_230 == null)
         {
            this.var_230 = new Vector3d();
         }
         if(this.var_230.x != param1.x || this.var_230.y != param1.y || this.var_230.z != param1.z)
         {
            this.var_230.assign(param1);
            this.var_2091 = 0;
            _loc2_ = Vector3d.dif(this.var_230,this.var_201);
            this.var_1333 = _loc2_.length;
            this.var_2094 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_230 = null;
         this.var_201 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_201 != null)
         {
            return;
         }
         this.var_201 = new Vector3d();
         this.var_201.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_201 == null)
         {
            this.var_201 = new Vector3d();
         }
         this.var_201.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_230 != null && this.var_201 != null)
         {
            ++this.var_2091;
            if(this.var_2093)
            {
               this.var_2093 = false;
               this.var_201 = this.var_230;
               this.var_230 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_230,this.var_201);
            if(_loc3_.length > this.var_1333)
            {
               this.var_1333 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_201 = this.var_230;
               this.var_230 = null;
               this.var_1622 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1333);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1333 / const_1621;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2094)
               {
                  if(_loc7_ < this.var_1622)
                  {
                     _loc7_ = this.var_1622;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2094 = false;
                  }
               }
               this.var_1622 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_201 = Vector3d.sum(this.var_201,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1823 = -1;
      }
   }
}
