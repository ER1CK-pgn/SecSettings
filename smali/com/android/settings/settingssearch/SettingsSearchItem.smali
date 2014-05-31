.class public Lcom/android/settings/settingssearch/SettingsSearchItem;
.super Ljava/lang/Object;
.source "SettingsSearchItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public iconResId:I

.field public id_key:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public menuPath:Ljava/lang/String;

.field public menuType:I

.field public packageName:Ljava/lang/String;

.field public parentsKey:Ljava/lang/String;

.field public preference:Landroid/preference/Preference;

.field public rowId:I

.field public summary:Ljava/lang/String;

.field public summaryResId:J

.field public title:Ljava/lang/String;

.field public titleResId:J

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchItem$1;

    invoke-direct {v0}, Lcom/android/settings/settingssearch/SettingsSearchItem$1;-><init>()V

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    .line 17
    iput-wide v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 21
    iput-wide v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 23
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 25
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 29
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    .line 37
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->language:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->preference:Landroid/preference/Preference;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "source"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    .line 17
    iput-wide v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 21
    iput-wide v3, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 23
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 25
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 29
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    .line 37
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->language:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->preference:Landroid/preference/Preference;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->language:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "arg1"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-wide v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-wide v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return-void
.end method
