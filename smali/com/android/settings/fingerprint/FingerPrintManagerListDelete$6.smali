.class Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$6;
.super Ljava/lang/Object;
.source "FingerPrintManagerListDelete.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->showSensorErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$6;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "FingerPrintManagerListDelete"

    const-string v1, "showSensorErrorDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
