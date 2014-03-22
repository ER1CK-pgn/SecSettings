.class Lcom/android/settings/wifi/hs20/Hs20PickerDialog$1;
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
    .line 61
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$1;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$1;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69
    return-void
.end method
