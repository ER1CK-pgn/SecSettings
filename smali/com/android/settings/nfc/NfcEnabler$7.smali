.class Lcom/android/settings/nfc/NfcEnabler$7;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$7;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 393
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$7;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #calls: Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V
    invoke-static {v0, v1, v1, v1}, Lcom/android/settings/nfc/NfcEnabler;->access$500(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V

    .line 394
    return-void
.end method
