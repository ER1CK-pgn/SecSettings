.class public Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;
.super Landroid/preference/PreferenceActivity;
.source "PersonalPageConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$2;,
        Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPersonalPageObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$1;-><init>(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->mPersonalPageObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->mContext:Landroid/content/Context;

    const v1, 0x7f0907ea

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v5, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "PersonalPageConfirmLockPattern"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume back with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->finish()V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
