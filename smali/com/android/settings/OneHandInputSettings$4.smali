.class Lcom/android/settings/OneHandInputSettings$4;
.super Ljava/lang/Object;
.source "OneHandInputSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandInputSettings;->showDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandInputSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/OneHandInputSettings$4;->this$0:Lcom/android/settings/OneHandInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/OneHandInputSettings$4;->this$0:Lcom/android/settings/OneHandInputSettings;

    invoke-virtual {v0}, Lcom/android/settings/OneHandInputSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/OneHandInputSettings$4;->this$0:Lcom/android/settings/OneHandInputSettings;

    invoke-virtual {v0}, Lcom/android/settings/OneHandInputSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "interactionarea_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
