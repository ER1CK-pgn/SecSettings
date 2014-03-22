.class public Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsSearchFilterMenu"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemovekeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 5097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5095
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    .line 5098
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    .line 5099
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5100
    return-void
.end method

.method private addRemovePreferenceKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 5327
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5329
    return-void
.end method


# virtual methods
.method public getDynamiRemoveResult(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 5339
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5340
    const/4 v0, 0x0

    .line 5342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initDynamicPreferenceRemovekey()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 5105
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5106
    .local v1, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5107
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5108
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5109
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5110
    const-string v3, "lock_screen_clock_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5111
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5112
    const-string v3, "lock_screen_myprofile_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5113
    const-string v3, "owner_info_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5114
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5115
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5116
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5117
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5118
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5119
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5120
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5121
    const-string v3, "quick_note"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5122
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5123
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5124
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5295
    :cond_0
    :goto_0
    :sswitch_0
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wmanager_connected"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 5296
    .local v2, state:I
    if-ne v2, v6, :cond_10

    .line 5305
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v6, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-nez v3, :cond_2

    .line 5307
    :cond_1
    const-string v3, "sim_lock_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5308
    const-string v3, "sim_toggle"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5309
    const-string v3, "sim_pin"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5313
    :cond_2
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5314
    .local v0, inputMethodId:Ljava/lang/String;
    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5315
    const-string v3, "sip_feedback_sound"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5316
    const-string v3, "sip_feedback_vibration"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5319
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_4

    .line 5320
    const-string v3, "lockscreen_wallpaper"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5321
    const-string v3, "both_wallpaper"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5323
    :cond_4
    return-void

    .line 5126
    .end local v0           #inputMethodId:Ljava/lang/String;
    .end local v2           #state:I
    :cond_5
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5127
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5128
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5129
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5130
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5131
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5132
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_6

    .line 5133
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5134
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5136
    :cond_6
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5137
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5140
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5142
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5143
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5144
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5145
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5146
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5147
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5148
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5149
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5150
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5151
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5153
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5154
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5155
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5156
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5157
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5158
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5159
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5161
    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 5163
    :sswitch_1
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5164
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_a

    .line 5165
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5167
    :cond_a
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5168
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5169
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5170
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5171
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5172
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5173
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5174
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5177
    :sswitch_2
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5178
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5179
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5180
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5181
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5182
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5183
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5184
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5185
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5186
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5189
    :sswitch_3
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5190
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5191
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5192
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5193
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5194
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5195
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5196
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5197
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5198
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5199
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5202
    :sswitch_4
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5203
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5204
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5205
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5206
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5207
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5208
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5209
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5210
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5211
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5216
    :sswitch_5
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5217
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5218
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5219
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5220
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5221
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5222
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5223
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5224
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5225
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5226
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5231
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_d

    .line 5232
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5233
    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5234
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5235
    const-string v3, "safetyzone_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5236
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5237
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5238
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5239
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5240
    const-string v3, "multiple_lock_screen"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5241
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5242
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5243
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5244
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5245
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5246
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5247
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5249
    :cond_c
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5250
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5251
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5252
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5253
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5254
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5255
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5257
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5259
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5260
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5261
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5262
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5263
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5264
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5265
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 5266
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5268
    :cond_e
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5270
    :cond_f
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5271
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5272
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5273
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5274
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5275
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5276
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5277
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5278
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5279
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 5283
    :sswitch_6
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5288
    :sswitch_7
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5301
    .restart local v2       #state:I
    :cond_10
    const-string v3, "unlock_set_smart"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5161
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_5
        0x41000 -> :sswitch_2
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_5
        0x90000 -> :sswitch_4
    .end sparse-switch

    .line 5279
    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_6
        0x40000 -> :sswitch_7
        0x50000 -> :sswitch_7
        0x60000 -> :sswitch_7
    .end sparse-switch
.end method
