.class Lcom/android/settings/GridSettings$4;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/settings/GridSettings$4;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/settings/GridSettings$4;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 597
    return-void
.end method
