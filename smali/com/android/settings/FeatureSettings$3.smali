.class Lcom/android/settings/FeatureSettings$3;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FeatureSettings;->showMessageOnlyGuideDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FeatureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FeatureSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FeatureSettings$3;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/FeatureSettings$3;->this$0:Lcom/android/settings/FeatureSettings;

    # getter for: Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/FeatureSettings;->access$500(Lcom/android/settings/FeatureSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
