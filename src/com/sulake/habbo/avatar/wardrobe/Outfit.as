package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit, IAvatarImageListener
   {
       
      
      private var var_27:HabboAvatarEditor;
      
      private var var_666:String;
      
      private var var_1028:String;
      
      private var _view:OutfitView;
      
      private var var_1157:Boolean;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         this.var_27 = param1;
         this._view = new OutfitView(param1.manager.windowManager,param1.manager.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_89:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.FEMALE:
            case "f":
            case "F":
               param3 = "null";
         }
         this.var_666 = param2;
         this.var_1028 = param3;
         this.update();
      }
      
      public function dispose() : void
      {
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
         this.var_666 = null;
         this.var_1028 = null;
         this.var_1157 = true;
         this.var_27 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1157;
      }
      
      public function update() : void
      {
         var _loc2_:* = null;
         var _loc1_:IAvatarImage = this.var_27.manager.avatarRenderManager.createAvatarImage(this.figure,AvatarScaleType.const_117,this.var_1028,this);
         if(_loc1_)
         {
            _loc1_.setDirection(AvatarSetType.const_42,int(FigureData.const_866));
            _loc2_ = _loc1_.getImage(AvatarSetType.const_42,true);
            if(this._view)
            {
               this._view.udpate(_loc2_);
            }
            _loc1_.dispose();
         }
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function get gender() : String
      {
         return this.var_1028;
      }
      
      public function get view() : OutfitView
      {
         return this._view;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.update();
      }
   }
}
