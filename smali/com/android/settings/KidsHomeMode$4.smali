.class Lcom/android/settings/KidsHomeMode$4;
.super Ljava/lang/Object;
.source "KidsHomeMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KidsHomeMode;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KidsHomeMode;


# direct methods
.method constructor <init>(Lcom/android/settings/KidsHomeMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/KidsHomeMode$4;->this$0:Lcom/android/settings/KidsHomeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/KidsHomeMode$4;->this$0:Lcom/android/settings/KidsHomeMode;

    iget-object v1, v1, Lcom/android/settings/KidsHomeMode;->resolver:Landroid/content/ContentResolver;

    const-string v2, "kids_home_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.KIDS_HOME_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "kidsmode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "kidsmode_from"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/KidsHomeMode$4;->this$0:Lcom/android/settings/KidsHomeMode;

    invoke-virtual {v1}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "KidsHomeMode"

    const-string v2, "onClick 1_1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
