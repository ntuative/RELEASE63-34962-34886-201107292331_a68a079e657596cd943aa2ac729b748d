package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_329:int = -2.147483648E9;
      
      private var var_327:int = 2.147483647E9;
      
      private var var_328:int = -2.147483648E9;
      
      private var var_326:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_329;
      }
      
      public function get maxWidth() : int
      {
         return this.var_327;
      }
      
      public function get minHeight() : int
      {
         return this.var_328;
      }
      
      public function get maxHeight() : int
      {
         return this.var_326;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_329 = param1;
         if(this.var_329 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_329)
         {
            this._target.width = this.var_329;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_327 = param1;
         if(this.var_327 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_327)
         {
            this._target.width = this.var_327;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_328 = param1;
         if(this.var_328 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_328)
         {
            this._target.height = this.var_328;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_326 = param1;
         if(this.var_326 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_326)
         {
            this._target.height = this.var_326;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_329 == int.MIN_VALUE && this.var_327 == int.MAX_VALUE && this.var_328 == int.MIN_VALUE && this.var_326 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_329 = int.MIN_VALUE;
         this.var_327 = int.MAX_VALUE;
         this.var_328 = int.MIN_VALUE;
         this.var_326 = int.MAX_VALUE;
      }
      
      public function limit() : void
      {
         if(!this.isEmpty && this._target)
         {
            if(this._target.width < this.var_329)
            {
               this._target.width = this.var_329;
            }
            else if(this._target.width > this.var_327)
            {
               this._target.width = this.var_327;
            }
            if(this._target.height < this.var_328)
            {
               this._target.height = this.var_328;
            }
            else if(this._target.height > this.var_326)
            {
               this._target.height = this.var_326;
            }
         }
      }
      
      public function assign(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.var_329 = param1;
         this.var_327 = param2;
         this.var_328 = param3;
         this.var_326 = param4;
         this.limit();
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_329 = this.var_329;
         _loc2_.var_327 = this.var_327;
         _loc2_.var_328 = this.var_328;
         _loc2_.var_326 = this.var_326;
         return _loc2_;
      }
   }
}
