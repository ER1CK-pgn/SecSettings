.class Lcom/android/settings/OneHandInputSettings$3;
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

    iput-object p1, p0, Lcom/android/settings/OneHandInputSettings$3;->this$0:Lcom/android/settings/OneHandInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/OneHandInputSettings$3;->this$0:Lcom/android/settings/OneHandInputSettings;

    # getter for: Lcom/android/settings/OneHandInputSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/OneHandInputSettings;->access$000(Lcom/android/settings/OneHandInputSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/OneHandInputSettings$3;->this$0:Lcom/android/settings/OneHandInputSettings;

    invoke-virtual {v0}, Lcom/android/settings/OneHandInputSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "interactionarea_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
