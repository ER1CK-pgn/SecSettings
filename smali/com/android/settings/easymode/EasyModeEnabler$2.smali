.class Lcom/android/settings/easymode/EasyModeEnabler$2;
.super Ljava/lang/Object;
.source "EasyModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/easymode/EasyModeEnabler;->showEnableEasyModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/easymode/EasyModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeEnabler$2;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler$2;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/easymode/EasyModeEnabler;->access$000(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeEnabler$2;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/easymode/EasyModeEnabler;->mEnableEasyModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/easymode/EasyModeEnabler;->access$102(Lcom/android/settings/easymode/EasyModeEnabler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 180
    return-void
.end method
