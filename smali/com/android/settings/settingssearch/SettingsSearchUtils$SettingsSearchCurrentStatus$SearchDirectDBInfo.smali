.class Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchDirectDBInfo"
.end annotation


# instance fields
.field DBName:Ljava/lang/String;

.field DBType:I

.field dependencyKey:Ljava/lang/String;

.field keyName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5081
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->this$0:Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5082
    iput-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    .line 5083
    iput-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    .line 5084
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBType:I

    .line 5085
    iput-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->dependencyKey:Ljava/lang/String;

    return-void
.end method
