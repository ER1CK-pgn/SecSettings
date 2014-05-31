.class Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;
.super Ljava/lang/Object;
.source "SettingsSearchListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "cmpButton"
    .parameter "value"

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    .line 269
    .local v2, position:I
    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v4

    iget v3, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    .line 270
    .local v3, rowId:I
    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v4

    iget-object v1, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 272
    .local v1, keyName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.REQUEST_FINDO_SEARCH_CHANGE_SETTING_VALUE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "rowId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v4, "keyName"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v4, "value"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    #getter for: Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->access$000(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    return-void
.end method
