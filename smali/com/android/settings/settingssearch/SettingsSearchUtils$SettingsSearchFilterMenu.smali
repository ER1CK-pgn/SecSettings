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
    .line 5102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    .line 5103
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    .line 5104
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5105
    return-void
.end method

.method private addRemovePreferenceKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 5332
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5334
    return-void
.end method


# virtual methods
.method public getDynamiRemoveResult(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 5344
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5345
    const/4 v0, 0x0

    .line 5347
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

    .line 5110
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5111
    .local v1, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5112
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5113
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5114
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5115
    const-string v3, "lock_screen_clock_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5116
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5117
    const-string v3, "lock_screen_myprofile_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5118
    const-string v3, "owner_info_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5119
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5120
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5121
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5122
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5123
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5124
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5125
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5126
    const-string v3, "quick_note"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5127
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5128
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5129
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5300
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

    .line 5301
    .local v2, state:I
    if-ne v2, v6, :cond_10

    .line 5310
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

    .line 5312
    :cond_1
    const-string v3, "sim_lock_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5313
    const-string v3, "sim_toggle"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5314
    const-string v3, "sim_pin"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5318
    :cond_2
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5319
    .local v0, inputMethodId:Ljava/lang/String;
    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5320
    const-string v3, "sip_feedback_sound"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5321
    const-string v3, "sip_feedback_vibration"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5324
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_4

    .line 5325
    const-string v3, "lockscreen_wallpaper"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5326
    const-string v3, "both_wallpaper"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5328
    :cond_4
    return-void

    .line 5131
    .end local v0           #inputMethodId:Ljava/lang/String;
    .end local v2           #state:I
    :cond_5
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5132
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5133
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5134
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5135
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5136
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5137
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_6

    .line 5138
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5139
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5141
    :cond_6
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5142
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5145
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5147
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5148
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5149
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5150
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5151
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5152
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5153
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5154
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5155
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5156
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5158
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5159
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5160
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5161
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5162
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5163
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5164
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5166
    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 5168
    :sswitch_1
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5169
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_a

    .line 5170
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5172
    :cond_a
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5173
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5174
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5175
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5176
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5177
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5178
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5179
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5182
    :sswitch_2
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5183
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5184
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5185
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5186
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5187
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5188
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5189
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5190
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5191
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5194
    :sswitch_3
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5195
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5196
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5197
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5198
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5199
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5200
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5201
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5202
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5203
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5204
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5207
    :sswitch_4
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5208
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5209
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5210
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5211
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5212
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5213
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5214
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5215
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5216
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5221
    :sswitch_5
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5222
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5223
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5224
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5225
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5226
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5227
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5228
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5229
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5230
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5231
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5236
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_d

    .line 5237
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5238
    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5239
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5240
    const-string v3, "safetyzone_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5241
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5242
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5243
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5244
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5245
    const-string v3, "multiple_lock_screen"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5246
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5247
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5248
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5249
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5250
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5251
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5252
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5254
    :cond_c
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5255
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5256
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5257
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5258
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5259
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5260
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5262
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5264
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5265
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5266
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5267
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5268
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5269
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5270
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 5271
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5273
    :cond_e
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5275
    :cond_f
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5276
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5277
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5278
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5279
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5280
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5281
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5282
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5283
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 5284
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 5288
    :sswitch_6
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5293
    :sswitch_7
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5306
    .restart local v2       #state:I
    :cond_10
    const-string v3, "unlock_set_smart"

    invoke-direct {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5166
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

    .line 5284
    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_6
        0x40000 -> :sswitch_7
        0x50000 -> :sswitch_7
        0x60000 -> :sswitch_7
    .end sparse-switch
.end method
