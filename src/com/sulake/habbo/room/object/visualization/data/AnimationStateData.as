package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationStateData
   {
       
      
      private var var_1808:int = -1;
      
      private var var_2435:int = 0;
      
      private var var_1665:Boolean = false;
      
      private var var_699:int = 0;
      
      private var _frames:Array;
      
      private var var_981:Array;
      
      private var var_982:Array;
      
      private var var_631:int = 0;
      
      public function AnimationStateData()
      {
         this._frames = [];
         this.var_981 = [];
         this.var_982 = [];
         super();
      }
      
      public function get animationOver() : Boolean
      {
         return this.var_1665;
      }
      
      public function set animationOver(param1:Boolean) : void
      {
         this.var_1665 = param1;
      }
      
      public function get frameCounter() : int
      {
         return this.var_699;
      }
      
      public function set frameCounter(param1:int) : void
      {
         this.var_699 = param1;
      }
      
      public function get animationId() : int
      {
         return this.var_1808;
      }
      
      public function set animationId(param1:int) : void
      {
         if(param1 != this.var_1808)
         {
            this.var_1808 = param1;
            this.resetAnimationFrames(false);
         }
      }
      
      public function get animationAfterTransitionId() : int
      {
         return this.var_2435;
      }
      
      public function set animationAfterTransitionId(param1:int) : void
      {
         this.var_2435 = param1;
      }
      
      public function dispose() : void
      {
         this.recycleFrames();
         this._frames = null;
         this.var_981 = null;
         this.var_982 = null;
      }
      
      public function setLayerCount(param1:int) : void
      {
         this.var_631 = param1;
         this.resetAnimationFrames();
      }
      
      public function resetAnimationFrames(param1:Boolean = true) : void
      {
         var _loc3_:* = null;
         if(param1 || this._frames == null)
         {
            this.recycleFrames();
            this._frames = [];
         }
         this.var_981 = [];
         this.var_982 = [];
         this.var_1665 = false;
         this.var_699 = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_631)
         {
            if(param1 || this._frames.length <= _loc2_)
            {
               this._frames[_loc2_] = null;
            }
            else
            {
               _loc3_ = this._frames[_loc2_];
               if(_loc3_ != null)
               {
                  _loc3_.recycle();
                  this._frames[_loc2_] = AnimationFrame.allocate(_loc3_.id,_loc3_.x,_loc3_.y,_loc3_.repeats,0,_loc3_.isLastFrame);
               }
            }
            this.var_981[_loc2_] = false;
            this.var_982[_loc2_] = false;
            _loc2_++;
         }
      }
      
      private function recycleFrames() : void
      {
         var _loc1_:* = null;
         if(this._frames != null)
         {
            for each(_loc1_ in this._frames)
            {
               if(_loc1_ != null)
               {
                  _loc1_.recycle();
               }
            }
         }
      }
      
      public function getFrame(param1:int) : AnimationFrame
      {
         if(param1 >= 0 && param1 < this.var_631)
         {
            return this._frames[param1];
         }
         return null;
      }
      
      public function setFrame(param1:int, param2:AnimationFrame) : void
      {
         var _loc3_:* = null;
         if(param1 >= 0 && param1 < this.var_631)
         {
            _loc3_ = this._frames[param1];
            if(_loc3_ != null)
            {
               _loc3_.recycle();
            }
            this._frames[param1] = param2;
         }
      }
      
      public function getAnimationPlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_631)
         {
            return this.var_982[param1];
         }
         return true;
      }
      
      public function setAnimationPlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_631)
         {
            this.var_982[param1] = param2;
         }
      }
      
      public function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_631)
         {
            return this.var_981[param1];
         }
         return true;
      }
      
      public function setLastFramePlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_631)
         {
            this.var_981[param1] = param2;
         }
      }
   }
}
