.class public Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mDisableExclusiveOptionsFlag:I

.field private mDisableExclusiveOptionsMessage:Ljava/lang/String;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private mShownDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .locals 18
    .parameter "info"

    .prologue
    .line 270
    const-string v13, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 272
    .local v11, inflater:Landroid/view/LayoutInflater;
    const v13, 0x7f040090

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 274
    .local v7, content:Landroid/view/View;
    const v13, 0x7f0b0182

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 275
    .local v2, capabilitiesHeaderView:Landroid/widget/TextView;
    const v13, 0x7f0908e8

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const v13, 0x7f0b0183

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 281
    .local v3, capabilitiesView:Landroid/widget/LinearLayout;
    const v13, 0x1090038

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 283
    .local v6, capabilityView:Landroid/view/View;
    const v13, 0x10202e7

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 284
    .local v10, imageView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1080491

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    const v13, 0x10202eb

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 287
    .local v12, labelView:Landroid/widget/TextView;
    const v13, 0x7f0908e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const v13, 0x10202ec

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 290
    .local v8, descriptionView:Landroid/widget/TextView;
    const v13, 0x7f0908ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos()Ljava/util/List;

    move-result-object v1

    .line 294
    .local v1, capabilities:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 297
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 298
    .local v5, capabilityCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v5, :cond_0

    .line 299
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 301
    .local v4, capability:Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    const v13, 0x1090038

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 303
    const v13, 0x10202e7

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #imageView:Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .line 304
    .restart local v10       #imageView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1080491

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    const v13, 0x10202eb

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #labelView:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 307
    .restart local v12       #labelView:Landroid/widget/TextView;
    iget v13, v4, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    const v13, 0x10202ec

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #descriptionView:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 310
    .restart local v8       #descriptionView:Landroid/widget/TextView;
    iget v13, v4, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 298
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 315
    .end local v4           #capability:Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    :cond_0
    return-object v7
.end method

.method private getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v4

    .line 163
    .local v4, serviceInfos:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 164
    .local v3, serviceInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 165
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 166
    .local v2, serviceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 167
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v2           #serviceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_1
    return-object v2

    .line 164
    .restart local v1       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v2       #serviceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v2           #serviceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCheckingstatus(Z)Z
    .locals 14
    .parameter "enabled"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 427
    if-eqz p1, :cond_8

    .line 428
    const/4 v2, 0x0

    .local v2, TCountry:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, TLanguage:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, KCountry:Ljava/lang/String;
    const/4 v1, 0x0

    .line 429
    .local v1, KLanguage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 432
    .local v5, conf:Landroid/content/res/Configuration;
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v10, :cond_0

    .line 433
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 480
    .end local v0           #KCountry:Ljava/lang/String;
    .end local v1           #KLanguage:Ljava/lang/String;
    .end local v2           #TCountry:Ljava/lang/String;
    .end local v3           #TLanguage:Ljava/lang/String;
    .end local v5           #conf:Landroid/content/res/Configuration;
    :goto_0
    return v8

    .line 436
    .restart local v0       #KCountry:Ljava/lang/String;
    .restart local v1       #KLanguage:Ljava/lang/String;
    .restart local v2       #TCountry:Ljava/lang/String;
    .restart local v3       #TLanguage:Ljava/lang/String;
    .restart local v5       #conf:Landroid/content/res/Configuration;
    :cond_0
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    .line 437
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    .line 438
    iget-object v10, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 439
    iget-object v10, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 444
    :goto_1
    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v8, v9

    .line 445
    goto :goto_0

    .line 440
    :catch_0
    move-exception v6

    .line 441
    .local v6, e:Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 448
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 449
    :cond_3
    iget-object v10, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v10

    if-lez v10, :cond_4

    .line 450
    invoke-virtual {p0, v13}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 455
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    .line 456
    .local v4, bundle_data:Landroid/os/Bundle;
    const-string v10, "is_enabled"

    invoke-virtual {v4, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 457
    .local v7, is_enabled:Z
    const-string v10, "dialog_content"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsMessage:Ljava/lang/String;

    .line 458
    const-string v10, "option_flag"

    invoke-virtual {v4, v10, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    .line 459
    if-eqz v7, :cond_5

    .line 460
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 464
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_view_master_onoff"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v9, :cond_8

    .line 466
    invoke-virtual {p0, v12}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 471
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_hovering"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v9, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v9, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "multi_window_enabled"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v9, :cond_8

    .line 474
    :cond_7
    invoke-virtual {p0, v12}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_0

    .end local v0           #KCountry:Ljava/lang/String;
    .end local v1           #KLanguage:Ljava/lang/String;
    .end local v2           #TCountry:Ljava/lang/String;
    .end local v3           #TLanguage:Ljava/lang/String;
    .end local v4           #bundle_data:Landroid/os/Bundle;
    .end local v5           #conf:Landroid/content/res/Configuration;
    .end local v7           #is_enabled:Z
    :cond_8
    move v8, v9

    .line 480
    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 321
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 322
    .local v1, context:Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    .line 376
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 324
    :pswitch_0
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-eq v5, v0, :cond_0

    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v5, v6, :cond_3

    .line 325
    :cond_0
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v5, v0, :cond_2

    .line 326
    .local v0, checked:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onCheckingstatus(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v4, v0}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 328
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "checked"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 329
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 378
    .end local v0           #checked:Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v4

    .line 325
    goto :goto_0

    .line 331
    :cond_3
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v5, v7, :cond_6

    .line 332
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v5, v7, :cond_4

    .line 334
    .restart local v0       #checked:Z
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 335
    invoke-static {v1, v7}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 343
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v2, finger_air_view_changed:Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "multi_window_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v4, v0}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 349
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "checked"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v0           #checked:Z
    .end local v2           #finger_air_view_changed:Landroid/content/Intent;
    :cond_4
    move v0, v4

    .line 332
    goto :goto_2

    .line 337
    .restart local v0       #checked:Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view_highlight"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 351
    .end local v0           #checked:Z
    :cond_6
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v5, v8, :cond_1

    .line 352
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v5, v8, :cond_7

    .line 353
    .restart local v0       #checked:Z
    :goto_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsFlag:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 354
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v4, v0}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 355
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "checked"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .end local v0           #checked:Z
    :cond_7
    move v0, v4

    .line 352
    goto :goto_4

    .line 361
    :pswitch_1
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-eq v5, v0, :cond_8

    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v5, v6, :cond_a

    .line 362
    :cond_8
    iget v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v5, v6, :cond_9

    .line 363
    .restart local v0       #checked:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onCheckingstatus(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v4, v0}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 365
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "checked"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 366
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .end local v0           #checked:Z
    :cond_9
    move v0, v4

    .line 362
    goto :goto_5

    .line 368
    :cond_a
    iget v4, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 369
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.TTS_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_1

    .line 322
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x0

    const v12, 0x104000a

    const/high16 v11, 0x104

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 177
    const/4 v3, 0x0

    .line 178
    .local v3, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 179
    .local v1, message:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 181
    .local v2, temp_title:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 239
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 183
    :pswitch_0
    iput v9, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 184
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 185
    .local v0, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v0, :cond_1

    .line 260
    .end local v0           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    :goto_0
    return-object v4

    .line 188
    .restart local v0       #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0908e7

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v12, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v11, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 197
    .end local v0           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :pswitch_1
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 198
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 199
    .restart local v0       #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v0, :cond_0

    .line 202
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0908eb

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0908ec

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v12, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v11, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 211
    .end local v0           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :pswitch_2
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 212
    const v4, 0x7f0908ed

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    const v4, 0x7f0908ee

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    :goto_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    .line 244
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090b2c

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v11, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 216
    :pswitch_3
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0908ef

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 218
    check-cast v2, Ljava/lang/String;

    .line 219
    const v4, 0x7f090188

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    const v4, 0x7f0908f0

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    goto :goto_1

    .line 223
    :pswitch_4
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0908ef

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 225
    check-cast v2, Ljava/lang/String;

    .line 226
    const v4, 0x7f090188

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    const v4, 0x7f0908f1

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    goto/16 :goto_1

    .line 230
    :pswitch_5
    const/4 v5, 0x6

    iput v5, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 231
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 232
    .restart local v0       #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v0, :cond_0

    .line 235
    const v4, 0x7f0908e6

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 236
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mDisableExclusiveOptionsMessage:Ljava/lang/String;

    .line 237
    goto/16 :goto_1

    .line 251
    .end local v0           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_2
    const/4 v4, 0x6

    if-ne p1, v4, :cond_3

    .line 252
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v12, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v11, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 260
    :cond_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v12, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 383
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 404
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 91
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 92
    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 11
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 108
    .local v2, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    if-ne v2, v8, :cond_0

    .line 109
    new-instance v2, Ljava/util/HashSet;

    .end local v2           #enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 113
    .restart local v2       #enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 114
    .local v7, toggledService:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 115
    .local v0, accessibilityEnabled:Z
    if-eqz p2, :cond_2

    .line 116
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    const/4 v0, 0x1

    .line 133
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v3, enabledServicesBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 139
    .local v1, enabledService:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    .end local v1           #enabledService:Landroid/content/ComponentName;
    .end local v3           #enabledServicesBuilder:Ljava/lang/StringBuilder;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 122
    sget-object v6, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 123
    .local v6, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 124
    .restart local v1       #enabledService:Landroid/content/ComponentName;
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 126
    const/4 v0, 0x1

    .line 127
    goto :goto_0

    .line 143
    .end local v1           #enabledService:Landroid/content/ComponentName;
    .end local v6           #installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v3       #enabledServicesBuilder:Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 144
    .local v4, enabledServicesBuilderLength:I
    if-lez v4, :cond_5

    .line 145
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 147
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "accessibility_enabled"

    if-eqz v0, :cond_6

    const/4 v8, 0x1

    :goto_2
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    return-void

    .line 152
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5
    .parameter "arguments"

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 410
    const-string v3, "settings_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, settingsTitle:Ljava/lang/String;
    const-string v3, "settings_component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, settingsComponentName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 414
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 416
    .local v1, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 418
    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 419
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 423
    .end local v1           #settingsIntent:Landroid/content/Intent;
    :cond_0
    const-string v3, "component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 424
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 85
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 86
    return-void
.end method
