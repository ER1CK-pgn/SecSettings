.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;,
        Lcom/android/settings/DateTimeSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static resources:Landroid/content/res/Resources;


# instance fields
.field private mAutoTimePref:Landroid/preference/CheckBoxPreference;

.field private mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 777
    new-instance v0, Lcom/android/settings/DateTimeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$3;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 792
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/DateTimeSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private applyEDMDateTimeChangePolicy()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 209
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 210
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "firstRun"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 212
    .local v5, isFirstRun:Z
    if-ne v5, v7, :cond_0

    .line 256
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string v6, "auto_time"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 217
    .local v1, autoEnabled:Z
    const-string v6, "auto_time_zone"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 219
    .local v2, autoZoneEnabled:Z
    const-string v6, "enterprise_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v3

    .line 222
    .local v3, dateTimeChangeEnabled:Z
    if-nez v3, :cond_1

    .line 223
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 224
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 225
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 226
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 227
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 231
    :cond_1
    const-string v6, "CTC"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 232
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 233
    .local v0, activePhone:I
    const/4 v6, 0x4

    if-lt v0, v6, :cond_2

    .line 234
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 235
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 236
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 237
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 238
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 242
    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 243
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 244
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 245
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    move v6, v8

    .line 241
    goto :goto_1

    :cond_5
    move v6, v8

    .line 242
    goto :goto_2

    .line 249
    .end local v0           #activePhone:I
    :cond_6
    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_8

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 250
    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_9

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 251
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 252
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 253
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    move v6, v8

    .line 249
    goto :goto_3

    :cond_9
    move v6, v8

    .line 250
    goto :goto_4
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 9
    .parameter "datePicker"

    .prologue
    .line 552
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 553
    .local v5, t:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 554
    const/16 v6, 0x7d0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 555
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 556
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 557
    const/16 v6, 0x7f4

    const/16 v7, 0xb

    const/16 v8, 0x1f

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 558
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 560
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 561
    .local v1, currentTimezone:Ljava/util/TimeZone;
    const-string v6, "America/Sao_Paulo"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 562
    .local v0, brasilia:Ljava/util/TimeZone;
    const-string v6, "America/Santiago"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 563
    .local v4, santiago:Ljava/util/TimeZone;
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 564
    :cond_0
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v2

    .line 565
    .local v2, minDate:J
    const-wide/32 v6, 0x36ee80

    sub-long/2addr v2, v6

    .line 566
    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 568
    .end local v2           #minDate:J
    :cond_1
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 694
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 696
    :cond_0
    :goto_0
    return v1

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 747
    :try_start_0
    sget-object v3, Lcom/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    const v4, 0x7f0700cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 748
    .local v2, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 749
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 750
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 751
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 752
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 757
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 758
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 759
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 768
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 774
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p0

    .line 755
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 769
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 770
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 763
    .end local v1           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 764
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 771
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 772
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 766
    .end local v0           #ioe:Ljava/io/IOException;
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private static getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 7
    .parameter "tz"

    .prologue
    .line 728
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "ZZZZ, zzzz"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 729
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 730
    .local v0, daylight:Z
    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, mTimeZoneDisplayName:Ljava/lang/String;
    const-string v5, "GMT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 733
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\,"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, parts:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/DateTimeSettings;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 739
    .end local v2           #parts:[Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v5

    .line 738
    :cond_0
    invoke-virtual {v4, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 739
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private initUI()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 150
    const-string v4, "auto_time"

    invoke-direct {p0, v4}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 151
    .local v0, autoTimeEnabled:Z
    const-string v4, "auto_time_zone"

    invoke-direct {p0, v4}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 153
    .local v1, autoTimeZoneEnabled:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 154
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "firstRun"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 156
    .local v3, isFirstRun:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 158
    const-string v4, "auto_time"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    .line 159
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    const-string v4, "auto_zone"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    .line 163
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_2

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "auto_time_zone"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "auto_time"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    const/4 v0, 0x0

    .line 173
    :cond_1
    const/4 v1, 0x0

    .line 175
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 177
    const-string v4, "time"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 178
    const-string v4, "24 hour"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 179
    const-string v4, "timezone"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 180
    const-string v4, "date"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 181
    const-string v4, "date_format"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 182
    const-string v4, "dualclock_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 184
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_6

    const-string v4, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 185
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "dualclock_menu_settings"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 186
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 191
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->updateDateFormatEntries()V

    .line 198
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_7

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_8

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 200
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_9

    :goto_4
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 203
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 205
    return-void

    :cond_5
    move v4, v6

    .line 185
    goto :goto_0

    .line 187
    :cond_6
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_3

    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_7
    move v4, v6

    .line 198
    goto :goto_2

    :cond_8
    move v4, v6

    .line 199
    goto :goto_3

    :cond_9
    move v5, v6

    .line 200
    goto :goto_4
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 685
    return-void

    .line 682
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 7
    .parameter "context"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 701
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 703
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 704
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 705
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 706
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 708
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 709
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 711
    :cond_0
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 7
    .parameter "context"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v4, 0x0

    .line 714
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 716
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 717
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 718
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 719
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 720
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 722
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 723
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 725
    :cond_0
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 673
    return-void
.end method


# virtual methods
.method public ChangeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "format"

    .prologue
    .line 415
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 416
    const-string v3, "."

    const-string v4, "/"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 417
    const-string v1, ""

    .line 418
    .local v1, RetDateFormat:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 420
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 421
    .local v0, NumCheck:C
    const/16 v3, 0x2f

    if-le v0, v3, :cond_0

    const/16 v3, 0x3a

    if-ge v0, v3, :cond_0

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v0           #NumCheck:C
    :cond_1
    return-object v1
.end method

.method public SetRegionalDate_Update()I
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 429
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 430
    .local v8, dateFormats:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 431
    .local v0, dummydate_for_dateformat:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 433
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v8, v5

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 434
    .local v10, format:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/settings/DateTimeSettings;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 435
    const/4 v9, 0x0

    .line 436
    .local v9, flag:Z
    const/4 v7, 0x0

    .line 437
    .local v7, curAppliedDate:I
    const/4 v11, 0x1

    .local v11, i:I
    :goto_0
    array-length v1, v8

    if-ge v11, v1, :cond_0

    .line 438
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v8, v11

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 439
    .local v12, tempDate:Ljava/lang/String;
    invoke-virtual {p0, v12}, Lcom/android/settings/DateTimeSettings;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 440
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    move v7, v11

    .line 442
    const/4 v9, 0x1

    .line 446
    .end local v12           #tempDate:Ljava/lang/String;
    :cond_0
    if-nez v9, :cond_1

    .line 447
    const/4 v7, -0x1

    .line 449
    :cond_1
    return v7

    .line 437
    .restart local v12       #tempDate:Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 645
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    .line 142
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 145
    new-instance v0, Lcom/android/settings/DateTimeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DateTimeSettings$SettingsObserver;-><init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    .line 147
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    .line 527
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 528
    .local v7, calendar:Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 546
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 530
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 536
    .local v0, d:Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DateTimeSettings;->configureDatePicker(Landroid/widget/DatePicker;)V

    .line 539
    .end local v0           #d:Landroid/app/DatePickerDialog;
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    move-object v0, v1

    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 383
    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 389
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 390
    invoke-static {v0, p2, p3, p4}, Lcom/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 391
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 285
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 291
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 649
    const-string v4, "oversea"

    const-string v5, "ril.currentplmn"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 650
    .local v0, isRoamingArea:Z
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 651
    if-nez v0, :cond_1

    const-string v4, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 653
    .local v1, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090fda

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 654
    const v4, 0x7f0915c9

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 655
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/DateTimeSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/DateTimeSettings$2;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 661
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 662
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 667
    .end local v1           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local p2
    :cond_0
    :goto_0
    return v3

    .line 664
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dualclock_menu_settings"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 599
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 600
    :cond_0
    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/android/settings/DateTimeSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 601
    sget v6, Lcom/android/settings/DateTimeSettings;->mSettingValue:I

    if-ne v6, v4, :cond_3

    move v3, v4

    .local v3, value:Z
    :goto_0
    move-object v0, p2

    .line 602
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 603
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 604
    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 605
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DateTimeSettings;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 610
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v3           #value:Z
    :cond_1
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v6, :cond_4

    .line 611
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 612
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 638
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    :goto_2
    return v4

    :cond_3
    move v3, v5

    .line 601
    goto :goto_0

    .line 613
    :cond_4
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v6, :cond_5

    .line 615
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 616
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 617
    :cond_5
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v6, :cond_6

    .line 618
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 619
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 620
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    goto :goto_1

    .line 621
    :cond_6
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 622
    const-string v6, "oversea"

    const-string v7, "ril.currentplmn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 623
    .local v1, isRoamingArea:Z
    if-nez v1, :cond_2

    const-string v6, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 624
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 625
    .local v2, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f090fda

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 626
    const v6, 0x7f0915c9

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 627
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 632
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 633
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 263
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 266
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 280
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 12
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 476
    const-string v7, "date_format"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 477
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f090138

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, format:Ljava/lang/String;
    const/4 v0, -0x1

    .line 480
    .local v0, SetDate:I
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 481
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0a0014

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, dateFormats:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->SetRegionalDate_Update()I

    move-result v0

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "regional"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    aget-object v4, v3, v0

    .line 488
    .end local v3           #dateFormats:[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "date_format"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 490
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 523
    .end local v0           #SetDate:I
    .end local v4           #format:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 486
    .restart local v0       #SetDate:I
    .restart local v4       #format:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "regional"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 491
    .end local v0           #SetDate:I
    .end local v4           #format:Ljava/lang/String;
    :cond_2
    const-string v7, "auto_time"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 492
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 493
    .local v1, autoEnabled:Z
    const-string v7, "DateTimeSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSharedPreferenceChanged KEY_AUTO_TIME preferences.getBoolean() return : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 496
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "firstRun"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 497
    .local v6, isFirstRun:Z
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v6, :cond_3

    .line 499
    invoke-static {p0}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->show(Lcom/android/settings/DateTimeSettings;)V

    .line 502
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "auto_time"

    if-eqz v1, :cond_4

    move v7, v8

    :goto_2
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 504
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_5

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 505
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_6

    :goto_4
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 508
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    goto :goto_1

    :cond_4
    move v7, v9

    .line 502
    goto :goto_2

    :cond_5
    move v7, v9

    .line 504
    goto :goto_3

    :cond_6
    move v8, v9

    .line 505
    goto :goto_4

    .line 510
    .end local v1           #autoEnabled:Z
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #isFirstRun:Z
    :cond_7
    const-string v7, "auto_zone"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 511
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 512
    .local v2, autoZoneEnabled:Z
    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 513
    invoke-static {p0}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->show(Lcom/android/settings/DateTimeSettings;)V

    .line 515
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "auto_time_zone"

    if-eqz v2, :cond_9

    move v7, v8

    :goto_5
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_a

    :goto_6
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 520
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    goto/16 :goto_1

    :cond_9
    move v7, v9

    .line 515
    goto :goto_5

    :cond_a
    move v8, v9

    .line 517
    goto :goto_6
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 398
    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 404
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 405
    invoke-static {v0, p2, p3}, Lcom/android/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public updateDateFormatEntries()V
    .locals 14

    .prologue
    const/16 v3, 0x1f

    const/16 v4, 0xd

    const/16 v2, 0xb

    const/4 v13, 0x1

    const/4 v5, 0x0

    .line 332
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0a0014

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 333
    .local v9, dateFormats:[Ljava/lang/String;
    array-length v1, v9

    new-array v11, v1, [Ljava/lang/String;

    .line 334
    .local v11, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, currentFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "regional"

    invoke-static {v1, v6, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v13, :cond_0

    .line 336
    const-string v8, ""

    .line 340
    :cond_0
    if-nez v8, :cond_1

    .line 341
    const-string v8, ""

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 349
    .local v0, dummydate_for_dateformat:Ljava/util/Calendar;
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 351
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    array-length v1, v11

    if-ge v12, v1, :cond_3

    .line 357
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v9, v12

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 361
    .local v10, formatted:Ljava/lang/String;
    aget-object v1, v9, v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->SetRegionalDate_Update()I

    move-result v7

    .line 363
    .local v7, SetDate:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v9, v7

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090139

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v10, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v12

    .line 351
    .end local v7           #SetDate:I
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 369
    :cond_2
    aput-object v10, v11, v12

    goto :goto_1

    .line 374
    .end local v10           #formatted:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 375
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 376
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 294
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v13

    .line 295
    .local v13, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 296
    .local v12, now:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 297
    .local v0, dummydate_for_dateformat:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 298
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 301
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xb

    const/16 v4, 0x1f

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 302
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 303
    .local v10, dummyDate:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "regional"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 308
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, dateFormats:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->SetRegionalDate_Update()I

    move-result v8

    .line 310
    .local v8, SetDate:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v9, v8

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 313
    .local v11, formatted:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 318
    .end local v8           #SetDate:I
    .end local v9           #dateFormats:[Ljava/lang/String;
    .end local v11           #formatted:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->updateDateFormatEntries()V

    .line 325
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 328
    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v13, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
