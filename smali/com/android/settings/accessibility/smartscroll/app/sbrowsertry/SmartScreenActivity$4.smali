.class Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$4;
.super Ljava/lang/Object;
.source "SmartScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$4;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$4;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    # getter for: Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->seekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->access$800(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    return-void
.end method
