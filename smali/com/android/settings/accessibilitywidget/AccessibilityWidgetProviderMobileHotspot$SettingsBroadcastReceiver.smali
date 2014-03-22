.class Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityWidgetProviderMobileHotspot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOrientation:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mOrientation:I

    .line 227
    iput-object p1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 228
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0xe

    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->updateWidget(Landroid/content/Context;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 249
    iget-object v3, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 250
    .local v1, orientation:I
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mOrientation:I

    if-eq v3, v1, :cond_0

    .line 251
    iget-object v3, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->updateWidget(Landroid/content/Context;)V

    .line 252
    iput v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mOrientation:I

    goto :goto_0

    .line 254
    .end local v1           #orientation:I
    :cond_2
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    const-string v3, "wifi_state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 256
    .local v2, wifiApState:I
    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 257
    iget-object v3, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_hotspot_widget"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    iget-object v3, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 259
    :cond_3
    const/16 v3, 0xb

    if-eq v2, v3, :cond_4

    if-ne v2, v4, :cond_0

    .line 260
    :cond_4
    iget-object v3, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_hotspot_widget"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    iget-object v3, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot;->updateWidget(Landroid/content/Context;)V

    goto :goto_0
.end method

.method registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    return-void
.end method

.method unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderMobileHotspot$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    return-void
.end method
