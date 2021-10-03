package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1326:int = 1;
      
      public static const const_492:int = 2;
      
      private static const const_1073:int = 5;
      
      private static const const_1498:int = 250;
      
      private static const const_1496:int = 100;
      
      private static const const_1495:int = 180;
      
      private static const const_1497:int = 200;
       
      
      private var var_381:Timer;
      
      private var var_382:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_93:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_1842:int = 2;
      
      private var var_796:BitmapData;
      
      private var var_996:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_381 = new Timer(const_1498,1);
         this.var_382 = new Timer(const_1496,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_93 = param1;
         this.var_93.visible = false;
         this._assets = param2;
         this.var_381.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_382.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_996 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_796 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_381 != null)
         {
            this.var_381.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_381.stop();
            this.var_381 = null;
         }
         if(this.var_382 != null)
         {
            this.var_382.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_382.stop();
            this.var_382 = null;
         }
         this._assets = null;
         this.var_93 = null;
         this._parent = null;
         this.var_796 = null;
         this.var_996 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_93 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_93);
         }
         this._parent = param1;
         this.var_1842 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_93.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_93.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1495,param3.width),Math.min(const_1497,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_93.width - _loc6_.width) / 2;
            this.var_93.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_382.reset();
         this.var_381.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_93.visible = true;
         this._parent.addChild(this.var_93);
         this.refreshArrow(this.var_1842);
         switch(this.var_1842)
         {
            case const_1326:
               this.var_93.x = -1 * this.var_93.width - const_1073;
               break;
            case const_492:
               this.var_93.x = this._parent.width + const_1073;
         }
         this.var_93.y = (this._parent.height - this.var_93.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_93.visible = false;
         this.var_382.reset();
         this.var_381.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_93);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_382.reset();
         this.var_381.reset();
         this.var_381.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_382.reset();
         this.var_381.reset();
         this.var_382.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_93 == null || this.var_93.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_93.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1326:
               _loc2_.bitmap = this.var_996.clone();
               _loc2_.width = this.var_996.width;
               _loc2_.height = this.var_996.height;
               _loc2_.y = (this.var_93.height - this.var_996.height) / 2;
               _loc2_.x = this.var_93.width - 1;
               break;
            case const_492:
               _loc2_.bitmap = this.var_796.clone();
               _loc2_.width = this.var_796.width;
               _loc2_.height = this.var_796.height;
               _loc2_.y = (this.var_93.height - this.var_796.height) / 2;
               _loc2_.x = -1 * this.var_796.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
