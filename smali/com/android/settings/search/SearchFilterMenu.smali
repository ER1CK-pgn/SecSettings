.class public Lcom/android/settings/search/SearchFilterMenu;
.super Ljava/lang/Object;
.source "SearchFilterMenu.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mRemovekeyList:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sput-object p1, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    return-void
.end method

.method private addRemovePreferenceKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 233
    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method


# virtual methods
.method public getDynamiRemoveResult(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 245
    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 248
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

    .line 29
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v3, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 30
    .local v1, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 31
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_4

    .line 32
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 33
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 34
    const-string v3, "lock_screen_clock_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 35
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 36
    const-string v3, "lock_screen_myprofile_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 37
    const-string v3, "owner_info_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 38
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 39
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 40
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 41
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 42
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 43
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 44
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 45
    const-string v3, "quick_note"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 46
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 47
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 48
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 206
    :goto_0
    :sswitch_0
    sget-object v3, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wmanager_connected"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 207
    .local v2, state:I
    if-ne v2, v6, :cond_c

    .line 216
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v6, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-nez v3, :cond_1

    .line 218
    :cond_0
    const-string v3, "sim_lock_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 219
    const-string v3, "sim_toggle"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 220
    const-string v3, "sim_pin"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 224
    :cond_1
    sget-object v3, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, inputMethodId:Ljava/lang/String;
    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 226
    const-string v3, "sip_feedback_sound"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 227
    const-string v3, "sip_feedback_vibration"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 229
    :cond_2
    return-void

    .line 50
    .end local v0           #inputMethodId:Ljava/lang/String;
    .end local v2           #state:I
    :cond_3
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 51
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 52
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 53
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 54
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 55
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 59
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 60
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 61
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 62
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 63
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 64
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 65
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 66
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 67
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 70
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 71
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 72
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 73
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 74
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 75
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 76
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 80
    :sswitch_1
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 81
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 82
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 83
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 84
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 85
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 86
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 87
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :sswitch_2
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 91
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 92
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 93
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 94
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 95
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 96
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 97
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 98
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 99
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :sswitch_3
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 103
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 104
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 105
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 106
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 107
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 108
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 109
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 110
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 111
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :sswitch_4
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 115
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 116
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 117
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 118
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 119
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 120
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 121
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 122
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 123
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :sswitch_5
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 129
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 130
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 131
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 132
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 133
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 134
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 135
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 136
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 137
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_9

    .line 143
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 144
    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 145
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 146
    const-string v3, "safetyzone_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 147
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 148
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 149
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 150
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 151
    const-string v3, "multiple_lock_screen"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 152
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 153
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 154
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 155
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 156
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 157
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 158
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_8
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 161
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 162
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 163
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 164
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 165
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 166
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 170
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 171
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 172
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 173
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 174
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 175
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 177
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 179
    :cond_a
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_b
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 182
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 183
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 184
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 185
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 186
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 187
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 188
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 189
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 194
    :sswitch_6
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :sswitch_7
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .restart local v2       #state:I
    :cond_c
    const-string v3, "unlock_set_smart"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_5
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_5
        0x80000 -> :sswitch_2
        0x90000 -> :sswitch_4
    .end sparse-switch

    .line 190
    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_6
        0x40000 -> :sswitch_7
        0x50000 -> :sswitch_7
        0x60000 -> :sswitch_7
    .end sparse-switch
.end method
