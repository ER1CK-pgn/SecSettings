.class public Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
.super Ljava/lang/Object;
.source "DirectAccessActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    }
.end annotation


# instance fields
.field private mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

.field private mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHandler:Landroid/os/Handler;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

.field private mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

.field private mNegativeModeObserver:Landroid/database/ContentObserver;

.field private mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

.field private mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 71
    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    .line 74
    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 75
    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 77
    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeModeObserver:Landroid/database/ContentObserver;

    .line 626
    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    .line 86
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    return v0
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private prepareDialog()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->notifyDataSetChanged()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public callAccessControlMode(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.accesscontrol.TOGGLE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 346
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 348
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public callAccessibilitySettings(Landroid/content/Context;)V
    .locals 2
    .parameter "mContext"

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 340
    return-void
.end method

.method public changeNegativeModeSystemSetting(Z)V
    .locals 6
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "high_contrast"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    if-eqz p1, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "color_blind"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 426
    :cond_0
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 428
    .local v1, iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_2
    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 434
    return-void

    .end local v1           #iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;
    :cond_1
    move v2, v3

    .line 417
    goto :goto_0

    .line 429
    .restart local v1       #iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 433
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    sget-object v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_2
.end method

.method public createDialog()Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    .locals 7

    .prologue
    const v6, 0x7f090967

    const v5, 0x7f090966

    const/4 v4, 0x1

    .line 155
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$2;

    const v3, 0x7f090961

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$2;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;I)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    .line 181
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$3;

    const v3, 0x7f090962

    invoke-direct {v2, p0, v3, v6, v5}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$3;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;III)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    .line 221
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$4;

    const v3, 0x7f090965

    invoke-direct {v2, p0, v3, v6, v5}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$4;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;III)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    .line 261
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;

    const v3, 0x7f09096a

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;I)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onNegativeModeChanged()V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onTalkbackModeCheck()V

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    .line 293
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->isNegativeColorEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    .line 304
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 305
    .local v1, params:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 306
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 307
    iput-boolean v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 309
    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 313
    .local v0, dialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 314
    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 315
    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 316
    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$6;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$6;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 325
    iget-boolean v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_2

    .line 326
    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 331
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 333
    return-object v0

    .line 328
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method public handleShow()V
    .locals 3

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->awakenIfNecessary()V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->createDialog()Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    .line 132
    invoke-direct {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->prepareDialog()Z

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->show()V

    .line 141
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public isNegativeColorEnabled()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    .line 410
    .local v0, negativeColorCheck:Z
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->getItem(I)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->onPress()V

    .line 97
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 101
    return-void
.end method

.method public onNegativeModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 352
    .local v0, NegativeMode:Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 354
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    .line 357
    :cond_0
    return-void

    .end local v0           #NegativeMode:Z
    :cond_1
    move v0, v1

    .line 351
    goto :goto_0

    .line 352
    .restart local v0       #NegativeMode:Z
    :cond_2
    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_1
.end method

.method public onTalkbackModeChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 360
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sidesync_source_connect"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 361
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 362
    const/16 v4, 0x20

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 364
    .local v0, TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 365
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const v5, 0x7f090963

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, descriptionText:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 371
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 372
    .local v2, mHandler:Landroid/os/Handler;
    new-instance v4, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$7;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$7;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    const-wide/16 v5, 0x708

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.action.talkback_off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v3, talk_back_off:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 403
    .end local v0           #TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v1           #descriptionText:Ljava/lang/String;
    .end local v2           #mHandler:Landroid/os/Handler;
    .end local v3           #talk_back_off:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 381
    .restart local v0       #TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 382
    .restart local v2       #mHandler:Landroid/os/Handler;
    new-instance v4, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Landroid/view/accessibility/AccessibilityEvent;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const/16 v5, 0xff

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 393
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    const-string v6, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 397
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.action.talkback_off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v3       #talk_back_off:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onTalkbackModeCheck()V
    .locals 3

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 438
    .local v0, TalkbackMode:Z
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_0
    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 440
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    .line 443
    :cond_0
    return-void

    .line 438
    :cond_1
    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    .line 105
    iput-boolean p2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    .line 107
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->dismiss()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    .line 111
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->handleShow()V

    goto :goto_0
.end method
