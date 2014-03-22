.class Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$3;
.super Ljava/lang/Object;
.source "SettingsEmergencyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 3487
    iput-object p1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$3;->this$0:Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3490
    invoke-static {}, Lcom/android/settings/SettingsEmergencyActivity;->callSearchMenu()V

    .line 3491
    return-void
.end method
