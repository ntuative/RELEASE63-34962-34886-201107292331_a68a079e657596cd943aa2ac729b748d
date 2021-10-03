package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrameSequenceData
   {
       
      
      private var _frames:Array;
      
      private var var_490:Array;
      
      private var var_1079:Array;
      
      private var var_1916:Boolean = false;
      
      private var _loopCount:int = 1;
      
      public function AnimationFrameSequenceData(param1:int, param2:Boolean)
      {
         this._frames = [];
         this.var_490 = [];
         this.var_1079 = [];
         super();
         if(param1 < 1)
         {
            param1 = 1;
         }
         this._loopCount = param1;
         this.var_1916 = param2;
      }
      
      public function get isRandom() : Boolean
      {
         return this.var_1916;
      }
      
      public function get frameCount() : int
      {
         return this.var_490.length * this._loopCount;
      }
      
      public function dispose() : void
      {
         this._frames = [];
      }
      
      public function initialize() : void
      {
         var _loc1_:int = 1;
         var _loc2_:int = -1;
         var _loc3_:int = this.var_490.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.var_490[_loc3_] == _loc2_)
            {
               _loc1_++;
            }
            else
            {
               _loc2_ = this.var_490[_loc3_];
               _loc1_ = 1;
            }
            this.var_1079[_loc3_] = _loc1_;
            _loc3_--;
         }
      }
      
      public function addFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:DirectionalOffsetData) : void
      {
         var _loc7_:* = null;
         var _loc8_:int = 1;
         if(this._frames.length > 0)
         {
            _loc7_ = this._frames[this._frames.length - 1];
            if(_loc7_.id == param1 && !_loc7_.hasDirectionalOffsets() && _loc7_.x == param2 && _loc7_.y == param3 && _loc7_.randomX == param4 && param4 == 0 && _loc7_.randomY == param5 && param5 == 0)
            {
               _loc8_ += _loc7_.repeats;
               this._frames.pop();
            }
         }
         var _loc9_:* = null;
         if(param6 == null)
         {
            _loc9_ = new AnimationFrameData(param1,param2,param3,param4,param5,_loc8_);
         }
         else
         {
            _loc9_ = new AnimationFrameDirectionalData(param1,param2,param3,param4,param5,param6,_loc8_);
         }
         this._frames.push(_loc9_);
         this.var_490.push(this._frames.length - 1);
         this.var_1079.push(1);
      }
      
      public function getFrame(param1:int) : AnimationFrameData
      {
         if(this._frames.length == 0 || param1 < 0 || param1 >= this.frameCount)
         {
            return null;
         }
         param1 = this.var_490[param1 % this.var_490.length];
         return this._frames[param1] as AnimationFrameData;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         if(param1 < 0 || param1 >= this.frameCount)
         {
            return -1;
         }
         if(this.var_1916)
         {
            param1 = Math.random() * this.var_490.length;
            if(param1 == this.var_490.length)
            {
               param1--;
            }
         }
         return param1;
      }
      
      public function getRepeats(param1:int) : int
      {
         if(param1 < 0 || param1 >= this.frameCount)
         {
            return 0;
         }
         return this.var_1079[param1 % this.var_1079.length];
      }
   }
}
