.class Lcom/android/settings/nfc/SBeam$1;
.super Ljava/lang/Object;
.source "SBeam.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/SBeam;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/SBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/SBeam;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[SBeam]"

    const-string v2, "SBeam : Touch ActionBar in Help mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nfc/SBeam$1;->this$0:Lcom/android/settings/nfc/SBeam;

    # getter for: Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/nfc/SBeam;->access$000(Lcom/android/settings/nfc/SBeam;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09154e

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
