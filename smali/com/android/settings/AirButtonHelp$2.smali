.class Lcom/android/settings/AirButtonHelp$2;
.super Ljava/lang/Object;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirButtonHelp;->showAirCommandEnabledPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirButtonHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/AirButtonHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/AirButtonHelp$2;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp$2;->this$0:Lcom/android/settings/AirButtonHelp;

    #getter for: Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/AirButtonHelp;->access$100(Lcom/android/settings/AirButtonHelp;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 169
    return-void
.end method