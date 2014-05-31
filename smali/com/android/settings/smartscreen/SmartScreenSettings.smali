.class public Lcom/android/settings/smartscreen/SmartScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final mSmartRotationHelpFolderText:[I

.field private static final mSmartRotationHelpText:[I

.field private static final mSmartScreenHelpID:[I

.field private static final mSmartStayHelpFolderText:[I

.field private static final mSmartStayHelpText:[I


# instance fields
.field private dialogTitle:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHelp:Landroid/view/MenuItem;

.field private mIsFromAutoRotation:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSmartHelpText:[I

.field private mSmartPause:Landroid/preference/CheckBoxPreference;

.field private mSmartPauseAnimationImage:[I

.field private mSmartRotation:Landroid/preference/CheckBoxPreference;

.field private mSmartRotationAnimationImage:[I

.field private mSmartScreenObserver:Landroid/database/ContentObserver;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/CheckBoxPreference;

.field private mSmartStayAnimationImage:[I

.field private mSupportFolderType:Z

.field public pref_common_noti:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    .line 102
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpText:[I

    .line 103
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpText:[I

    .line 104
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpFolderText:[I

    .line 105
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpFolderText:[I

    return-void

    .line 101
    nop

    :array_0
    .array-data 0x4
        0x64t 0x4t 0xbt 0x7ft
        0x65t 0x4t 0xbt 0x7ft
    .end array-data

    .line 102
    :array_1
    .array-data 0x4
        0x1dt 0x11t 0x9t 0x7ft
        0x1et 0x11t 0x9t 0x7ft
        0x1ft 0x11t 0x9t 0x7ft
        0x20t 0x11t 0x9t 0x7ft
        0x21t 0x11t 0x9t 0x7ft
    .end array-data

    .line 103
    :array_2
    .array-data 0x4
        0x25t 0x11t 0x9t 0x7ft
        0x22t 0x11t 0x9t 0x7ft
        0x1ft 0x11t 0x9t 0x7ft
        0x20t 0x11t 0x9t 0x7ft
        0x21t 0x11t 0x9t 0x7ft
    .end array-data

    .line 104
    :array_3
    .array-data 0x4
        0x1dt 0x11t 0x9t 0x7ft
        0x1et 0x11t 0x9t 0x7ft
        0x1ft 0x11t 0x9t 0x7ft
        0x20t 0x11t 0x9t 0x7ft
        0x21t 0x11t 0x9t 0x7ft
        0x6et 0x17t 0x9t 0x7ft
    .end array-data

    .line 105
    :array_4
    .array-data 0x4
        0x25t 0x11t 0x9t 0x7ft
        0x22t 0x11t 0x9t 0x7ft
        0x1ft 0x11t 0x9t 0x7ft
        0x20t 0x11t 0x9t 0x7ft
        0x21t 0x11t 0x9t 0x7ft
        0x6et 0x17t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 88
    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 93
    iput v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 94
    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 96
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayAnimationImage:[I

    .line 97
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationAnimationImage:[I

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPauseAnimationImage:[I

    .line 116
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 120
    iput-boolean v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    .line 359
    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$2;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    .line 631
    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings$7;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    .line 737
    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$12;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void

    .line 96
    nop

    :array_0
    .array-data 0x4
        0xe1t 0x4t 0x2t 0x7ft
        0xe2t 0x4t 0x2t 0x7ft
        0xe3t 0x4t 0x2t 0x7ft
        0xe4t 0x4t 0x2t 0x7ft
    .end array-data

    .line 97
    :array_1
    .array-data 0x4
        0x86t 0x4t 0x2t 0x7ft
        0x87t 0x4t 0x2t 0x7ft
        0x88t 0x4t 0x2t 0x7ft
        0x89t 0x4t 0x2t 0x7ft
    .end array-data

    .line 98
    :array_2
    .array-data 0x4
        0xd7t 0x4t 0x2t 0x7ft
        0xd8t 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/smartscreen/SmartScreenSettings;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 723
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 726
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_stay_noti"

    if-ne v0, v1, :cond_1

    .line 644
    const v0, 0x7f091119

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    .line 653
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09116d

    invoke-virtual {p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    invoke-virtual {p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907af

    new-instance v2, Lcom/android/settings/smartscreen/SmartScreenSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$10;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/smartscreen/SmartScreenSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$9;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/smartscreen/SmartScreenSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$8;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 698
    return-void

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_rotation_noti"

    if-ne v0, v1, :cond_2

    .line 646
    const v0, 0x7f09111b

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_3

    .line 648
    const v0, 0x7f091126

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 649
    :cond_3
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    if-ne v0, v1, :cond_0

    .line 650
    const v0, 0x7f091128

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .parameter "title_res_id"
    .parameter "message_res_id"
    .parameter "key"

    .prologue
    .line 702
    move-object v0, p3

    .line 703
    .local v0, motion_type:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/smartscreen/SmartScreenSettings$11;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings$11;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 719
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 720
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    const-string v0, "SmartScreenSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 396
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->updateAnimation()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const-string v0, "SmartScreenSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 370
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 371
    :cond_0
    const-string v0, "SmartScreenSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    iget v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 377
    :cond_1
    iget v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 379
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_2

    .line 380
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 382
    :cond_2
    iget v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public createGuideDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "pref_noti"

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 347
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 348
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 349
    const-string v2, "pref_smart_scroll_noti"

    if-ne p1, v2, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialogForScroll()V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialog()V

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 729
    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll_adv_web"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 730
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll_adv_chrome"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 731
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll_adv_email_body"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 732
    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll_adv_gmail_body"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 734
    or-int/2addr v2, v3

    if-ge v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/smartscreen/SmartScreenSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$1;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 263
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez p2, :cond_2

    :goto_0
    invoke-static {v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 274
    :goto_1
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 275
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez p2, :cond_1

    :goto_2
    invoke-static {v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 271
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x10

    const/4 v12, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 128
    const-string v6, "fromAccelerometer"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    .line 131
    :cond_0
    const v6, 0x7f0700c1

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->addPreferencesFromResource(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    .line 134
    iget-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    if-eqz v6, :cond_3

    .line 135
    new-instance v6, Landroid/widget/Switch;

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v9}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 136
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_2

    .line 137
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 138
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_2

    .line 139
    :cond_1
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0f0034

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 140
    .local v2, padding:I
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v8, v2, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 141
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 142
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/16 v11, 0x15

    invoke-direct {v10, v12, v12, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 144
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarLayout:Landroid/view/View;

    .line 147
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    :cond_3
    const-string v6, "smartscreen_stay"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    .line 151
    const-string v6, "smartscreen_rotation"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    .line 152
    const-string v6, "smartscreen_pause"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    .line 153
    const-string v6, "smartscreen_scroll"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 155
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    iget-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    if-eqz v6, :cond_4

    .line 176
    const-string v6, "smartscreen_stay"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->removePreference(Ljava/lang/String;)V

    .line 177
    const-string v6, "smartscreen_pause"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->removePreference(Ljava/lang/String;)V

    .line 178
    const-string v6, "smartscreen_scroll"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->removePreference(Ljava/lang/String;)V

    .line 181
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/settings/smartscreen/SmartScreenSettings;->setHasOptionsMenu(Z)V

    .line 184
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 185
    :cond_5
    iget-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_6

    sget v6, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_6

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 187
    .local v1, extra_bundle:Landroid/os/Bundle;
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, targetKey:Ljava/lang/String;
    sget v6, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    if-ne v6, v7, :cond_7

    move v5, v7

    .line 189
    .local v5, value:Z
    :goto_0
    const-string v6, "smartscreen_scroll"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 190
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 191
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 196
    .end local v1           #extra_bundle:Landroid/os/Bundle;
    .end local v4           #targetKey:Ljava/lang/String;
    .end local v5           #value:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_1
    iput-boolean v7, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    .line 197
    return-void

    .restart local v1       #extra_bundle:Landroid/os/Bundle;
    .restart local v4       #targetKey:Ljava/lang/String;
    :cond_7
    move v5, v8

    .line 188
    goto :goto_0

    .end local v1           #extra_bundle:Landroid/os/Bundle;
    .end local v4           #targetKey:Ljava/lang/String;
    :cond_8
    move v7, v8

    .line 196
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    const v0, 0x7f0912d7

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201ca

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mHelp:Landroid/view/MenuItem;

    .line 608
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mHelp:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 611
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 612
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 617
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 624
    const/4 v0, 0x0

    .line 627
    :goto_0
    return v0

    .line 619
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    const-string v1, "helphub:section"

    const-string v2, "smart_screen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 627
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 232
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 235
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 278
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 282
    .local v1, value:I
    :goto_0
    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    const-string v2, "pref_smart_scroll_noti"

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 284
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V

    .line 294
    :cond_0
    :goto_1
    return v3

    .end local v1           #value:I
    :cond_1
    move v1, v2

    .line 280
    goto :goto_0

    .line 285
    .restart local v1       #value:I
    :cond_2
    const-string v4, "smartscreen_scroll"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    const-string v4, "pref_smart_scroll_noti"

    iput-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    if-ne v1, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {p0, v4, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    .line 290
    if-ne v1, v3, :cond_0

    .line 291
    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 299
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 303
    .local v3, value:Z
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 304
    :cond_0
    iget-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 305
    sget v6, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    if-ne v6, v4, :cond_4

    move v0, v4

    .local v0, bValue:Z
    :goto_0
    move-object v1, p2

    .line 306
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 307
    .local v1, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    .end local v0           #bValue:Z
    .end local v1           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    :cond_1
    const-string v6, "smartscreen_stay"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 315
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 316
    const-string v6, "pref_smart_stay_noti"

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 325
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 326
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V

    .line 341
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    :cond_4
    move v0, v5

    .line 305
    goto :goto_0

    .line 317
    :cond_5
    const-string v6, "smartscreen_rotation"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 318
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 319
    const-string v6, "pref_smart_rotation_noti"

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    goto :goto_1

    .line 320
    :cond_6
    const-string v6, "smartscreen_pause"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 321
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 322
    const-string v6, "pref_smart_pause_noti"

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    goto :goto_1

    .line 328
    :cond_7
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_a

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_sleep_mode"

    if-eqz v3, :cond_9

    :goto_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    :cond_8
    :goto_4
    if-eqz v3, :cond_3

    .line 338
    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move v4, v5

    .line 329
    goto :goto_3

    .line 330
    :cond_a
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_c

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_rotation_mode"

    if-eqz v3, :cond_b

    :goto_5
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_b
    move v4, v5

    goto :goto_5

    .line 332
    :cond_c
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_8

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "smart_pause"

    if-eqz v3, :cond_d

    :goto_6
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {p0, v4, v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_d
    move v4, v5

    .line 333
    goto :goto_6
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 202
    const-string v0, "SmartScreenSettings"

    const-string v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v3}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    if-eqz v0, :cond_1

    .line 213
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_rotation_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_pause"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 219
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "intelligent_rotation_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_pause"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 227
    return-void

    :cond_3
    move v0, v2

    .line 213
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 216
    goto :goto_1

    :cond_5
    move v0, v2

    .line 217
    goto :goto_2

    :cond_6
    move v0, v2

    .line 218
    goto :goto_3

    :cond_7
    move v0, v2

    .line 219
    goto :goto_4
.end method

.method public showGuideDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 411
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 415
    .local v6, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 417
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    .line 418
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 419
    iput-object v13, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 423
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f0401b2

    invoke-virtual {v4, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 424
    .local v5, layout:Landroid/view/View;
    const v9, 0x7f0b014b

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 426
    .local v7, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    array-length v9, v9

    new-array v8, v9, [Landroid/widget/TextView;

    .line 428
    .local v8, tvList:[Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_stay_noti"

    if-ne v9, v10, :cond_5

    .line 429
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 430
    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_4

    .line 431
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpFolderText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    .line 436
    :goto_0
    const v9, 0x7f091119

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    .line 451
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_stay_noti"

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_rotation_noti"

    if-ne v9, v10, :cond_d

    .line 453
    :cond_2
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v12

    .line 454
    aget-object v9, v8, v12

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v12

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v11

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v11

    .line 457
    const-string v1, ""

    .line 458
    .local v1, description:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_9

    .line 459
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_b

    .line 460
    if-eq v3, v11, :cond_3

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_8

    .line 461
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 434
    .end local v1           #description:Ljava/lang/String;
    .end local v3           #i:I
    :cond_4
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    goto :goto_0

    .line 437
    :cond_5
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_rotation_noti"

    if-ne v9, v10, :cond_7

    .line 438
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 439
    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_6

    .line 440
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpFolderText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    .line 445
    :goto_4
    const v9, 0x7f09111b

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto/16 :goto_1

    .line 443
    :cond_6
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    goto :goto_4

    .line 446
    :cond_7
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_pause_noti"

    if-ne v9, v10, :cond_1

    .line 447
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPauseAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 448
    const v9, 0x7f091126

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto/16 :goto_1

    .line 463
    .restart local v1       #description:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 468
    .end local v3           #i:I
    :cond_9
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_5
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_b

    .line 469
    if-ne v3, v11, :cond_a

    .line 470
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 472
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 476
    :cond_b
    aget-object v9, v8, v11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .end local v1           #description:Ljava/lang/String;
    .end local v3           #i:I
    :cond_c
    :goto_7
    const v9, 0x7f0b0153

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 498
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 499
    iget v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 501
    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/smartscreen/SmartScreenSettings$3;

    invoke-direct {v10, p0, v2, v7}, Lcom/android/settings/smartscreen/SmartScreenSettings$3;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 509
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 510
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/settings/smartscreen/SmartScreenSettings$4;

    invoke-direct {v10, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$4;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 515
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->startAnimation()V

    .line 516
    return-void

    .line 478
    :cond_d
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_pause_noti"

    if-ne v9, v10, :cond_c

    .line 480
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v12

    .line 481
    aget-object v9, v8, v12

    const v10, 0x7f091141

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v11

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v11

    .line 484
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f091142

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    .restart local v1       #description:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f091143

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f091144

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f091145

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_e

    .line 489
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f09176e

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    :cond_e
    aget-object v9, v8, v11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method public showGuideDialogForScroll()V
    .locals 14

    .prologue
    .line 520
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 522
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 523
    .local v8, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 525
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_0

    .line 526
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 527
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 531
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v12, 0x7f0401b3

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 532
    .local v7, layout:Landroid/view/View;
    const v12, 0x7f0b0466

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 534
    .local v5, helpTextTop:Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f091149

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 535
    .local v10, s:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f09114a

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 536
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f09114b

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 537
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f09114c

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 538
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f09114d

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 539
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f09114e

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 540
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    const v12, 0x7f0b0467

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 544
    .local v3, helpContent:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/HelpItem;

    invoke-direct {v2, v6}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 545
    .local v2, first:Lcom/android/settings/HelpItem;
    const v12, 0x7f091158

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 546
    const v12, 0x7f09114f

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 547
    const v12, 0x7f020493

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 548
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 549
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 551
    new-instance v11, Lcom/android/settings/HelpItem;

    invoke-direct {v11, v6}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 552
    .local v11, second:Lcom/android/settings/HelpItem;
    const v12, 0x7f091157

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 553
    const v12, 0x7f091150

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 554
    const v12, 0x7f020492

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 555
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 556
    invoke-virtual {v11}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 558
    const v12, 0x7f0b0468

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 560
    .local v4, helpTextBottom:Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f091151

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 561
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f091152

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 562
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f091153

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 563
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f091154

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 564
    iget-boolean v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v12, :cond_1

    .line 565
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f09176e

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 567
    :cond_1
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    const v12, 0x7f0b0469

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 571
    .local v9, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 572
    const v12, 0x7f091128

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 574
    const v12, 0x104000a

    new-instance v13, Lcom/android/settings/smartscreen/SmartScreenSettings$5;

    invoke-direct {v13, p0, v1, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings$5;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 586
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 587
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 588
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/settings/smartscreen/SmartScreenSettings$6;

    invoke-direct {v13, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$6;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 598
    return-void
.end method
