.class Lcom/android/settings/wfd/WifiDisplaySettings$13;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 1101
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1103
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$900(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1104
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onPreferenceChange : already WfdConnected!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    :goto_0
    return v3

    .line 1108
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
