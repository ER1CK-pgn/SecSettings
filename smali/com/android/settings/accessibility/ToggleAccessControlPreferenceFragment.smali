.class public Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private mShownDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 180
    packed-switch p2, :pswitch_data_0

    .line 236
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 182
    :pswitch_0
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v3, :cond_2

    .line 183
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 184
    .local v2, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v3, v4}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "checked"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "access_control_use"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, acIntent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.accesscontrol"

    const-string v5, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 238
    .end local v0           #acIntent:Landroid/content/Intent;
    .end local v2           #checked:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    .line 183
    goto :goto_0

    .line 193
    :cond_2
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v7, :cond_4

    .line 194
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 195
    .restart local v2       #checked:Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v5, v3}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "checked"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 199
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, assistantMenu:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.assistantmenu"

    const-string v7, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assistant_menu"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v1           #assistantMenu:Landroid/content/Intent;
    .end local v2           #checked:Z
    :cond_3
    move v2, v4

    .line 194
    goto :goto_2

    .line 206
    :cond_4
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v6, :cond_0

    .line 207
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v6, :cond_5

    move v2, v3

    .line 208
    .restart local v2       #checked:Z
    :goto_3
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v4, v3}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "checked"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.talkback_off"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v2           #checked:Z
    :cond_5
    move v2, v4

    .line 207
    goto :goto_3

    .line 219
    :pswitch_1
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v3, :cond_7

    .line 220
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v3, :cond_6

    move v2, v3

    .line 221
    .restart local v2       #checked:Z
    :goto_4
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v4, v3}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "checked"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v2           #checked:Z
    :cond_6
    move v2, v4

    .line 220
    goto :goto_4

    .line 226
    :cond_7
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-eq v5, v7, :cond_8

    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v6, :cond_0

    .line 227
    :cond_8
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-eq v5, v3, :cond_9

    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v6, :cond_a

    :cond_9
    move v2, v3

    .line 228
    .restart local v2       #checked:Z
    :goto_5
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v3, v4}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "checked"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "access_control_use"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v2           #checked:Z
    :cond_a
    move v2, v4

    .line 227
    goto :goto_5

    .line 180
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "dialogId"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const v6, 0x104000a

    const/high16 v5, 0x104

    const/4 v4, 0x0

    .line 118
    if-ne p1, v2, :cond_0

    .line 119
    iput v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0908eb

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, title:Ljava/lang/String;
    const v2, 0x7f0908ec

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 174
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 130
    :cond_0
    if-ne p1, v3, :cond_1

    .line 131
    iput v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0908ed

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .restart local v1       #title:Ljava/lang/String;
    const v2, 0x7f0908ee

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0       #message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;-><init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 151
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 152
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0908ed

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .restart local v1       #title:Ljava/lang/String;
    const v2, 0x7f0908ef

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0       #message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;-><init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 174
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 67
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    .line 68
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 5
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_use"

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "direct_access_control"

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v1, v2

    .line 75
    goto :goto_1
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 0
    .parameter "arguments"

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 243
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 62
    return-void
.end method
