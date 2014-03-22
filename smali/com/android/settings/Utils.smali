.class public Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Utils$LengthFilter;,
        Lcom/android/settings/Utils$ApInfo;
    }
.end annotation


# static fields
.field public static AUTO_AIR_VIEW_MODE:I

.field public static final DBG:Z

.field public static FINGER_AIR_VIEW_MODE:I

.field public static MASTER_AIR_VIEW_OFF:I

.field public static MASTER_AIR_VIEW_ON:I

.field public static PEN_AIR_VIEW_MODE:I

.field private static final USER_DRAWABLES:[I

.field private static fileDefaultPath:Ljava/io/File;

.field private static filePath:Ljava/io/File;

.field private static flagForDefaultAp:Z

.field private static mApInfo:[Lcom/android/settings/Utils$ApInfo;

.field private static mBatteryLowState:Z

.field public static mDeviceType:Ljava/lang/String;

.field private static mExistCoverNotePackage:Ljava/lang/Boolean;

.field private static mFeatureChecked:Z

.field private static mFeatureEnabled:Z

.field private static mLowMemoryState:Z

.field private static mRoamingState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    .line 192
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/Utils;->USER_DRAWABLES:[I

    .line 203
    sput-boolean v2, Lcom/android/settings/Utils;->mFeatureChecked:Z

    .line 204
    sput-boolean v2, Lcom/android/settings/Utils;->mFeatureEnabled:Z

    .line 1868
    sput-boolean v2, Lcom/android/settings/Utils;->flagForDefaultAp:Z

    .line 2078
    sput v2, Lcom/android/settings/Utils;->PEN_AIR_VIEW_MODE:I

    .line 2079
    sput v1, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    .line 2080
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/Utils;->AUTO_AIR_VIEW_MODE:I

    .line 2081
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    .line 2082
    const/4 v0, 0x4

    sput v0, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    .line 2202
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0

    .line 192
    nop

    :array_0
    .array-data 0x4
        0x48t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1981
    return-void
.end method

.method public static DisableCloud()Z
    .locals 2

    .prologue
    .line 1836
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1837
    if-eqz v0, :cond_1

    const-string v1, "MAX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TRG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SetAirViewMasterValue(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2085
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2086
    packed-switch p1, :pswitch_data_0

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2088
    :pswitch_0
    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2089
    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2092
    :pswitch_1
    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2093
    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2096
    :pswitch_2
    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2097
    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2100
    :pswitch_3
    const-string v1, "air_view_master_onoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2101
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2102
    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2103
    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2107
    :pswitch_4
    const-string v1, "air_view_master_onoff"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2108
    const-string v1, "air_view_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2109
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    goto :goto_0

    .line 2086
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static autoTurnOffAirMotionEngine(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 802
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 804
    .local v0, mResolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "air_motion_call_accept"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "master_motion"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 806
    :cond_0
    const-string v2, "air_motion_engine"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 807
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    .local v1, motion_changed:Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 809
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 811
    .end local v1           #motion_changed:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static autoTurnOffMotionEngine(Landroid/content/Context;)V
    .locals 28
    .parameter "context"

    .prologue
    .line 725
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 726
    .local v9, mResolver:Landroid/content/ContentResolver;
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 727
    .local v8, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    .line 728
    .local v6, isTablet:Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    .line 730
    .local v7, isVoiceCapable:Z
    const/4 v3, 0x0

    .line 731
    .local v3, detail_motion:I
    const-string v26, "master_motion"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 732
    const-string v26, "motion_zooming"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 734
    .local v24, tiltZoom:I
    const/16 v23, 0x0

    .line 736
    .local v23, tiltScroll:I
    const/4 v15, 0x0

    .line 738
    .local v15, panMove:I
    const-string v26, "motion_pan_to_browse_image"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 740
    .local v14, panBrowse:I
    const/16 v20, 0x0

    .line 742
    .local v20, shake:I
    const/4 v5, 0x0

    .line 744
    .local v5, doubleTap:I
    if-nez v7, :cond_3

    const-string v26, "motion_pick_up"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 746
    .local v22, smartAlert:I
    :goto_0
    if-nez v6, :cond_4

    const-string v26, "motion_pick_up_to_call_out"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 748
    .local v4, directCall:I
    :goto_1
    const/4 v12, 0x1

    .line 750
    .local v12, mute_pause:I
    if-nez v6, :cond_5

    const-string v26, "motion_overturn"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 752
    .local v25, turnover:I
    :goto_2
    and-int v25, v25, v12

    .line 753
    const/16 v18, 0x0

    .line 755
    .local v18, peekViewAlbumsList:I
    const/16 v17, 0x0

    .line 758
    .local v17, peekChapterPreview:I
    or-int v26, v24, v23

    or-int v26, v26, v15

    or-int v26, v26, v14

    or-int v26, v26, v20

    or-int v26, v26, v5

    or-int v26, v26, v22

    or-int v26, v26, v4

    or-int v26, v26, v25

    or-int v26, v26, v18

    or-int v3, v26, v17

    .line 761
    .end local v4           #directCall:I
    .end local v5           #doubleTap:I
    .end local v12           #mute_pause:I
    .end local v14           #panBrowse:I
    .end local v15           #panMove:I
    .end local v17           #peekChapterPreview:I
    .end local v18           #peekViewAlbumsList:I
    .end local v20           #shake:I
    .end local v22           #smartAlert:I
    .end local v23           #tiltScroll:I
    .end local v24           #tiltZoom:I
    .end local v25           #turnover:I
    :cond_0
    const/4 v10, 0x0

    .line 763
    .local v10, motionUnlock:I
    const/4 v2, 0x0

    .line 766
    .local v2, CameraQuickAccess:I
    const/16 v21, 0x0

    .line 767
    .local v21, side_motion:I
    const-string v26, "master_side_motion"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 768
    const-string v26, "side_motion_one_hand_operation"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 769
    .local v13, oneHandOperation:I
    const-string v26, "side_motion_peek"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 771
    .local v16, peek:I
    or-int v21, v13, v16

    .line 773
    .end local v13           #oneHandOperation:I
    .end local v16           #peek:I
    :cond_1
    or-int v26, v3, v10

    or-int v26, v26, v2

    or-int v26, v26, v21

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    const/16 v19, 0x1

    .line 775
    .local v19, result:Z
    :goto_3
    if-eqz v19, :cond_2

    .line 776
    const-string v26, "MotionSettings"

    const-string v27, "Utils.autoTurnOffMotionEngine turn off Motion engine!"

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v26, "motion_engine"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 778
    new-instance v11, Landroid/content/Intent;

    const-string v26, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    .local v11, motion_changed:Landroid/content/Intent;
    const-string v26, "isEnable"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 780
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 782
    .end local v11           #motion_changed:Landroid/content/Intent;
    :cond_2
    return-void

    .line 744
    .end local v2           #CameraQuickAccess:I
    .end local v10           #motionUnlock:I
    .end local v19           #result:Z
    .end local v21           #side_motion:I
    .restart local v5       #doubleTap:I
    .restart local v14       #panBrowse:I
    .restart local v15       #panMove:I
    .restart local v20       #shake:I
    .restart local v23       #tiltScroll:I
    .restart local v24       #tiltZoom:I
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 746
    .restart local v22       #smartAlert:I
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 750
    .restart local v4       #directCall:I
    .restart local v12       #mute_pause:I
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 773
    .end local v4           #directCall:I
    .end local v5           #doubleTap:I
    .end local v12           #mute_pause:I
    .end local v14           #panBrowse:I
    .end local v15           #panMove:I
    .end local v20           #shake:I
    .end local v22           #smartAlert:I
    .end local v23           #tiltScroll:I
    .end local v24           #tiltZoom:I
    .restart local v2       #CameraQuickAccess:I
    .restart local v10       #motionUnlock:I
    .restart local v21       #side_motion:I
    :cond_6
    const/16 v19, 0x0

    goto :goto_3
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1503
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1504
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1505
    const v1, 0x7f090bf7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1506
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/Utils$2;

    invoke-direct {v2, p2}, Lcom/android/settings/Utils$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1512
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1514
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static checkPackageState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v2, 0x0

    .line 2298
    const/4 v1, 0x0

    .line 2301
    .local v1, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2302
    if-eqz v1, :cond_0

    .line 2303
    const/4 v2, 0x1

    .line 2308
    :cond_0
    :goto_0
    return v2

    .line 2307
    :catch_0
    move-exception v0

    .line 2308
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "is"

    .prologue
    .line 1815
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1817
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 1818
    .local v2, i:I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1819
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1820
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1826
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1831
    .end local v2           #i:I
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1827
    .restart local v2       #i:I
    :catch_0
    move-exception v1

    .line 1828
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1822
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #i:I
    :catch_1
    move-exception v1

    .line 1823
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_2
    const-string v3, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1826
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1827
    :catch_2
    move-exception v1

    .line 1828
    const-string v3, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1825
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1826
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1829
    :goto_2
    throw v3

    .line 1827
    :catch_3
    move-exception v1

    .line 1828
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1383
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 1385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v3

    .line 1389
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    move v1, v0

    .line 1390
    :goto_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1392
    if-nez v3, :cond_2

    .line 1393
    const-string v2, "UserSettings"

    const-string v3, "avatarDataStream is null so set default photo"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    if-eqz v1, :cond_4

    .line 1396
    add-int/lit8 v2, v1, -0x1

    .line 1397
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/android/settings/Utils;->USER_DRAWABLES:[I

    sget-object v5, Lcom/android/settings/Utils;->USER_DRAWABLES:[I

    array-length v5, v5

    rem-int/2addr v2, v5

    aget v2, v4, v2

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1399
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1400
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1401
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1402
    :cond_0
    const/4 v0, 0x0

    .line 1411
    :goto_2
    return v0

    .line 1389
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 1404
    :cond_2
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1405
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1406
    invoke-virtual {v5, v4}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1407
    invoke-virtual {v0, v1, v5}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1409
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v0, v2

    .line 1411
    goto :goto_2

    .line 1410
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .parameter "localeStr"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1255
    if-nez p0, :cond_0

    .line 1256
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1264
    :goto_0
    return-object v1

    .line 1257
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1259
    .local v0, brokenDownLocale:[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 1260
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1261
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 1262
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1264
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteWifiFiles()V
    .locals 11

    .prologue
    .line 518
    const-string v3, "/data/misc/wifi/"

    .line 520
    .local v3, folder:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v7, scanFile:Ljava/io/File;
    new-instance v9, Lcom/android/settings/Utils$1;

    invoke-direct {v9}, Lcom/android/settings/Utils$1;-><init>()V

    invoke-virtual {v7, v9}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 532
    .local v6, list:[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 551
    :cond_0
    return-void

    .line 535
    :cond_1
    array-length v9, v6

    if-eqz v9, :cond_0

    .line 541
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 542
    .local v2, file:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, temp:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .local v1, deleteFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 541
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1323
    const/high16 v0, 0x200

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setScrollBarStyle(I)V

    .line 1324
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1325
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 1326
    return-void
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    const/4 v0, 0x0

    .line 1235
    if-nez p0, :cond_1

    .line 1245
    :cond_0
    return-object v0

    .line 1236
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1238
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1240
    const-string v0, ""

    .line 1241
    .local v0, addresses:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1243
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBatteryLowState()Z
    .locals 1

    .prologue
    .line 611
    sget-boolean v0, Lcom/android/settings/Utils;->mBatteryLowState:Z

    return v0
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1273
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1274
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1289
    .line 1291
    const-string v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1292
    const-string v1, "status"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1295
    if-ne v1, v3, :cond_2

    .line 1296
    const v1, 0x7f0900df

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1297
    if-lez v0, :cond_6

    .line 1299
    if-ne v0, v2, :cond_0

    .line 1300
    const v0, 0x7f0900e0

    .line 1306
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1318
    :goto_1
    return-object v0

    .line 1301
    :cond_0
    if-ne v0, v3, :cond_1

    .line 1302
    const v0, 0x7f0900e1

    goto :goto_0

    .line 1304
    :cond_1
    const v0, 0x7f0900e2

    goto :goto_0

    .line 1308
    :cond_2
    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 1309
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1310
    :cond_3
    const/4 v0, 0x4

    if-ne v1, v0, :cond_4

    .line 1311
    const v0, 0x7f0900e4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1312
    :cond_4
    const/4 v0, 0x5

    if-ne v1, v0, :cond_5

    .line 1313
    const v0, 0x7f0900e5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1315
    :cond_5
    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public static getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1228
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1230
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1231
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1428
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1432
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "account_type IS NULL AND account_name IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1438
    if-nez v1, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return-object v4

    .line 1441
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1446
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1444
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    .line 1446
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1450
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data2"

    aput-object v3, v2, v7

    const-string v3, "data3"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "raw_contact_id="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1456
    if-eqz v1, :cond_0

    .line 1459
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 1468
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1446
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1462
    :cond_3
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1464
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 1468
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getLowMemoryState()Z
    .locals 1

    .prologue
    .line 700
    sget-boolean v0, Lcom/android/settings/Utils;->mLowMemoryState:Z

    return v0
.end method

.method public static getLteOnCdmaMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 704
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 705
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    goto :goto_0
.end method

.method public static getMeProfileName(Landroid/content/Context;ZLandroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "full"
    .parameter "user"

    .prologue
    .line 1415
    if-eqz p1, :cond_0

    .line 1416
    invoke-static {p0, p2}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1418
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p2}, Lcom/android/settings/Utils;->getShorterNameIfPossible(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1474
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1476
    if-nez v4, :cond_0

    .line 1496
    :goto_0
    return-object v3

    .line 1479
    :cond_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1496
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1482
    :cond_1
    :try_start_1
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1483
    if-eqz p1, :cond_3

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    move v2, v1

    .line 1485
    :goto_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1486
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1487
    if-eqz v1, :cond_2

    .line 1488
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1489
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 1494
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1496
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1483
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    move v2, v1

    goto :goto_1

    .line 1496
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2262
    const/4 v2, 0x0

    .line 2263
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2265
    if-eqz v1, :cond_0

    .line 2266
    :try_start_0
    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2275
    :goto_0
    if-eqz v1, :cond_2

    .line 2276
    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2277
    if-eqz v1, :cond_1

    .line 2278
    const-string v0, "SETTING_UTILS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ResourceName id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2286
    :goto_1
    return v0

    .line 2268
    :cond_0
    :try_start_1
    const-string v1, "SETTING_UTILS"

    const-string v3, "PackageManager is null!"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2271
    :catch_0
    move-exception v1

    .line 2273
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    .line 2281
    :cond_1
    const-string v1, "SETTING_UTILS"

    const-string v2, "not find resource!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2285
    :cond_2
    const-string v1, "SETTING_UTILS"

    const-string v2, "Resource is null!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getRoamingState()Z
    .locals 1

    .prologue
    .line 592
    sget-boolean v0, Lcom/android/settings/Utils;->mRoamingState:Z

    return v0
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "user"

    .prologue
    .line 1423
    invoke-static {p0}, Lcom/android/settings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, given:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0           #given:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #given:Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "file"

    .prologue
    .line 1796
    const-string v3, ""

    .line 1797
    .local v3, result:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1798
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 1800
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1801
    invoke-static {v2}, Lcom/android/settings/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1806
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1811
    :goto_0
    return-object v3

    .line 1807
    :catch_0
    move-exception v1

    .line 1808
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1802
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1803
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1806
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1807
    :catch_2
    move-exception v1

    .line 1808
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1805
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1806
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1809
    :goto_1
    throw v4

    .line 1807
    :catch_3
    move-exception v1

    .line 1808
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f0906cb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1355
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 1356
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 1357
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 1359
    array-length v0, v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1360
    :goto_0
    array-length v3, v3

    if-eqz v3, :cond_1

    move v3, v1

    .line 1362
    :goto_1
    array-length v5, v5

    if-eqz v5, :cond_2

    .line 1364
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    move v0, v4

    .line 1377
    :goto_3
    return v0

    :cond_0
    move v0, v2

    .line 1359
    goto :goto_0

    :cond_1
    move v3, v2

    .line 1360
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1362
    goto :goto_2

    .line 1366
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    move v0, v4

    .line 1367
    goto :goto_3

    .line 1368
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    move v0, v4

    .line 1369
    goto :goto_3

    .line 1370
    :cond_5
    if-eqz v3, :cond_6

    .line 1371
    const v0, 0x7f0906c8

    goto :goto_3

    .line 1372
    :cond_6
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 1373
    const v0, 0x7f0906ca

    goto :goto_3

    .line 1374
    :cond_7
    if-eqz v0, :cond_8

    .line 1375
    const v0, 0x7f0906c7

    goto :goto_3

    .line 1377
    :cond_8
    const v0, 0x7f0906c9

    goto :goto_3
.end method

.method public static getTetheringSummary(Landroid/net/ConnectivityManager;)I
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f0906cc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1531
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 1532
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 1533
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 1535
    array-length v0, v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1536
    :goto_0
    array-length v3, v3

    if-eqz v3, :cond_1

    move v3, v1

    .line 1538
    :goto_1
    array-length v5, v5

    if-eqz v5, :cond_2

    .line 1542
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    move v0, v4

    .line 1555
    :goto_3
    return v0

    :cond_0
    move v0, v2

    .line 1535
    goto :goto_0

    :cond_1
    move v3, v2

    .line 1536
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1538
    goto :goto_2

    .line 1544
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 1545
    const v0, 0x7f0906ce

    goto :goto_3

    .line 1546
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    move v0, v4

    .line 1547
    goto :goto_3

    .line 1548
    :cond_5
    if-eqz v3, :cond_6

    .line 1549
    const v0, 0x7f0906cf

    goto :goto_3

    .line 1550
    :cond_6
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 1551
    const v0, 0x7f0906cd

    goto :goto_3

    .line 1552
    :cond_7
    if-eqz v0, :cond_8

    .line 1553
    const v0, 0x7f0906d0

    goto :goto_3

    :cond_8
    move v0, v4

    .line 1555
    goto :goto_3
.end method

.method public static getVendorApInfo()[Lcom/android/settings/Utils$ApInfo;
    .locals 2

    .prologue
    .line 1874
    sget-boolean v0, Lcom/android/settings/Utils;->flagForDefaultAp:Z

    if-eqz v0, :cond_0

    .line 1875
    sget-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    .line 1884
    :goto_0
    return-object v0

    .line 1876
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/Utils;->filePath:Ljava/io/File;

    .line 1877
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/Utils;->fileDefaultPath:Ljava/io/File;

    .line 1879
    sget-object v0, Lcom/android/settings/Utils;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1880
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-static {v0}, Lcom/android/settings/Utils;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings/Utils$ApInfo;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    .line 1884
    :goto_1
    sget-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    goto :goto_0

    .line 1882
    :cond_1
    const-string v0, "/system/etc/wifi/default_ap.conf"

    invoke-static {v0}, Lcom/android/settings/Utils;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings/Utils$ApInfo;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    goto :goto_1
.end method

.method private static getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings/Utils$ApInfo;
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1888
    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "AccessPoint"

    const-string v3, "call Utils.getVendorApInfoFromFile()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_0
    sput-boolean v4, Lcom/android/settings/Utils;->flagForDefaultAp:Z

    .line 1891
    const-string v6, ""

    .line 1892
    const-string v5, ""

    .line 1893
    const-string v3, ""

    .line 1898
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    move v3, v1

    .line 1901
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1902
    const-string v9, "ssid=\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1903
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1904
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x22

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1905
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1906
    :cond_2
    const-string v9, "key_mgmt="

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1907
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1908
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1909
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1910
    :cond_3
    const-string v9, "wep_key0="

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1911
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1912
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x3d

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1913
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move v3, v4

    .line 1915
    goto/16 :goto_0

    :cond_4
    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v3, :cond_5

    .line 1916
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ,"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1917
    :cond_5
    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v8

    if-eqz v8, :cond_1

    if-ne v3, v4, :cond_1

    move v3, v1

    .line 1918
    goto/16 :goto_0

    .line 1925
    :cond_6
    if-eqz v2, :cond_7

    .line 1927
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1935
    :cond_7
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1936
    const-string v3, ","

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1937
    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1938
    array-length v5, v2

    array-length v6, v3

    if-eq v5, v6, :cond_a

    .line 1939
    const-string v1, "AccessPoint"

    const-string v2, "Parse error default ap"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_8
    :goto_1
    return-object v0

    .line 1928
    :catch_0
    move-exception v1

    .line 1929
    const-string v2, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1921
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 1922
    :goto_2
    :try_start_3
    const-string v3, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1925
    if-eqz v2, :cond_8

    .line 1927
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1928
    :catch_2
    move-exception v1

    .line 1929
    const-string v2, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1925
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_9

    .line 1927
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1930
    :cond_9
    throw v1

    .line 1928
    :catch_3
    move-exception v1

    .line 1929
    const-string v2, "Utils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1943
    :cond_a
    array-length v5, v2

    .line 1944
    new-array v0, v5, [Lcom/android/settings/Utils$ApInfo;

    .line 1945
    :goto_4
    if-ge v1, v5, :cond_8

    .line 1946
    aget-object v6, v3, v1

    const-string v7, "NONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, ""

    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1947
    const-string v6, "WEP"

    aput-object v6, v3, v1

    .line 1949
    :cond_b
    new-instance v6, Lcom/android/settings/Utils$ApInfo;

    aget-object v7, v2, v1

    aget-object v8, v3, v1

    invoke-direct {v6, v7, v8}, Lcom/android/settings/Utils$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v0, v1

    .line 1950
    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_c

    const-string v6, "AccessPoint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DefaultAp["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v1

    invoke-virtual {v8}, Lcom/android/settings/Utils$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v1

    invoke-virtual {v8}, Lcom/android/settings/Utils$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1925
    :catchall_1
    move-exception v1

    goto/16 :goto_3

    .line 1921
    :catch_4
    move-exception v1

    goto/16 :goto_2
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1215
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1217
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1218
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static has7StepsFontSizeFeature()Z
    .locals 1

    .prologue
    .line 2168
    const/4 v0, 0x1

    return v0
.end method

.method public static has7StepsHugeFontIndex()I
    .locals 1

    .prologue
    .line 2174
    const/4 v0, 0x6

    return v0
.end method

.method public static has7StepsLargeFontScale()F
    .locals 1

    .prologue
    .line 2181
    const v0, 0x3faf5c29

    return v0
.end method

.method public static hasDAForLockscreenShortcut()Z
    .locals 2

    .prologue
    .line 2442
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Germany"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Australia"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized hasFingerprintFeature(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 2056
    const-class v1, Lcom/android/settings/Utils;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/settings/Utils;->mFeatureChecked:Z

    if-eqz v0, :cond_0

    .line 2057
    sget-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    :goto_0
    monitor-exit v1

    return v0

    .line 2060
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z

    .line 2061
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/Utils;->mFeatureChecked:Z

    .line 2062
    sget-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2056
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1518
    if-nez p0, :cond_0

    .line 1527
    :goto_0
    return v2

    .line 1522
    :cond_0
    :try_start_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    const-string v0, "Utils"

    const-string v1, "Cannot get Multi-user info"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1560
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1561
    const/4 v0, 0x1

    .line 1563
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1569
    :goto_0
    return v0

    .line 1564
    :catch_0
    move-exception v0

    .line 1565
    const/4 v0, 0x0

    .line 1566
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z
    .locals 8
    .parameter "context"
    .parameter "include_external_motion_settings"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 820
    .local v4, mResolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    :cond_0
    const/4 v2, 0x0

    .line 822
    .local v2, airWakeUp:I
    const-string v7, "air_motion_scroll"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 823
    .local v0, airScroll:I
    const-string v7, "air_motion_turn"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 825
    .local v1, airTurn:I
    if-eqz p1, :cond_1

    const-string v7, "air_motion_call_accept"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 828
    .local v3, callAccept:I
    :goto_0
    or-int v7, v2, v0

    or-int/2addr v7, v1

    or-int/2addr v7, v3

    if-ge v7, v5, :cond_2

    :goto_1
    return v5

    .end local v3           #callAccept:I
    :cond_1
    move v3, v6

    .line 825
    goto :goto_0

    .restart local v3       #callAccept:I
    :cond_2
    move v5, v6

    .line 828
    goto :goto_1
.end method

.method public static isAllAirViewOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .parameter "cr"

    .prologue
    .line 2115
    invoke-static {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/AirViewSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2118
    const/4 v0, 0x1

    .line 2120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAllMotionDisabled2014(Landroid/content/Context;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 836
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 837
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    .line 838
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    .line 846
    const-string v3, "air_motion_scroll"

    invoke-static {v4, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 847
    const-string v3, "air_motion_turn"

    invoke-static {v4, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 848
    if-eqz v0, :cond_2

    const-string v0, "motion_pick_up"

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v3, v0

    .line 850
    :goto_0
    if-nez v5, :cond_3

    const-string v0, "motion_pick_up_to_call_out"

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 852
    :goto_1
    if-eqz v5, :cond_0

    :cond_0
    const-string v5, "motion_merged_mute_pause"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 855
    const-string v8, "surface_palm_swipe"

    invoke-static {v4, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 858
    or-int/2addr v6, v7

    or-int/2addr v3, v6

    or-int/2addr v0, v3

    or-int/2addr v0, v5

    or-int/2addr v0, v4

    if-ge v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    move v3, v1

    .line 848
    goto :goto_0

    :cond_3
    move v0, v1

    .line 850
    goto :goto_1
.end method

.method public static isAutoAirViewSupported()Z
    .locals 1

    .prologue
    .line 2068
    const/4 v0, 0x1

    return v0
.end method

.method public static isBatteryPresent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "batteryChangedIntent"

    .prologue
    .line 1269
    const-string v0, "present"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isChinaModel()Z
    .locals 3

    .prologue
    .line 1702
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1703
    if-eqz v0, :cond_1

    const-string v1, "CHZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CMCC"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CU"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentAirmotionAllItemDisabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .parameter "cr"

    .prologue
    .line 2140
    invoke-static {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    const/4 v0, 0x1

    .line 2143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2124
    const-string v2, "air_view_mode"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2126
    if-nez v2, :cond_1

    .line 2127
    invoke-static {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2136
    :cond_0
    :goto_0
    return v0

    .line 2129
    :cond_1
    if-ne v2, v0, :cond_3

    .line 2130
    invoke-static {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 2136
    goto :goto_0

    .line 2132
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2133
    invoke-static {p0}, Lcom/android/settings/Utils;->isAllAirViewOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public static isCurrentMotionAllItemDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z
    .locals 1
    .parameter "cr"
    .parameter "c"

    .prologue
    .line 2147
    invoke-static {p0, p1}, Lcom/android/settings/motion2013/MotionSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2148
    const/4 v0, 0x1

    .line 2150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentPalmMotionAllItemDisabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .parameter "cr"

    .prologue
    .line 2154
    invoke-static {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    const/4 v0, 0x1

    .line 2157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDCMRequestOpsPackage(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1728
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    .line 1731
    const-string v3, "DCM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1769
    :cond_0
    :goto_0
    return v0

    .line 1736
    :cond_1
    const/16 v2, 0x16

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "com.nttdocomo.android.osv"

    aput-object v2, v3, v0

    const-string v2, "com.nttdocomo.android.fota"

    aput-object v2, v3, v1

    const/4 v2, 0x2

    const-string v4, "com.nttdocomo.android.anmane"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "com.rsupport.rsperm.ntt"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "com.nttdocomo.android.remotelock"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "com.nttdocomo.android.wipe"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "com.nttdocomo.android.areamail"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "com.android.contacts"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "com.nttdocomo.android.socialphonebook"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "com.android.phone"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "com.android.dialer"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    const-string v4, "com.nttdocomo.android.idmanager"

    aput-object v4, v3, v2

    const/16 v2, 0xc

    const-string v4, "com.nttdocomo.android.pf.dcmippushaggregator"

    aput-object v4, v3, v2

    const/16 v2, 0xd

    const-string v4, "com.nttdocomo.android.pf.dcmwappush"

    aput-object v4, v3, v2

    const/16 v2, 0xe

    const-string v4, "com.android.smspush"

    aput-object v4, v3, v2

    const/16 v2, 0xf

    const-string v4, "com.nttdocomo.android.accountauthenticator"

    aput-object v4, v3, v2

    const/16 v2, 0x10

    const-string v4, "com.nttdocomo.android.applicationmanager"

    aput-object v4, v3, v2

    const/16 v2, 0x11

    const-string v4, "jp.co.nttdocomo.lcsapp"

    aput-object v4, v3, v2

    const/16 v2, 0x12

    const-string v4, "jp.co.nttdocomo.lcsappsub"

    aput-object v4, v3, v2

    const/16 v2, 0x13

    const-string v4, "jp.co.nttdocomo.lcsappbuzzer"

    aput-object v4, v3, v2

    const/16 v2, 0x14

    const-string v4, "jp.co.nttdocomo.saigaiban"

    aput-object v4, v3, v2

    const/16 v2, 0x15

    const-string v4, "jp.co.nttdocomo.anshinmode"

    aput-object v4, v3, v2

    .line 1761
    if-eqz v3, :cond_0

    .line 1762
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 1763
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    .line 1764
    goto/16 :goto_0

    .line 1762
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isDCMhome(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 1773
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1775
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1776
    const/4 v0, 0x0

    .line 1779
    :goto_0
    return v0

    :cond_0
    const-string v0, "com.nttdocomo.android.dhome"

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->isPreffered(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isDomesticKTTModel()Z
    .locals 2

    .prologue
    .line 1674
    const-string v0, "KTT"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDomesticLGTModel()Z
    .locals 2

    .prologue
    .line 1678
    const-string v0, "LGT"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDomesticModel()Z
    .locals 2

    .prologue
    .line 1666
    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDomesticSKTModel()Z
    .locals 2

    .prologue
    .line 1670
    const-string v0, "SKT"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDualFolderType(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 2074
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEasyMode30Status(Landroid/content/ContentResolver;)Z
    .locals 1
    .parameter "cr"

    .prologue
    .line 2194
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnableGlance(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2218
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 2220
    const/4 v2, 0x2

    if-eq v2, v1, :cond_0

    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    .line 2221
    :cond_0
    const-string v1, "SETTING_UTILS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is diabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    :goto_0
    return v0

    .line 2224
    :cond_1
    const-string v1, "SETTING_UTILS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2225
    const/4 v0, 0x1

    goto :goto_0

    .line 2227
    :catch_0
    move-exception v1

    .line 2228
    const-string v1, "SETTING_UTILS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isExistCoverNotePackage(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 2205
    sget-object v0, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2207
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.android.daynote"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 2209
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2214
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2210
    :catch_0
    move-exception v0

    .line 2211
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isFavorite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2424
    .line 2425
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "key"

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2426
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2428
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 2430
    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public static isFolderModel(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 1792
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGridSettingEnabed()Z
    .locals 1

    .prologue
    .line 1859
    const/4 v0, 0x0

    return v0
.end method

.method public static isH_Device()Z
    .locals 2

    .prologue
    .line 2448
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2449
    if-eqz v0, :cond_1

    const-string v1, "SM-N900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ASH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Madrid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JS01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SC-01F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SC-02F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-G910"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2453
    :cond_0
    const/4 v0, 0x1

    .line 2455
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHelpHubDownloadableSupported()Z
    .locals 1

    .prologue
    .line 2294
    const/4 v0, 0x0

    return v0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 968
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 969
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 970
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 971
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isJOnlySearchEnable()Z
    .locals 1

    .prologue
    .line 1864
    const/4 v0, 0x0

    return v0
.end method

.method public static isJ_Device()Z
    .locals 2

    .prologue
    .line 2459
    const-string v0, "ro.product.name"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2460
    if-eqz v0, :cond_1

    .line 2461
    const-string v1, "jflte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ja3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ks01lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2464
    :cond_0
    const/4 v0, 0x1

    .line 2467
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJapanModel()Z
    .locals 2

    .prologue
    .line 1722
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1723
    if-eqz v0, :cond_1

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XJP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLTE(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 553
    invoke-static {p0}, Lcom/android/settings/Utils;->getLteOnCdmaMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 466
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 467
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "lightTheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 470
    :goto_0
    return v0

    .line 469
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    .line 470
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "lightTheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isListUI(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, ret:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_listui"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 278
    const/4 v0, 0x1

    .line 280
    :cond_0
    return v0
.end method

.method public static isLockTypeEnabled()Z
    .locals 1

    .prologue
    .line 2199
    const/4 v0, 0x1

    return v0
.end method

.method public static isMessageCapable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 447
    const-string v1, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, model:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "KC100S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KC100K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method private static isPreffered(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 1783
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1784
    .local v1, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1785
    .local v0, componentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1786
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v0, p0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 1788
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSearchEnable()Z
    .locals 1

    .prologue
    .line 1843
    const/4 v0, 0x1

    return v0
.end method

.method public static isSearchVerTwoEnable()Z
    .locals 1

    .prologue
    .line 1852
    const/4 v0, 0x0

    return v0
.end method

.method public static isSettingsUI2013Supported()Z
    .locals 1

    .prologue
    .line 2162
    const/4 v0, 0x1

    return v0
.end method

.method public static isSimMissing(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 474
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 475
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v4, "phone2"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 476
    .local v3, telephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_0
    const/4 v0, 0x0

    .line 477
    .local v0, isDataOnly_Sim:Z
    const/4 v1, 0x0

    .line 479
    .local v1, isSimMissing:Z
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v5, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isLTE(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 482
    :cond_1
    const-string v4, "Settings"

    const-string v5, "isSimMissing : true"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v1, 0x1

    .line 513
    :cond_2
    const-string v4, "Settings"

    const-string v5, "isSimMissing : false"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return v1
.end method

.method public static isSupportHelpMenu(Landroid/content/Context;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2024
    .line 2025
    const/4 v4, 0x0

    .line 2027
    :try_start_0
    const-string v2, "com.samsung.helphub"

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2028
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 2034
    :goto_0
    if-ne v3, v0, :cond_0

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_1
    return v0

    .line 2030
    :catch_0
    move-exception v2

    move v3, v1

    .line 2031
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v4

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2034
    goto :goto_1

    .line 2030
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static isSupportLightSensor(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2038
    .line 2040
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 2042
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    move v2, v1

    .line 2043
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2044
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 2046
    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    .line 2047
    const/4 v2, 0x1

    .line 2043
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2051
    :cond_1
    return v2
.end method

.method public static isSupportMenuTreeForK()Z
    .locals 1

    .prologue
    .line 2438
    const/4 v0, 0x0

    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 458
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 459
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 462
    :goto_0
    return v0

    .line 461
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    .line 462
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 896
    const/16 v1, 0x3a

    .line 897
    .local v1, ENABLED_SERVICES_SEPARATOR:C
    const-string v0, "com.google.android.marvin.talkback"

    .line 898
    .local v0, DEFAULT_SCREENREADER_NAME:Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v6, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 900
    .local v6, sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    if-nez p0, :cond_1

    .line 924
    :cond_0
    :goto_0
    return v7

    .line 903
    :cond_1
    const/4 v5, 0x0

    .line 904
    .local v5, enabledServicesSetting:Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 905
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 907
    :cond_2
    if-nez v5, :cond_3

    .line 908
    const-string v5, ""

    .line 911
    :cond_3
    move-object v2, v6

    .line 913
    .local v2, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 915
    :cond_4
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 916
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 917
    .local v3, componentNameString:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 919
    .local v4, enabledService:Landroid/content/ComponentName;
    if-eqz v4, :cond_4

    .line 920
    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 921
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 17
    .parameter

    .prologue
    .line 983
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 984
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 985
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0908f2

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    const/4 v1, 0x0

    .line 1000
    const/4 v4, 0x0

    .line 1006
    const-string v2, "air_motion_engine"

    const/4 v3, 0x0

    invoke-static {v6, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f090edd

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1012
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    const-string v0, "air_view_master_onoff"

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1020
    :goto_0
    const-string v3, "pen_hovering"

    const/4 v9, 0x0

    invoke-static {v6, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090fa1

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1029
    const-string v3, "assistant_menu"

    const/4 v10, 0x0

    invoke-static {v6, v3, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 1030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090d87

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1035
    const-string v3, "intelligent_sleep_mode"

    const/4 v11, 0x0

    invoke-static {v6, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1036
    const-string v11, "intelligent_rotation_mode"

    const/4 v12, 0x0

    invoke-static {v6, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 1037
    const-string v12, "smart_pause"

    const/4 v13, 0x0

    invoke-static {v6, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1038
    const-string v13, "smart_scroll"

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 1039
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "\n- "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v14, 0x7f0910d8

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1040
    or-int/2addr v3, v11

    or-int/2addr v3, v12

    or-int v11, v3, v13

    .line 1044
    const/16 v3, 0x7e

    .line 1045
    const-string v12, "access_control_use"

    const/4 v13, 0x0

    invoke-static {v6, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1046
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "\n- "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v13, 0x7f0908b4

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1049
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.sec.feature.multiwindow"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1050
    const/16 v3, 0x7f

    .line 1051
    const-string v1, "multi_window_enabled"

    const/4 v13, 0x1

    invoke-static {v6, v1, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1052
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "\n- "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v13, 0x7f0905b4

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1055
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v13

    if-nez v13, :cond_2

    move/from16 v16, v4

    move v4, v3

    move-object v3, v2

    move/from16 v2, v16

    .line 1062
    :goto_1
    add-int/lit16 v4, v4, 0x100

    .line 1063
    const-string v13, "surface_motion_engine"

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 1064
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "\n- "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v14, 0x7f090ecb

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1068
    const-string v14, "any_screen_enabled"

    const/4 v15, 0x0

    invoke-static {v6, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1069
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "\n- "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v14, 0x7f09125a

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1072
    or-int v5, v12, v10

    or-int/2addr v5, v8

    or-int/2addr v0, v5

    or-int/2addr v0, v9

    or-int/2addr v0, v11

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    or-int/2addr v0, v13

    or-int/2addr v0, v6

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 1074
    :goto_2
    const-string v1, "is_enabled"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1075
    const-string v0, "option_flag"

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1076
    const-string v0, "dialog_content"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    return-object v7

    .line 1015
    :cond_1
    const-string v0, "finger_air_view"

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    .line 1056
    :cond_2
    add-int/lit16 v4, v3, 0x80

    .line 1057
    const-string v3, "pen_writing_buddy"

    const/4 v13, 0x0

    invoke-static {v6, v3, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1058
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "\n- "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v13, 0x7f090deb

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v16, v3

    move-object v3, v2

    move/from16 v2, v16

    goto/16 :goto_1

    .line 1072
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 442
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 444
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 452
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 454
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static loadMySettings(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 2330
    const-string v0, "Favorite"

    const-string v1, "loadMySettings"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2334
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2336
    const-string v0, "Favorite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v6

    .line 2340
    :goto_0
    const-string v0, "key"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2341
    const-string v4, "Favorite"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v0, v5, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2343
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2345
    add-int/lit8 v0, v1, 0x1

    .line 2346
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2348
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FREQUENT_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "count desc"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2352
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2354
    const-string v0, "Favorite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequent count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v6

    .line 2358
    :goto_1
    const-string v0, "count"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2359
    const-string v4, "Favorite"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rank: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    const-string v0, "key"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2361
    const-string v4, "Favorite"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v0, v5, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2365
    add-int/lit8 v0, v1, 0x1

    .line 2366
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2368
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2370
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2371
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 2372
    const v1, 0x7f090024

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 2373
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v6

    .line 2375
    :goto_2
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2376
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2375
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2379
    :cond_2
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 2380
    const v1, 0x7f09001a

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 2381
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2383
    :goto_3
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 2384
    const/4 v0, 0x6

    if-ne v6, v0, :cond_4

    .line 2387
    :cond_3
    return-void

    .line 2385
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2383
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move v1, v0

    goto/16 :goto_1

    :cond_6
    move v1, v0

    goto/16 :goto_0
.end method

.method public static makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1593
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1594
    :cond_0
    const-string v1, "Utils"

    const-string v2, "makeStringWithImage - str or drawable is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :goto_0
    return-object v0

    .line 1596
    :cond_1
    const-string v1, "%s"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1597
    const-string v1, "Utils"

    const-string v2, "makeStringWithImage - %s is not in str"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1600
    :cond_2
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1601
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1602
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, p1, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 1603
    const-string v2, "%s"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1604
    add-int/lit8 v3, v2, 0x2

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1609
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1611
    const-string v2, "ar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ur"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "iw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1612
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1618
    :goto_0
    if-eqz v1, :cond_1

    if-nez p1, :cond_3

    .line 1619
    :cond_1
    const-string v1, "Utils"

    const-string v2, "makeStringWithImage - str or drawable is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :goto_1
    return-object v0

    .line 1614
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1621
    :cond_3
    const-string v2, "%s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1622
    const-string v1, "Utils"

    const-string v2, "makeStringWithImage - %s is not in str"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1625
    :cond_4
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1626
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v4, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1627
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, p1, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 1628
    const-string v3, "%s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1629
    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x11

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1335
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    const/high16 v3, 0x200

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 1336
    :goto_0
    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_0

    .line 1337
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 1339
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1340
    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1341
    const v1, 0x7f0f0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1344
    const v3, 0x7f0f0241

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1345
    const v4, 0x7f0f0242

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1346
    invoke-virtual {p2, v3, v2, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1348
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1335
    goto :goto_0
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1686
    const-string v0, ""

    .line 1688
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1689
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1690
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1695
    :cond_0
    :goto_0
    return-object v0

    .line 1692
    :catch_0
    move-exception v1

    .line 1693
    const-string v1, "Utils"

    const-string v2, "readSalesCode failed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeFavorite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2413
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "key"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2414
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2415
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2416
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2417
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2421
    :goto_0
    return-void

    .line 2419
    :cond_0
    const-string v0, "Favorite"

    const-string v1, "no data!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2237
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901af

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090f9c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/Utils$3;

    invoke-direct {v2, p1}, Lcom/android/settings/Utils$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2258
    return-void
.end method

.method public static saveFavorite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2407
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2408
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2410
    return-void
.end method

.method public static saveFrequent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2390
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FREQUENT_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "key"

    aput-object v5, v2, v3

    const-string v3, "count"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2391
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2392
    const-string v1, "count"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2393
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2394
    const-string v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    const-string v3, "count"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/settings/favorite/MySettingsProvider;->FREQUENT_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v2, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2397
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2404
    :goto_0
    return-void

    .line 2399
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2400
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    const-string v1, "count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2402
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/favorite/MySettingsProvider;->FREQUENT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public static showDialogPopup(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 2313
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2314
    const v1, 0x7f0901af

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2315
    const v1, 0x7f091747

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2317
    const v1, 0x7f091616

    new-instance v2, Lcom/android/settings/Utils$4;

    invoke-direct {v2}, Lcom/android/settings/Utils$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2324
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2325
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2326
    return-void
.end method

.method public static turnOffAllMotionMaster(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 877
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 879
    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 882
    invoke-static {p0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    .line 885
    invoke-static {p0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 888
    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 889
    return-void
.end method

.method public static turnOffTalkBack(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/16 v11, 0x3a

    const/4 v8, 0x0

    .line 932
    const/16 v1, 0x3a

    .line 933
    .local v1, ENABLED_SERVICES_SEPARATOR:C
    const-string v0, "com.google.android.marvin.talkback"

    .line 934
    .local v0, DEFAULT_SCREENREADER_NAME:Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v6, v11}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 936
    .local v6, sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 938
    .local v5, enabledServicesSetting:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 964
    :cond_0
    :goto_0
    return v8

    .line 941
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 946
    .local v2, builder:Ljava/lang/StringBuilder;
    move-object v3, v6

    .line 947
    .local v3, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 949
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 950
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 952
    .local v4, componentNameString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 953
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 956
    :cond_3
    if-eqz v4, :cond_2

    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 957
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 961
    .end local v4           #componentNameString:Ljava/lang/String;
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.settings.action.talkback_off"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .local v7, talk_back_off:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 963
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 964
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1085
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1088
    and-int/lit8 v1, p1, 0x20

    if-lez v1, :cond_0

    .line 1089
    const-string v1, "Utils"

    const-string v2, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1091
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.assistantmenu"

    const-string v4, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1095
    const-string v1, "Utils"

    const-string v2, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_0
    and-int/lit8 v1, p1, 0x10

    if-lez v1, :cond_1

    .line 1100
    const-string v1, "Utils"

    const-string v2, "turnOffTalkBackExclusiveOptions - 0x10"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1103
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1104
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1138
    :cond_1
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_2

    .line 1139
    const-string v1, "Utils"

    const-string v2, "turnOffTalkBackExclusiveOptions - 0x08"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1141
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 1147
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1148
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1149
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1153
    :cond_2
    and-int/lit8 v1, p1, 0x40

    if-lez v1, :cond_3

    .line 1154
    const-string v1, "Utils"

    const-string v2, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const-string v1, "access_control_use"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1156
    const-string v1, "direct_access_control"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1157
    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1158
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1159
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.accesscontrol"

    const-string v4, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1161
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1162
    const-string v1, "Utils"

    const-string v2, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_4

    .line 1167
    const-string v1, "Utils"

    const-string v2, "turnOffTalkBackExclusiveOptions - 0x04"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1172
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_5

    .line 1173
    const-string v1, "Utils"

    const-string v2, "turnOffTalkBackExclusiveOptions - 0x02"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1175
    const-string v1, "intelligent_rotation_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1176
    const-string v1, "smart_pause"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1177
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1178
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1179
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1180
    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1181
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1183
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1187
    :cond_5
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_6

    .line 1188
    const-string v1, "Utils"

    const-string v2, "turnOffTalkBackExclusiveOptions - 0x01"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1193
    :cond_6
    and-int/lit16 v1, p1, 0x80

    if-lez v1, :cond_7

    .line 1194
    const-string v1, "Utils"

    const-string v2, "turnOffTalkBackExclusiveOptions - 0x80"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-string v1, "pen_writing_buddy"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1198
    :cond_7
    and-int/lit16 v1, p1, 0x100

    if-lez v1, :cond_8

    .line 1199
    const-string v1, "Utils"

    const-string v2, "turnOffTalkBackExclusiveOptions - 0x100"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1204
    :cond_8
    const-string v1, "any_screen_enabled"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1206
    return-void

    .line 1143
    :cond_9
    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1144
    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public static turnOnAirMotionEngine(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 788
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 790
    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "air_motion_engine"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 791
    const-string v2, "air_motion_engine"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 792
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .local v1, motion_changed:Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 796
    .end local v1           #motion_changed:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static turnOnAllMotionMaster(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 862
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 864
    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 867
    invoke-static {p0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 870
    invoke-static {p0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 873
    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 874
    return-void
.end method

.method public static turnOnMotionEngine(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 713
    const-string v2, "MotionSettings"

    const-string v3, "Utils.turnOnMotionEngine turn on Motion engine!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 715
    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v2, "motion_engine"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 716
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v1, motion_changed:Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 718
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 719
    return-void
.end method

.method public static updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 15
    .parameter "context"
    .parameter
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/preference/PreferenceActivity$Header;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 375
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 378
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v12, 0x80

    invoke-virtual {v7, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 379
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 380
    .local v5, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 381
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 382
    .local v9, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    .line 384
    const/4 v2, 0x0

    .line 385
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    .line 386
    .local v11, title:Ljava/lang/String;
    const/4 v10, 0x0

    .line 390
    .local v10, summary:Ljava/lang/String;
    :try_start_0
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 392
    .local v8, res:Landroid/content/res/Resources;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v12, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 394
    .local v6, metaData:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    .line 395
    const-string v12, "com.android.settings.icon"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 396
    const-string v12, "com.android.settings.title"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 397
    const-string v12, "com.android.settings.summary"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 407
    .end local v6           #metaData:Landroid/os/Bundle;
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 408
    invoke-virtual {v9, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 414
    :cond_1
    move-object/from16 v0, p2

    iput-object v11, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 415
    move-object/from16 v0, p2

    iput-object v10, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 417
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p2

    iput-object v12, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 420
    const/4 v12, 0x1

    .line 428
    .end local v1           #i:I
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v10           #summary:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :goto_2
    return v12

    .line 380
    .restart local v1       #i:I
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v9       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v1           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 428
    const/4 v12, 0x0

    goto :goto_2

    .line 401
    .restart local v1       #i:I
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v9       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v10       #summary:Ljava/lang/String;
    .restart local v11       #title:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 399
    :catch_1
    move-exception v12

    goto :goto_1
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 10
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    .line 215
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 216
    .local v5, preference:Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 249
    :goto_0
    return v7

    .line 220
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 221
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 224
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 225
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 226
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 227
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 228
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 232
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 236
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 238
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 226
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
