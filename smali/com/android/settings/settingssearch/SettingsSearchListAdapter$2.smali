.class Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;
.super Ljava/lang/Object;
.source "SettingsSearchListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v4

    iget v3, v4, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    new-instance v1, Lcom/android/settings/settingssearch/SettingsSearchManager;

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->access$100(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getPreInfo(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->access$100(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->callMenu(Lcom/android/settings/settingssearch/SettingsSearchItem;Landroid/content/Context;)Z

    # getter for: Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSupportHistory:Z
    invoke-static {}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    iget-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    # invokes: Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->setHistoryMenu(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->access$300(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
