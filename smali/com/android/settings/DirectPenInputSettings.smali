.class public Lcom/android/settings/DirectPenInputSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DirectPenInputSettings.java"


# static fields
.field private static mActionBarLayout:Landroid/view/View;


# instance fields
.field private ACCESSIBILITY_ENABLED:Ljava/lang/String;

.field private ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

.field private DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

.field private URI_INPUT_LANGUAGE:Ljava/lang/String;

.field private URI_PEN_WRITING_BUDDY:Ljava/lang/String;

.field private URI_TEXT_SUGGESTION:Ljava/lang/String;

.field private actionBarSwitch:Landroid/widget/Switch;

.field private enabledServicesSeparator:C

.field private isShowEnablePopup:Z

.field private mActivity:Landroid/app/Activity;

.field private mListView:Landroid/widget/ListView;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private tryBtn:Landroid/widget/Button;

.field private tryItView:Landroid/view/View;

.field private withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 45
    const-string v0, "pen_writing_buddy"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    .line 46
    const-string v0, "pen_writing_buddy_text_suggestion"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    .line 47
    const-string v0, "pen_writing_buddy_input_language"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_INPUT_LANGUAGE:Ljava/lang/String;

    .line 48
    const-string v0, "accessibility_display_magnification_enabled"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    .line 49
    const-string v0, "enabled_accessibility_services"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    .line 50
    const-string v0, "com.google.android.marvin.talkback"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    .line 53
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    .line 54
    const/16 v0, 0x3a

    iput-char v0, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    .line 56
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    .line 58
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    .line 231
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$3;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 250
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$4;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    .line 285
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$5;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 386
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$8;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 399
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$9;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DirectPenInputSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/DirectPenInputSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->setPreferenceEnabled()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->startTryIt()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private setPreferenceEnabled()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v3, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 164
    .local v2, writingBuddyOn:Z
    :cond_0
    const-string v3, "input_language"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 165
    .local v1, preference:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 169
    :cond_1
    const-string v3, "predictive_text"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 170
    .local v0, cp:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 173
    :cond_2
    return-void
.end method

.method private startTryIt()V
    .locals 4

    .prologue
    .line 272
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 273
    .local v1, mIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    :goto_0
    const-string v2, "writing_buddy_tutorial_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 283
    .end local v1           #mIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 276
    .restart local v1       #mIntent:Landroid/content/Intent;
    :cond_0
    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    .end local v1           #mIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public isTalkBackEnabled()Z
    .locals 7

    .prologue
    .line 304
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    iget-char v5, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 305
    .local v4, sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, enabledServicesSetting:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 308
    const-string v3, ""

    .line 311
    :cond_0
    move-object v0, v4

    .line 312
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 314
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 315
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 317
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 318
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    const/4 v5, 0x1

    .line 322
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 125
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 126
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f07003c

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    .line 127
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    const v2, 0x7f0b00bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    .line 128
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    .line 130
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/DirectPenInputSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DirectPenInputSettings$1;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/DirectPenInputSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DirectPenInputSettings$2;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 158
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    .line 75
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 76
    const v10, 0x7f07003b

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 78
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v9, 0x1

    .line 79
    .local v9, writingBuddyOn:Z
    :goto_0
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "default_input_method"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, inputMethodId:Ljava/lang/String;
    const-string v10, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 81
    const-string v10, "input_language"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 82
    .local v6, pf:Landroid/preference/Preference;
    if-eqz v6, :cond_0

    .line 83
    const-string v10, "settings_more_information"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 84
    .local v5, pc:Landroid/preference/PreferenceCategory;
    if-eqz v5, :cond_0

    .line 85
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    .end local v5           #pc:Landroid/preference/PreferenceCategory;
    .end local v6           #pf:Landroid/preference/Preference;
    :cond_0
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 91
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 92
    const-string v10, "ro.build.characteristics"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, deviceType:Ljava/lang/String;
    const-string v10, "tablet"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 94
    .local v4, isTablet:Z
    if-nez v4, :cond_5

    .line 95
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 99
    :goto_1
    new-instance v10, Landroid/widget/Switch;

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 100
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0034

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 101
    .local v7, rightPadding:I
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v7, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v10, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 103
    const/16 v10, 0x10

    const/16 v11, 0x10

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 105
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x15

    invoke-direct {v11, v12, v13, v14}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 109
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v10

    sput-object v10, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    .line 110
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    .end local v2           #deviceType:Ljava/lang/String;
    .end local v4           #isTablet:Z
    .end local v7           #rightPadding:I
    :cond_1
    const-string v10, "predictive_text"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 114
    .local v1, cp:Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_3

    .line 115
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v8, 0x1

    .line 116
    .local v8, textSuggestion:Z
    :goto_2
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v10

    if-eq v10, v8, :cond_2

    .line 117
    invoke-virtual {v1, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 119
    :cond_2
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    .end local v8           #textSuggestion:Z
    :cond_3
    return-void

    .line 78
    .end local v0           #bar:Landroid/app/ActionBar;
    .end local v1           #cp:Landroid/preference/CheckBoxPreference;
    .end local v3           #inputMethodId:Ljava/lang/String;
    .end local v9           #writingBuddyOn:Z
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 97
    .restart local v0       #bar:Landroid/app/ActionBar;
    .restart local v2       #deviceType:Ljava/lang/String;
    .restart local v3       #inputMethodId:Ljava/lang/String;
    .restart local v4       #isTablet:Z
    .restart local v9       #writingBuddyOn:Z
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_1

    .line 115
    .end local v2           #deviceType:Ljava/lang/String;
    .end local v4           #isTablet:Z
    .restart local v1       #cp:Landroid/preference/CheckBoxPreference;
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    const v1, 0x7f091291

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201db

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 227
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 219
    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "writing_buddy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 180
    .local v2, writingBuddyOn:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eq v5, v2, :cond_0

    .line 181
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->setPreferenceEnabled()V

    .line 184
    const-string v5, "input_language"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 185
    .local v0, pf:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 186
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->URI_INPUT_LANGUAGE:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, summary:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    .end local v1           #summary:Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 190
    sget-object v5, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 193
    :cond_2
    return-void

    .end local v0           #pf:Landroid/preference/Preference;
    .end local v2           #writingBuddyOn:Z
    :cond_3
    move v2, v4

    .line 179
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 198
    sget-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public showEnableDialog(Ljava/lang/String;Z)V
    .locals 8
    .parameter "message"
    .parameter "withOffFunctions"

    .prologue
    const v7, 0x7f090df8

    const/4 v6, 0x1

    .line 353
    const v2, 0x7f090df3

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f090deb

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, dialog_title:Ljava/lang/String;
    iput-boolean v6, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    .line 357
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090df9

    new-instance v4, Lcom/android/settings/DirectPenInputSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/DirectPenInputSettings$7;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/DirectPenInputSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/DirectPenInputSettings$6;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 378
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 383
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 384
    return-void

    .line 381
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public turnOffTalkBack()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 326
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    iget-char v7, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 327
    .local v4, sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, enabledServicesSetting:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v6

    .line 331
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v0, builder:Ljava/lang/StringBuilder;
    move-object v1, v4

    .line 336
    .local v1, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 337
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 338
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, componentNameString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 340
    iget-char v6, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_3
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 346
    .end local v2           #componentNameString:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.talkback_off"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v5, talk_back_off:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    const/4 v6, 0x1

    goto :goto_0
.end method
