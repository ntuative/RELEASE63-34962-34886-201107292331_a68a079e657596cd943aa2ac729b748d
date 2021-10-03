package com.sulake.habbo.ui.widget.memenu
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class MeMenuSoundSettingsSlider
   {
       
      
      private var var_2035:MeMenuSoundSettingsView;
      
      private var _sliderContainer:IWindowContainer;
      
      private var var_851:BitmapData;
      
      private var var_850:BitmapData;
      
      private var var_2036:int;
      
      private var _minValue:Number = 0.0;
      
      private var var_1334:Number = 1.0;
      
      public function MeMenuSoundSettingsSlider(param1:MeMenuSoundSettingsView, param2:IWindowContainer, param3:IAssetLibrary, param4:Number = 0.0, param5:Number = 1.0)
      {
         super();
         this.var_2035 = param1;
         this._sliderContainer = param2;
         this._minValue = param4;
         this.var_1334 = param5;
         this.storeAssets(param3);
         this.displaySlider();
      }
      
      public function dispose() : void
      {
         this.var_2035 = null;
         this._sliderContainer = null;
         this.var_851 = null;
         this.var_850 = null;
      }
      
      public function setValue(param1:Number) : void
      {
         if(this._sliderContainer == null)
         {
            return;
         }
         var _loc2_:IWindow = this._sliderContainer.findChildByName("slider_button");
         if(_loc2_ != null)
         {
            _loc2_.x = this.getSliderPosition(param1);
         }
      }
      
      private function getSliderPosition(param1:Number) : int
      {
         return int(this.var_2036 * (Number(param1 - this._minValue) / (this.var_1334 - this._minValue)));
      }
      
      private function getValue(param1:Number) : Number
      {
         return param1 / this.var_2036 * (this.var_1334 - this._minValue) + this._minValue;
      }
      
      private function method_7(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_417)
         {
            return;
         }
         this.var_2035.saveVolume(this.getValue(param2.x),false);
      }
      
      private function displaySlider() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._sliderContainer == null)
         {
            return;
         }
         _loc3_ = this._sliderContainer.findChildByName("slider_base") as IBitmapWrapperWindow;
         if(_loc3_ != null && this.var_851 != null)
         {
            _loc3_.bitmap = new BitmapData(this.var_851.width,this.var_851.height,true,16777215);
            _loc3_.bitmap.copyPixels(this.var_851,this.var_851.rect,new Point(0,0),null,null,true);
         }
         _loc1_ = this._sliderContainer.findChildByName("slider_movement_area") as IWindowContainer;
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.findChildByName("slider_button") as IWindowContainer;
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_.findChildByName("slider_bitmap") as IBitmapWrapperWindow;
               if(_loc3_ != null && this.var_850 != null)
               {
                  _loc3_.bitmap = new BitmapData(this.var_850.width,this.var_850.height,true,16777215);
                  _loc3_.bitmap.copyPixels(this.var_850,this.var_850.rect,new Point(0,0),null,null,true);
                  _loc2_.procedure = this.method_7;
                  this.var_2036 = _loc1_.width - _loc3_.width;
               }
            }
         }
      }
      
      private function storeAssets(param1:IAssetLibrary) : void
      {
         var _loc2_:* = null;
         if(param1 == null)
         {
            return;
         }
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_base"));
         this.var_851 = BitmapData(_loc2_.content);
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_button"));
         this.var_850 = BitmapData(_loc2_.content);
      }
   }
}
