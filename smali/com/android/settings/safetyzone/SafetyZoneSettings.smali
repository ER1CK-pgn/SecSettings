.class public Lcom/android/settings/safetyzone/SafetyZoneSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafetyZoneSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mEditPosition:I


# instance fields
.field private apData:Landroid/content/Intent;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAddCurrentLocation:Landroid/preference/PreferenceScreen;

.field private mDescriptionText:Landroid/widget/TextView;

.field mDialog:Landroid/app/AlertDialog;

.field private mEditName:Landroid/widget/TextView;

.field private mFirst:Z

.field private mLocationCategory:Landroid/preference/PreferenceCategory;

.field private mNotification:Landroid/preference/CheckBoxPreference;

.field private mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

.field mSelectedPreference:Lcom/android/settings/safetyzone/AccessPointPreference;

.field private mVibrate:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 89
    iput-object v1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    .line 92
    iput-object v1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mFirst:Z

    .line 97
    iput-object v1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/safetyzone/SafetyZoneSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->showSafetyZoneEnableDialog()V

    return-void
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    sput p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->updateAccessPointList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/safetyzone/SafetyZoneSettings;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private showDuplicatedNameDialog()V
    .locals 3

    .prologue
    .line 508
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090d56

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d5e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/safetyzone/SafetyZoneSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings$5;-><init>(Lcom/android/settings/safetyzone/SafetyZoneSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 522
    return-void
.end method

.method private showSafetyZoneEnableDialog()V
    .locals 3

    .prologue
    .line 581
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090d5a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/safetyzone/SafetyZoneSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings$7;-><init>(Lcom/android/settings/safetyzone/SafetyZoneSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/safetyzone/SafetyZoneSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings$6;-><init>(Lcom/android/settings/safetyzone/SafetyZoneSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 602
    return-void
.end method

.method private showSafetyZoneInfoDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 606
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 609
    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 610
    iput-object v6, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 614
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04006f

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 615
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b007e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 617
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f090d59

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 618
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 619
    const v4, 0x7f090d53

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 620
    const v4, 0x7f0907d2

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 621
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 622
    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 623
    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/safetyzone/SafetyZoneSettings$8;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/safetyzone/SafetyZoneSettings$8;-><init>(Lcom/android/settings/safetyzone/SafetyZoneSettings;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 642
    return-void
.end method

.method private updateAccessPointList()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 436
    iget-object v7, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mLocationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "safety_zone_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, apName:Ljava/lang/String;
    const-string v7, "SafetyZoneSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAccessPointList(),  SAFETY_ZONE_LIST is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-eqz v2, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 440
    :cond_0
    const-string v5, "SafetyZoneSettings"

    const-string v7, "updateAccessPointList(), there is no safety zone, return false"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 460
    :cond_1
    return v5

    .line 444
    :cond_2
    const-string v7, ";and;"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, activeAps:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_1

    .line 446
    aget-object v7, v1, v3

    const-string v8, "/and/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, activeApinfo:[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 448
    const-string v7, "SafetyZoneSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ap["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], post name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ssid is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bssid is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", frequency is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v4, Lcom/android/settings/safetyzone/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lcom/android/settings/safetyzone/AccessPointPreference;-><init>(Landroid/content/Context;IZ)V

    .line 450
    .local v4, tmpPref:Landroid/preference/Preference;
    aget-object v7, v0, v6

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 451
    aget-object v7, v0, v5

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 452
    aget-object v7, v0, v5

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v7, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mLocationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 445
    .end local v4           #tmpPref:Landroid/preference/Preference;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 455
    :cond_3
    const-string v7, "SafetyZoneSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAccessPointList(), ap["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] activeApinfo.length is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "safety_zone_notification_enable"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "safety_zone_notification_vibrate"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safety_zone_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->updateAccessPointList()Z

    .line 167
    return-void

    :cond_2
    move v0, v2

    .line 159
    goto :goto_0

    :cond_3
    move v0, v2

    .line 162
    goto :goto_1

    :cond_4
    move v1, v2

    .line 164
    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 132
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 133
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 134
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 137
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 147
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 304
    const-string v10, "SafetyZoneSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onActivityResult(), requestCode :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", resultCode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "data : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v10, 0x1

    move/from16 v0, p1

    if-ne v0, v10, :cond_2

    .line 306
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_1

    .line 307
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "safety_zone_list"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 310
    .local v9, zoneList:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;

    const-string v11, "bssid"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, bssid:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->showDuplicatedNameDialog()V

    .line 396
    .end local v3           #bssid:Ljava/lang/String;
    .end local v9           #zoneList:Ljava/lang/String;
    :goto_0
    return-void

    .line 318
    .restart local v3       #bssid:Ljava/lang/String;
    .restart local v9       #zoneList:Ljava/lang/String;
    :cond_0
    const-string v10, "input_method"

    invoke-virtual {p0, v10}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 320
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f040194

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 321
    .local v8, view:Landroid/view/View;
    const v10, 0x7f0b028f

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;

    .line 322
    iget-object v10, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;

    const-string v11, "ssid"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const v10, 0x7f0b042e

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDescriptionText:Landroid/widget/TextView;

    .line 324
    iget-object v10, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDescriptionText:Landroid/widget/TextView;

    const v11, 0x7f090d62

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "ssid"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v10, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;

    check-cast v10, Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 327
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090d5e

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x104

    new-instance v12, Lcom/android/settings/safetyzone/SafetyZoneSettings$4;

    invoke-direct {v12, p0, v6}, Lcom/android/settings/safetyzone/SafetyZoneSettings$4;-><init>(Lcom/android/settings/safetyzone/SafetyZoneSettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090bf3

    new-instance v12, Lcom/android/settings/safetyzone/SafetyZoneSettings$3;

    invoke-direct {v12, p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings$3;-><init>(Lcom/android/settings/safetyzone/SafetyZoneSettings;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    .line 355
    iget-object v10, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x14

    invoke-virtual {v10, v11}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 356
    iget-object v10, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 395
    .end local v3           #bssid:Ljava/lang/String;
    .end local v6           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v8           #view:Landroid/view/View;
    .end local v9           #zoneList:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 359
    :cond_2
    const/4 v10, 0x2

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 360
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_7

    .line 361
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "safety_zone_list"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 363
    .local v7, safety_zone_list:Ljava/lang/String;
    const-string v4, ""

    .line 364
    .local v4, combinedString:Ljava/lang/String;
    const-string v10, ";and;"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, activeAps:[Ljava/lang/String;
    const-string v10, "SafetyZoneSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mEditPosition is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v10, v2

    if-ge v5, v10, :cond_6

    .line 368
    aget-object v10, v2, v5

    const-string v11, "/and/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, activeApinfo:[Ljava/lang/String;
    array-length v10, v1

    const/4 v11, 0x4

    if-ne v10, v11, :cond_5

    .line 370
    const-string v10, "SafetyZoneSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remained ap info : ap["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], post name : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", ssid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", bssid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", frequency : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-eqz v4, :cond_3

    const-string v10, ""

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 372
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";and;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    :cond_3
    sget v10, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    if-ne v5, v10, :cond_4

    .line 375
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/and/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;

    const-string v12, "ssid"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/and/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;

    const-string v12, "bssid"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/and/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;

    const-string v12, "frequency"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 378
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/and/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/and/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/and/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 382
    :cond_5
    const-string v10, "SafetyZoneSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EDIT_LOCATION_REQUEST, ap["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] activeApinfo.length is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 385
    .end local v1           #activeApinfo:[Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "safety_zone_list"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 387
    invoke-direct {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->updateAccessPointList()Z

    .line 388
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;

    .line 389
    const/4 v10, -0x1

    sput v10, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    goto/16 :goto_1

    .line 390
    .end local v2           #activeAps:[Ljava/lang/String;
    .end local v4           #combinedString:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #safety_zone_list:Ljava/lang/String;
    :cond_7
    if-nez p2, :cond_1

    .line 391
    const/4 v10, -0x1

    sput v10, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    goto/16 :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .parameter "arg0"
    .parameter "desiredState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 548
    const-string v6, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCheckChanged : desiredState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safety_zone_enable"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 551
    .local v1, currentValeu:Z
    :goto_0
    if-ne v1, p2, :cond_2

    .line 552
    const-string v4, "SafetyZoneSettings"

    const-string v5, "onCheckChanged : desiredState and currentValeu are same, so ignored"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    :goto_1
    return-void

    .end local v1           #currentValeu:Z
    :cond_1
    move v1, v5

    .line 550
    goto :goto_0

    .line 556
    .restart local v1       #currentValeu:Z
    :cond_2
    if-eqz p2, :cond_5

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "safetyzone_settings"

    invoke-virtual {v6, v7, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 558
    .local v0, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 559
    const/4 v2, 0x0

    .line 560
    .local v2, doNotShow:Z
    const-string v6, "DoNotShowDialogOn"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 561
    if-nez v2, :cond_3

    .line 562
    invoke-direct {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->showSafetyZoneInfoDialog()V

    goto :goto_1

    .line 564
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "safety_zone_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, safety_zone_list:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 566
    invoke-direct {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->showSafetyZoneEnableDialog()V

    goto :goto_1

    .line 568
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "safety_zone_enable"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 572
    .end local v0           #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .end local v2           #doNotShow:Z
    .end local v3           #safety_zone_list:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safety_zone_enable"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f090d5c

    invoke-virtual {p0, v7}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safety_zone_enable"

    if-eqz p2, :cond_6

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_2

    .line 576
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safety_zone_enable"

    if-eqz p2, :cond_8

    :goto_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    move v4, v5

    goto :goto_3
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mSelectedPreference:Lcom/android/settings/safetyzone/AccessPointPreference;

    if-nez v0, :cond_0

    .line 199
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 299
    :goto_0
    return v0

    .line 202
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 203
    const-string v1, "SafetyZoneSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContextItemSelected["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mSelectedPreference:Lcom/android/settings/safetyzone/AccessPointPreference;

    invoke-virtual {v1}, Lcom/android/settings/safetyzone/AccessPointPreference;->getPreferenceId()I

    move-result v1

    sput v1, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    .line 206
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v7

    .line 299
    goto :goto_0

    .line 208
    :pswitch_0
    const-string v0, "SafetyZoneSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MENU_ID_EDIT is clicked. start wifi network picker, mEditPosition is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, v0, v11}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 214
    :pswitch_1
    const-string v0, "SafetyZoneSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MENU_ID_DELETE is selected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v0, "id"

    sget v1, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 219
    const-class v1, Lcom/android/settings/safetyzone/SafetyZoneListDelelete;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090d61

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 223
    :pswitch_2
    const-string v0, "SafetyZoneSettings"

    const-string v1, "MENU_ID_RENAME is selected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040194

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 226
    const v1, 0x7f0b028f

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;

    .line 227
    const v1, 0x7f0b042e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDescriptionText:Landroid/widget/TextView;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safety_zone_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    const-string v1, ""

    .line 231
    const-string v4, ";and;"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v2, v6

    .line 232
    :goto_2
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 233
    aget-object v5, v4, v2

    const-string v8, "/and/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 234
    array-length v8, v5

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 235
    const-string v8, "SafetyZoneSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remained ap info : ap["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], post name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ssid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bssid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", frequency : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget v8, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    if-ne v2, v8, :cond_1

    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "/and/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v8, v5, v7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "/and/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v8, v5, v11

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "/and/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v8, v5, v12

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    iget-object v8, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;

    aget-object v9, v5, v6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v8, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDescriptionText:Landroid/widget/TextView;

    const v9, 0x7f090d62

    new-array v10, v7, [Ljava/lang/Object;

    aget-object v5, v5, v7

    aput-object v5, v10, v6

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 242
    :cond_2
    const-string v8, "SafetyZoneSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EDIT_LOCATION_REQUEST, ap["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] activeApinfo.length is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v5, v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 248
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090d60

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/safetyzone/SafetyZoneSettings$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/safetyzone/SafetyZoneSettings$2;-><init>(Lcom/android/settings/safetyzone/SafetyZoneSettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090bf3

    new-instance v2, Lcom/android/settings/safetyzone/SafetyZoneSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings$1;-><init>(Lcom/android/settings/safetyzone/SafetyZoneSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    .line 294
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v2, 0x7f0700a0

    invoke-virtual {p0, v2}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->addPreferencesFromResource(I)V

    .line 104
    const-string v2, "safety_zone_notification"

    invoke-virtual {p0, v2}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v2, "safety_zone_add_current_location"

    invoke-virtual {p0, v2}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mAddCurrentLocation:Landroid/preference/PreferenceScreen;

    .line 106
    iget-object v2, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mAddCurrentLocation:Landroid/preference/PreferenceScreen;

    const v3, 0x7f04001e

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    .line 107
    const-string v2, "safety_zone_location"

    invoke-virtual {p0, v2}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mLocationCategory:Landroid/preference/PreferenceCategory;

    .line 108
    const-string v2, "vibrate"

    invoke-virtual {p0, v2}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    .line 110
    invoke-virtual {p0, v5}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->setHasOptionsMenu(Z)V

    .line 111
    const/4 v2, -0x1

    sput v2, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mEditPosition:I

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 115
    const-string v2, "first_mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mFirst:Z

    .line 116
    const-string v2, "SafetyZoneSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mFirst:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-boolean v2, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mFirst:Z

    if-eqz v2, :cond_0

    .line 118
    const-string v2, "SafetyZoneSettings"

    const-string v3, "mAddCurrentLocation is clicked. start wifi network picker"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1, v5}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 184
    .local v0, preference:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/settings/safetyzone/AccessPointPreference;

    if-eqz v1, :cond_0

    .line 185
    check-cast v0, Lcom/android/settings/safetyzone/AccessPointPreference;

    .end local v0           #preference:Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mSelectedPreference:Lcom/android/settings/safetyzone/AccessPointPreference;

    .line 186
    iget-object v1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mSelectedPreference:Lcom/android/settings/safetyzone/AccessPointPreference;

    invoke-virtual {v1}, Lcom/android/settings/safetyzone/AccessPointPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 187
    const/4 v1, 0x2

    const v2, 0x7f090d66

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 188
    const/4 v1, 0x3

    const v2, 0x7f090108

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 189
    const/4 v1, 0x4

    const v2, 0x7f090aa5

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 194
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 402
    const/4 v0, 0x1

    const v1, 0x7f090aa5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020126

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 404
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 173
    iput-object v1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mDialog:Landroid/app/AlertDialog;

    .line 174
    iput-object v1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->apData:Landroid/content/Intent;

    .line 176
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 177
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 408
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 416
    :goto_0
    return v6

    .line 411
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 412
    const-class v1, Lcom/android/settings/safetyzone/SafetyZoneListDelelete;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090d61

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 413
    const/4 v6, 0x1

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 465
    const/4 v3, 0x0

    .line 467
    .local v3, isAccessPoint:Z
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/android/settings/safetyzone/AccessPointPreference;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/settings/safetyzone/AccessPointPreference;->isAccessPoint()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 471
    :goto_0
    const-string v4, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick(), Preference is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "isAccessPoint : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mAddCurrentLocation:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 474
    const-string v4, "SafetyZoneSettings"

    const-string v6, "mAddCurrentLocation is clicked. start wifi network picker"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v5}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 493
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    .line 468
    :catch_0
    move-exception v1

    .line 469
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0

    .line 477
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 478
    const-string v4, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick(), mNotification : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "safety_zone_notification_enable"

    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_2

    .line 481
    :cond_3
    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    const-string v4, "SafetyZoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick(), mVibrate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "safety_zone_notification_vibrate"

    iget-object v8, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_3
    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 421
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 423
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 424
    .local v1, menuDel:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safety_zone_list"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, apName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    :cond_0
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 427
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020125

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 432
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020126

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 154
    invoke-direct {p0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->updateState()V

    .line 155
    return-void
.end method
