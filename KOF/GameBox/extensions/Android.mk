LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := cocos_extension_static

LOCAL_MODULE_FILENAME := libextension

LOCAL_SRC_FILES := AssetsManager/AssetsManager.cpp \
crypto/CCCrypto.cpp \
crypto/md5/md5.c \
crypto/sha1/sha1.cpp \
CCBReader/CCBFileLoader.cpp \
CCBReader/CCBReader.cpp \
CCBReader/CCControlButtonLoader.cpp \
CCBReader/CCControlLoader.cpp \
CCBReader/CCLabelBMFontLoader.cpp \
CCBReader/CCLabelTTFLoader.cpp \
CCBReader/CCLayerColorLoader.cpp \
CCBReader/CCLayerGradientLoader.cpp \
CCBReader/CCLayerLoader.cpp \
CCBReader/CCMenuItemImageLoader.cpp \
CCBReader/CCMenuItemLoader.cpp \
CCBReader/CCNodeLoader.cpp \
CCBReader/CCNodeLoaderLibrary.cpp \
CCBReader/CCParticleSystemQuadLoader.cpp \
CCBReader/CCScale9SpriteLoader.cpp \
CCBReader/CCScrollViewLoader.cpp \
CCBReader/CCSpriteLoader.cpp \
CCBReader/CCBAnimationManager.cpp \
CCBReader/CCBKeyframe.cpp \
CCBReader/CCBSequence.cpp \
CCBReader/CCBSequenceProperty.cpp \
CCBReader/CCBValue.cpp \
CCBReader/CCData.cpp \
CCBReader/CCNode+CCBRelativePositioning.cpp \
GUI/CCControlExtension/CCControl.cpp \
GUI/CCControlExtension/CCControlButton.cpp \
GUI/CCControlExtension/CCControlColourPicker.cpp \
GUI/CCControlExtension/CCControlHuePicker.cpp \
GUI/CCControlExtension/CCControlSaturationBrightnessPicker.cpp \
GUI/CCControlExtension/CCControlSlider.cpp \
GUI/CCControlExtension/CCControlSwitch.cpp \
GUI/CCControlExtension/CCControlUtils.cpp \
GUI/CCControlExtension/CCInvocation.cpp \
GUI/CCControlExtension/CCScale9Sprite.cpp \
GUI/CCControlExtension/CCControlPotentiometer.cpp \
GUI/CCControlExtension/CCControlStepper.cpp \
GUI/CCScrollView/CCScrollView.cpp \
GUI/CCScrollView/CCTableView.cpp \
GUI/CCScrollView/CCTableViewCell.cpp \
GUI/CCScrollView/CCSorting.cpp \
GUI/CCEditBox/CCEditBox.cpp \
GUI/CCEditBox/CCEditBoxImplAndroid.cpp \
network/HttpClient.cpp \
physics_nodes/CCPhysicsDebugNode.cpp \
physics_nodes/CCPhysicsSprite.cpp \
LocalStorage/LocalStorageAndroid.cpp \
crypto/base64/libb64.c

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_curl_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../GameBox/GameEngine \
		    $(LOCAL_PATH)/../scripting/lua/cocos2dx_support \
		    $(LOCAL_PATH)/../scripting/lua/lua \
		    $(LOCAL_PATH)/../scripting/lua/tolua \
		    $(LOCAL_PATH)/network \
		    $(LOCAL_PATH)/crypto \
		    $(LOCAL_PATH)/crypto/md5 \
		    $(LOCAL_PATH)/crypto/sha1 \
		    $(LOCAL_PATH)/crypto/base64 \
		   $(LOCAL_PATH)/../cocos2dx \
		   $(LOCAL_PATH)/../cocos2dx/platform \
		   $(LOCAL_PATH)/../cocos2dx/platform/android


LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH) \
                           $(LOCAL_PATH)/CCBReader \
                           $(LOCAL_PATH)/GUI/CCControlExtension \
                           $(LOCAL_PATH)/GUI/CCScrollView \
                           $(LOCAL_PATH)/network \
                           $(LOCAL_PATH)/LocalStorage \
                           $(LOCAL_PATH)/../GameBox/GameEngine \
		   	   $(LOCAL_PATH)/crypto \
		   	   $(LOCAL_PATH)/crypto/md5 \
		  	   $(LOCAL_PATH)/crypto/sha1 \
		  	   $(LOCAL_PATH)/crypto/base64 \
		  	   $(LOCAL_PATH)/../cocos2dx \
		  	   $(LOCAL_PATH)/../cocos2dx/platform \
		  	   $(LOCAL_PATH)/../cocos2dx/platform/android
                    
include $(BUILD_STATIC_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,CocosDenshion/android)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)