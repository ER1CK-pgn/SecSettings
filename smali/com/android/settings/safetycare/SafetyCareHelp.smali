.class public Lcom/android/settings/safetycare/SafetyCareHelp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafetyCareHelp.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mCompleteHandler:Landroid/os/Handler;

.field private mCoverage:Landroid/preference/ListPreference;

.field private mHasListView:Z

.field private mHelpContent:Ljava/lang/String;

.field private mHelpDBItem:Ljava/lang/String;

.field private mHelpImgResID:I

.field private mHelpTitleResID:I

.field private mHelpType:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessageView:Landroid/widget/TextView;

.field private mNoAct:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    iput-boolean v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHasListView:Z

    .line 88
    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpType:Ljava/lang/String;

    .line 89
    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpContent:Ljava/lang/String;

    .line 90
    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpTitleResID:I

    .line 92
    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpImgResID:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mListView:Landroid/widget/ListView;

    .line 110
    new-instance v0, Lcom/android/settings/safetycare/SafetyCareHelp$1;

    invoke-direct {v0, p0}, Lcom/android/settings/safetycare/SafetyCareHelp$1;-><init>(Lcom/android/settings/safetycare/SafetyCareHelp;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCompleteHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareHelp;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/safetycare/SafetyCareHelp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/safetycare/SafetyCareHelp;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/safetycare/SafetyCareHelp;->sendIntent(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/settings/safetycare/SafetyCareHelp;->queryEmergencyContactSize(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/safetycare/SafetyCareHelp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCompleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayAlertDialog(IILandroid/view/View;)V
    .locals 5
    .parameter "title"
    .parameter "msg"
    .parameter "content"

    .prologue
    const v4, 0x1040013

    const v3, 0x1040009

    .line 364
    if-eqz p3, :cond_1

    .line 365
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/safetycare/SafetyCareHelp$3;

    invoke-direct {v2, p0}, Lcom/android/settings/safetycare/SafetyCareHelp$3;-><init>(Lcom/android/settings/safetycare/SafetyCareHelp;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/safetycare/SafetyCareHelp$2;

    invoke-direct {v2, p0}, Lcom/android/settings/safetycare/SafetyCareHelp$2;-><init>(Lcom/android/settings/safetycare/SafetyCareHelp;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 410
    .local v0, dialog:Landroid/app/AlertDialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 411
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 412
    new-instance v1, Lcom/android/settings/safetycare/SafetyCareHelp$6;

    invoke-direct {v1, p0}, Lcom/android/settings/safetycare/SafetyCareHelp$6;-><init>(Lcom/android/settings/safetycare/SafetyCareHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 420
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 422
    :cond_0
    return-void

    .line 386
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/safetycare/SafetyCareHelp$5;

    invoke-direct {v2, p0}, Lcom/android/settings/safetycare/SafetyCareHelp$5;-><init>(Lcom/android/settings/safetycare/SafetyCareHelp;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/safetycare/SafetyCareHelp$4;

    invoke-direct {v2, p0}, Lcom/android/settings/safetycare/SafetyCareHelp$4;-><init>(Lcom/android/settings/safetycare/SafetyCareHelp;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .restart local v0       #dialog:Landroid/app/AlertDialog;
    goto :goto_0
.end method

.method private static queryEmergencyContactSize(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    .line 443
    const/4 v8, -0x1

    .line 444
    .local v8, nSize:I
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ICE"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "emergency"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "defaultId"

    const-string v5, "3"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 447
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    .line 451
    .local v2, PROJECTION:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 453
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 455
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 456
    if-eqz v6, :cond_0

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 462
    :cond_0
    if-eqz v6, :cond_1

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_1
    :goto_0
    return v8

    .line 459
    :catch_0
    move-exception v7

    .line 460
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    if-eqz v6, :cond_1

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 462
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_2

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method private sendIntent(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "intentName"
    .parameter "isEnable"
    .parameter "isOptionChanged"

    .prologue
    .line 425
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 427
    const-string v1, "isOptionChanged"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 429
    return-void
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 328
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 329
    .local v0, res:Landroid/content/res/Resources;
    const-string v1, "emer_help"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const-string v1, "emergency_mode"

    iput-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    .line 331
    const v1, 0x7f09177d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpContent:Ljava/lang/String;

    .line 332
    const v1, 0x7f09177b

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpTitleResID:I

    .line 333
    iput v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpImgResID:I

    .line 360
    :goto_0
    return-void

    .line 334
    :cond_0
    const-string v1, "earthquake"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHasListView:Z

    .line 336
    const-string v1, "safetycare_earthquake"

    iput-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f091780

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f091781

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpContent:Ljava/lang/String;

    .line 339
    const v1, 0x7f09177f

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpTitleResID:I

    .line 340
    iput v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpImgResID:I

    goto :goto_0

    .line 341
    :cond_1
    const-string v1, "fire_alarm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    const-string v1, "safetycare_fire"

    iput-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    .line 343
    const v1, 0x7f091789

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpContent:Ljava/lang/String;

    .line 344
    const v1, 0x7f091788

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpTitleResID:I

    .line 345
    iput v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpImgResID:I

    goto :goto_0

    .line 351
    :cond_2
    const-string v1, "acc_asst"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    const-string v1, "safetycare_accident"

    iput-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    .line 353
    const v1, 0x7f09178f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpContent:Ljava/lang/String;

    .line 354
    const v1, 0x7f09178e

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpTitleResID:I

    .line 355
    iput v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpImgResID:I

    goto :goto_0

    .line 357
    :cond_3
    const-string v1, "SafetyCareHelp"

    const-string v2, "Cannot get correct help information"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 205
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 206
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040194

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, guideView:Landroid/view/View;
    const v2, 0x7f0b01c1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mMessageView:Landroid/widget/TextView;

    .line 208
    const v2, 0x7f0b01c0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mImageView:Landroid/widget/ImageView;

    .line 210
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mListView:Landroid/widget/ListView;

    .line 211
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 213
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpImgResID:I

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpImgResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 223
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 224
    return-void

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 251
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 253
    .local v2, helpEngineState:Z
    :goto_0
    const-string v6, "emer_help"

    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 254
    const-string v6, "emergency_mode"

    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 255
    if-eqz p2, :cond_0

    if-nez v2, :cond_0

    .line 256
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 257
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x10900f9

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, content:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 262
    .local v1, em:Lcom/sec/android/emergencymode/EmergencyManager;
    const/16 v6, 0x10

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v1, v4, v6, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->triggerEmergencyMode(ZILandroid/content/Context;)I

    .line 263
    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 265
    .end local v0           #content:Landroid/view/View;
    .end local v1           #em:Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const-string v6, "safetycare_earthquake"

    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 266
    if-eqz p2, :cond_6

    if-nez v2, :cond_6

    .line 268
    const v6, 0x7f091782

    const v7, 0x7f091783

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/safetycare/SafetyCareHelp;->displayAlertDialog(IILandroid/view/View;)V

    .line 273
    :cond_1
    :goto_1
    const-string v6, "safetycare_fire"

    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 274
    if-eqz p2, :cond_7

    if-nez v2, :cond_7

    .line 276
    const v6, 0x7f09178a

    const v7, 0x7f09178b

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/safetycare/SafetyCareHelp;->displayAlertDialog(IILandroid/view/View;)V

    .line 281
    :cond_2
    :goto_2
    const-string v6, "send_emergency_message"

    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 282
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    if-eqz p2, :cond_8

    :goto_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    :cond_3
    const-string v4, "safetycare_accident"

    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 284
    if-eqz p2, :cond_9

    if-nez v2, :cond_9

    .line 286
    const v4, 0x7f091790

    const v5, 0x7f091791

    invoke-direct {p0, v4, v5, v8}, Lcom/android/settings/safetycare/SafetyCareHelp;->displayAlertDialog(IILandroid/view/View;)V

    .line 293
    :cond_4
    :goto_4
    return-void

    .end local v2           #helpEngineState:Z
    :cond_5
    move v2, v5

    .line 251
    goto/16 :goto_0

    .line 269
    .restart local v2       #helpEngineState:Z
    :cond_6
    if-nez p2, :cond_1

    .line 270
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    const-string v6, "com.sec.settings.safetycare.EARTHQUAKE_CHANGED"

    invoke-direct {p0, v6, v5, v5}, Lcom/android/settings/safetycare/SafetyCareHelp;->sendIntent(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 277
    :cond_7
    if-nez p2, :cond_2

    .line 278
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    const-string v6, "com.sec.settings.safetycare.FIRE_CHANGED"

    invoke-direct {p0, v6, v5, v5}, Lcom/android/settings/safetycare/SafetyCareHelp;->sendIntent(Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_8
    move v4, v5

    .line 282
    goto :goto_3

    .line 287
    :cond_9
    if-nez p2, :cond_4

    .line 288
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    const-string v4, "com.sec.settings.safetycare.ACCIDENT_CHANGED"

    invoke-direct {p0, v4, v5, v5}, Lcom/android/settings/safetycare/SafetyCareHelp;->sendIntent(Ljava/lang/String;ZZ)V

    goto :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 149
    const-string v4, "type"

    const-string v5, "emer_help"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpType:Ljava/lang/String;

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpType:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/safetycare/SafetyCareHelp;->setArgument(Ljava/lang/String;)V

    .line 152
    const v4, 0x7f07009d

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActivity:Landroid/app/Activity;

    .line 155
    new-instance v4, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 156
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    .line 157
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 159
    .local v1, padding:I
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 160
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 162
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 166
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarLayout:Landroid/view/View;

    .line 168
    .end local v1           #padding:I
    :cond_1
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 170
    const-string v4, "advanced_category"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    .line 172
    const-string v4, "coverage"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCoverage:Landroid/preference/ListPreference;

    .line 173
    const-string v4, "safetycare_earthquake"

    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 174
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 175
    .local v2, ps:Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCoverage:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    const-string v4, "safetycare_accident"

    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    const v4, 0x7f07009c

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 182
    const-string v4, "accident_noact"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mNoAct:Landroid/preference/CheckBoxPreference;

    .line 201
    .end local v2           #ps:Landroid/preference/PreferenceScreen;
    :cond_2
    :goto_0
    return-void

    .line 190
    :cond_3
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCoverage:Landroid/preference/ListPreference;

    if-eqz v4, :cond_2

    .line 191
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safetycare_earthquake_coverage"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, szCoverage:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 193
    const-string v3, "1000"

    .line 195
    :cond_4
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCoverage:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCoverage:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCoverage:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCoverage:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCoverage:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCoverage:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCoverage:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mCoverage:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safetycare_earthquake_coverage"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safetycare_earthquake"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "com.sec.settings.safetycare.EARTHQUAKE_CHANGED"

    invoke-direct {p0, v0, v3, v3}, Lcom/android/settings/safetycare/SafetyCareHelp;->sendIntent(Ljava/lang/String;ZZ)V

    .line 324
    :cond_0
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 300
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mNoAct:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safetycare_noact"

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mNoAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    :cond_0
    return v1

    .line 301
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 230
    const-string v3, "emer_help"

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 236
    .local v0, helpEngineState:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 239
    .end local v0           #helpEngineState:Z
    :cond_1
    const-string v3, "safetycare_accident"

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mNoAct:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 244
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp;->mNoAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safetycare_noact"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 247
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 235
    goto :goto_0

    :cond_4
    move v1, v2

    .line 244
    goto :goto_1
.end method
