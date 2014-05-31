.class Lcom/android/settings/contextualcontents/ContextualContentsSettings$1;
.super Landroid/database/ContentObserver;
.source "ContextualContentsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/contextualcontents/ContextualContentsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/contextualcontents/ContextualContentsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/contextualcontents/ContextualContentsSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings$1;->this$0:Lcom/android/settings/contextualcontents/ContextualContentsSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 47
    const-string v0, "ContextualContentsSettings"

    const-string v1, "onChange() CONTEXTUAL_CONTENTS_SWITCH_CHANGED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings$1;->this$0:Lcom/android/settings/contextualcontents/ContextualContentsSettings;

    #getter for: Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefMessage:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->access$100(Lcom/android/settings/contextualcontents/ContextualContentsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings$1;->this$0:Lcom/android/settings/contextualcontents/ContextualContentsSettings;

    #getter for: Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->access$000(Lcom/android/settings/contextualcontents/ContextualContentsSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings$1;->this$0:Lcom/android/settings/contextualcontents/ContextualContentsSettings;

    #getter for: Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefEmail:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->access$200(Lcom/android/settings/contextualcontents/ContextualContentsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings$1;->this$0:Lcom/android/settings/contextualcontents/ContextualContentsSettings;

    #getter for: Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->access$000(Lcom/android/settings/contextualcontents/ContextualContentsSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings$1;->this$0:Lcom/android/settings/contextualcontents/ContextualContentsSettings;

    #getter for: Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefBrowser:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->access$300(Lcom/android/settings/contextualcontents/ContextualContentsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings$1;->this$0:Lcom/android/settings/contextualcontents/ContextualContentsSettings;

    #getter for: Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->access$000(Lcom/android/settings/contextualcontents/ContextualContentsSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 51
    return-void
.end method
