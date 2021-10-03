package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_1072:String = "avatar";
      
      private static const const_691:Number = -0.01;
      
      private static const const_690:Number = -0.409;
      
      private static const const_1071:int = 2;
      
      private static const const_1493:Array = [0,0,0];
      
      private static const const_1492:int = 3;
       
      
      private var var_643:AvatarVisualizationData = null;
      
      private var var_548:Map;
      
      private var var_536:Map;
      
      private var var_1246:int = 0;
      
      private var var_1025:Boolean;
      
      private var var_666:String;
      
      private var var_1028:String;
      
      private var var_1247:int = 0;
      
      private var var_644:BitmapDataAsset;
      
      private var var_995:BitmapDataAsset;
      
      private var var_1834:int = -1;
      
      private var var_1830:int = -1;
      
      private var var_1836:int = -1;
      
      private const const_1070:int = 0;
      
      private const const_2102:int = 1;
      
      private const const_2095:int = 2;
      
      private const const_2096:int = 3;
      
      private const const_1494:int = 4;
      
      private var var_1823:int = -1;
      
      private var var_279:String = "";
      
      private var var_1496:String = "";
      
      private var var_1837:Boolean = false;
      
      private var var_1831:Boolean = false;
      
      private var var_1835:Boolean = false;
      
      private var var_1498:Boolean = false;
      
      private var var_639:Boolean = false;
      
      private var var_1497:int = 0;
      
      private var _danceStyle:int = 0;
      
      private var var_1832:int = 0;
      
      private var var_793:int = 0;
      
      private var var_794:int = 0;
      
      private var var_642:int = 0;
      
      private var var_1499:int = 0;
      
      private var var_1211:Boolean = false;
      
      private var var_1833:Boolean = false;
      
      private var var_1209:int = 0;
      
      private var var_795:int = 0;
      
      private var var_1829:Boolean = false;
      
      private var var_1210:int = 0;
      
      private var var_63:IAvatarImage = null;
      
      private var var_1157:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_548 = new Map();
         this.var_536 = new Map();
         this.var_1025 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_548 != null)
         {
            this.resetImages();
            this.var_548.dispose();
            this.var_536.dispose();
            this.var_548 = null;
         }
         this.var_643 = null;
         this.var_644 = null;
         this.var_995 = null;
         super.dispose();
         this.var_1157 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1157;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_643 = param1 as AvatarVisualizationData;
         createSprites(this.const_1494);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_148)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_199) > 0 && param3);
            if(_loc5_ != this.var_1837)
            {
               this.var_1837 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_252) > 0;
            if(_loc5_ != this.var_1831)
            {
               this.var_1831 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_278) > 0;
            if(_loc5_ != this.var_1835)
            {
               this.var_1835 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_985) > 0 && param3);
            if(_loc5_ != this.var_1498)
            {
               this.var_1498 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_547) > 0;
            if(_loc5_ != this.var_639)
            {
               this.var_639 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_161);
            if(_loc6_ != this.var_1497)
            {
               this.var_1497 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_295);
            if(_loc7_ != this.var_279)
            {
               this.var_279 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_988);
            if(_loc7_ != this.var_1496)
            {
               this.var_1496 = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_584);
            if(_loc6_ != this._danceStyle)
            {
               this._danceStyle = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_647);
            if(_loc6_ != this.var_793)
            {
               this.var_793 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_344);
            if(_loc6_ != this.var_794)
            {
               this.var_794 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_287);
            if(_loc6_ != this.var_642)
            {
               this.var_642 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_213);
            if(_loc6_ != this.var_1834)
            {
               this.var_1834 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_794 > 0 && param1.getNumber(RoomObjectVariableEnum.const_287) > 0)
            {
               if(this.var_642 != this.var_794)
               {
                  this.var_642 = this.var_794;
                  _loc4_ = true;
               }
            }
            else if(this.var_642 != 0)
            {
               this.var_642 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_418);
            if(_loc6_ != this.var_1209)
            {
               this.var_1209 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.AVATAR_GENDER);
            if(_loc7_ != this.var_1028)
            {
               this.var_1028 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_203);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_431);
            if(_loc6_ != this.var_1832)
            {
               _loc4_ = true;
            }
            var_148 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_666 != param1)
         {
            this.var_666 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_548)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_536)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_548.reset();
         this.var_536.reset();
         this.var_63 = null;
         _loc2_ = getSprite(this.const_1070);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1498 = false;
         }
         if(this.var_279 == "sit" || this.var_279 == "lay")
         {
            this.var_1499 = param1 / 2;
         }
         else
         {
            this.var_1499 = 0;
         }
         this.var_1833 = false;
         this.var_1211 = false;
         if(this.var_279 == "lay")
         {
            this.var_1211 = true;
            _loc2_ = int(this.var_1496);
            if(_loc2_ < 0)
            {
               this.var_1833 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_548.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_536.getValue(_loc4_) as IAvatarImage;
            if(_loc3_)
            {
               _loc3_.forceActionUpdate();
            }
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_643.getAvatar(this.var_666,param1,this.var_1028,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_548.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_536.length >= const_1492)
                  {
                     _loc5_ = this.var_536.remove(this.var_536.getKey(0));
                     if(_loc5_)
                     {
                        _loc5_.dispose();
                     }
                  }
                  this.var_536.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_514 != param1.getUpdateID() || this.var_1823 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1834;
            if(this.var_279 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1830 || param4)
            {
               _loc5_ = true;
               this.var_1830 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_63.setDirectionAngle(AvatarSetType.const_42,_loc6_);
            }
            if(_loc7_ != this.var_1836 || param4)
            {
               _loc5_ = true;
               this.var_1836 = _loc7_;
               if(this.var_1836 != this.var_1830)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_63.setDirectionAngle(AvatarSetType.const_56,_loc7_);
               }
            }
            var_514 = param1.getUpdateID();
            this.var_1823 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_2102);
         this.var_644 = null;
         if(this.var_279 == "mv" || this.var_279 == "std")
         {
            _loc2_.visible = true;
            if(this.var_644 == null || param1 != var_102)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_644 = this.var_63.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_644 = this.var_63.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_644 != null)
               {
                  _loc2_.asset = this.var_644.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_644 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_995 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_2095);
         if(this.var_639)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_995 = this.var_643.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_995 = this.var_643.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_279 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_279 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_995 != null)
            {
               _loc2_.asset = this.var_995.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_2096);
         if(this.var_1209 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_643.getAvatarRendererAsset("number_" + this.var_1209 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_643.getAvatarRendererAsset("number_" + this.var_1209 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_279 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_279 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_795 = 1;
               this.var_1829 = true;
               this.var_1210 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_795 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_2096);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1829)
         {
            ++this.var_1210;
            if(this.var_1210 < 10)
            {
               return false;
            }
            if(this.var_795 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1210 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_795 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_795 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_795 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_795 = 0;
               this.var_1829 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean, param4:Boolean) : void
      {
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:* = null;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:int = 0;
         var _loc31_:* = null;
         var _loc32_:* = null;
         var _loc5_:IRoomObject = object;
         if(_loc5_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_643 == null)
         {
            return;
         }
         var _loc6_:IRoomObjectModel = _loc5_.getModel();
         var _loc7_:Number = param1.scale;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:int = this.var_793;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = this.updateModel(_loc6_,_loc7_,param3);
         if(this.animateNumberBubble(_loc7_))
         {
            increaseUpdateId();
         }
         if(_loc13_ || _loc7_ != var_102 || this.var_63 == null)
         {
            if(_loc7_ != var_102)
            {
               _loc9_ = true;
               this.validateActions(_loc7_);
            }
            if(_loc11_ != this.var_793)
            {
               _loc12_ = true;
            }
            if(_loc9_ || this.var_63 == null || _loc12_)
            {
               this.var_63 = this.getAvatarImage(_loc7_,this.var_793);
               if(this.var_63 == null)
               {
                  return;
               }
               _loc8_ = true;
               _loc16_ = getSprite(this.const_1070);
               if(_loc16_ && this.var_63 && this.var_63.isPlaceholder())
               {
                  _loc16_.alpha = 150;
               }
               else if(_loc16_)
               {
                  _loc16_.alpha = 255;
               }
            }
            if(this.var_63 == null)
            {
               return;
            }
            this.updateShadow(_loc7_);
            if(_loc9_)
            {
               this.updateTypingBubble(_loc7_);
               this.updateNumberBubble(_loc7_);
            }
            _loc10_ = this.updateObject(_loc5_,param1,param3,true);
            this.updateActions(this.var_63);
            var_102 = _loc7_;
         }
         else
         {
            _loc10_ = this.updateObject(_loc5_,param1,param3);
         }
         var _loc14_:Boolean = _loc10_ || _loc13_ || _loc9_;
         var _loc15_:Boolean = (this.var_1025 || this.var_1247 > 0) && param3;
         if(_loc14_)
         {
            this.var_1247 = const_1071;
         }
         if(_loc14_ || _loc15_)
         {
            increaseUpdateId();
            --this.var_1247;
            --this.var_1246;
            if(!(this.var_1246 <= 0 || _loc9_ || _loc13_ || _loc8_))
            {
               return;
            }
            this.var_63.updateAnimationByFrames(1);
            this.var_1246 = const_1071;
            _loc18_ = this.var_63.getCanvasOffsets();
            if(_loc18_ == null || _loc18_.length < 3)
            {
               _loc18_ = const_1493;
            }
            _loc17_ = getSprite(this.const_1070);
            if(_loc17_ != null)
            {
               _loc21_ = this.var_63.getImage(AvatarSetType.const_42,false);
               if(_loc21_ != null)
               {
                  _loc17_.asset = _loc21_;
               }
               if(_loc17_.asset)
               {
                  _loc17_.offsetX = -1 * _loc7_ / 2 + _loc18_[0];
                  _loc17_.offsetY = -_loc17_.asset.height + _loc7_ / 4 + _loc18_[1] + this.var_1499;
               }
               if(this.var_1211)
               {
                  if(this.var_1833)
                  {
                     _loc17_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc17_.relativeDepth = const_690 + _loc18_[2];
                  }
               }
               else
               {
                  _loc17_.relativeDepth = const_691 + _loc18_[2];
               }
            }
            _loc17_ = getSprite(this.const_2095);
            if(_loc17_ != null && _loc17_.visible)
            {
               if(!this.var_1211)
               {
                  _loc17_.relativeDepth = const_691 - 0.01 + _loc18_[2];
               }
               else
               {
                  _loc17_.relativeDepth = const_690 - 0.01 + _loc18_[2];
               }
            }
            this.var_1025 = this.var_63.isAnimating();
            _loc19_ = this.const_1494;
            for each(_loc20_ in this.var_63.getSprites())
            {
               if(_loc20_.id == const_1072)
               {
                  _loc17_ = getSprite(this.const_1070);
                  _loc22_ = this.var_63.getLayerData(_loc20_);
                  _loc23_ = _loc20_.getDirectionOffsetX(this.var_63.getDirection());
                  _loc24_ = _loc20_.getDirectionOffsetY(this.var_63.getDirection());
                  if(_loc22_ != null)
                  {
                     _loc23_ += _loc22_.dx;
                     _loc24_ += _loc22_.dy;
                  }
                  if(_loc7_ < 48)
                  {
                     _loc23_ /= 2;
                     _loc24_ /= 2;
                  }
                  _loc17_.offsetX += _loc23_;
                  _loc17_.offsetY += _loc24_;
               }
               else
               {
                  _loc17_ = getSprite(_loc19_);
                  if(_loc17_ != null)
                  {
                     _loc17_.capturesMouse = false;
                     _loc17_.visible = true;
                     _loc25_ = this.var_63.getLayerData(_loc20_);
                     _loc26_ = 0;
                     _loc27_ = _loc20_.getDirectionOffsetX(this.var_63.getDirection());
                     _loc28_ = _loc20_.getDirectionOffsetY(this.var_63.getDirection());
                     _loc29_ = _loc20_.getDirectionOffsetZ(this.var_63.getDirection());
                     _loc30_ = 0;
                     if(_loc20_.hasDirections)
                     {
                        _loc30_ = this.var_63.getDirection();
                     }
                     if(_loc25_ != null)
                     {
                        _loc26_ = _loc25_.animationFrame;
                        _loc27_ += _loc25_.dx;
                        _loc28_ += _loc25_.dy;
                        _loc30_ += _loc25_.directionOffset;
                     }
                     if(_loc7_ < 48)
                     {
                        _loc27_ /= 2;
                        _loc28_ /= 2;
                     }
                     if(_loc30_ < 0)
                     {
                        _loc30_ += 8;
                     }
                     else if(_loc30_ > 7)
                     {
                        _loc30_ -= 8;
                     }
                     _loc31_ = this.var_63.getScale() + "_" + _loc20_.member + "_" + _loc30_ + "_" + _loc26_;
                     _loc32_ = this.var_63.getAsset(_loc31_);
                     if(_loc32_ == null)
                     {
                        continue;
                     }
                     _loc17_.asset = _loc32_.content as BitmapData;
                     _loc17_.offsetX = -_loc32_.offset.x - _loc7_ / 2 + _loc27_;
                     _loc17_.offsetY = -_loc32_.offset.y + _loc28_ + this.var_1499;
                     if(this.var_1211)
                     {
                        _loc17_.relativeDepth = const_690 - 0.001 * spriteCount * _loc29_;
                     }
                     else
                     {
                        _loc17_.relativeDepth = const_691 - 0.001 * spriteCount * _loc29_;
                     }
                     if(_loc20_.ink == 33)
                     {
                        _loc17_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc17_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc19_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_430,this.var_279,this.var_1496);
         if(this.var_1497 > 0)
         {
            param1.appendAction(AvatarAction.const_346,AvatarAction.const_2042[this.var_1497]);
         }
         if(this._danceStyle > 0)
         {
            param1.appendAction(AvatarAction.const_149,this._danceStyle);
         }
         if(this.var_1832 > 0)
         {
            param1.appendAction(AvatarAction.const_899,this.var_1832);
         }
         if(this.var_794 > 0)
         {
            param1.appendAction(AvatarAction.const_809,this.var_794);
         }
         if(this.var_642 > 0)
         {
            param1.appendAction(AvatarAction.const_870,this.var_642);
         }
         if(this.var_1837)
         {
            param1.appendAction(AvatarAction.const_355);
         }
         if(this.var_1835 || this.var_1498)
         {
            param1.appendAction(AvatarAction.const_508);
         }
         if(this.var_1831)
         {
            param1.appendAction(AvatarAction.const_301);
         }
         if(this.var_793 > 0)
         {
            param1.appendAction(AvatarAction.const_353,this.var_793);
         }
         param1.endActionAppends();
         this.var_1025 = param1.isAnimating();
         var _loc2_:int = this.const_1494;
         for each(_loc3_ in this.var_63.getSprites())
         {
            if(_loc3_.id != const_1072)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
