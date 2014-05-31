.class Lcom/android/settings/wifi/hs20/Hs20PickerDialog$2;
.super Ljava/lang/Object;
.source "Hs20PickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$2;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$2;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->scanListner:Lcom/android/settings/wifi/hs20/Hs20PickerDialog$OnScanButtonPressed;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$2;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->scanListner:Lcom/android/settings/wifi/hs20/Hs20PickerDialog$OnScanButtonPressed;

    invoke-interface {v0}, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$OnScanButtonPressed;->onScanPressed()V

    .line 87
    :cond_0
    return-void
.end method
