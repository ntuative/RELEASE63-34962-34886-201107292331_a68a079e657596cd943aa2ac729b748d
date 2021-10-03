package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2610:String;
      
      private var var_2609:String;
      
      private var var_495:BitmapDataAsset;
      
      private var var_1613:Boolean;
      
      private var var_1614:Boolean;
      
      private var var_2608:Boolean;
      
      private var _offsetX:int;
      
      private var var_1186:int;
      
      private var var_214:int;
      
      private var _height:int;
      
      private var var_841:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2610 = param1;
         this.var_2609 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_495 = _loc9_;
            this.var_841 = false;
         }
         else
         {
            this.var_495 = null;
            this.var_841 = true;
         }
         this.var_1613 = param4;
         this.var_1614 = param5;
         this._offsetX = param6;
         this.var_1186 = param7;
         this.var_2608 = param8;
      }
      
      public function dispose() : void
      {
         this.var_495 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_841 && this.var_495 != null)
         {
            _loc1_ = this.var_495.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_214 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_841 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1614;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1613;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_214;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2610;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2609;
      }
      
      public function get asset() : IAsset
      {
         return this.var_495;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2608;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1613)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1614)
         {
            return this.var_1186;
         }
         return -(this.height + this.var_1186);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1186;
      }
   }
}
