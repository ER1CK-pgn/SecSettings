.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodAndSubtypeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHaveHardKeyboard:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputMethodId:Ljava/lang/String;

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemLocale:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    .line 396
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .locals 1
    .parameter "targetImiId"

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 356
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 25

    .prologue
    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 232
    .local v17, root:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 234
    .local v8, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    const/4 v3, 0x0

    .line 236
    .local v3, N:I
    :goto_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v3, :cond_b

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 238
    .local v10, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v19

    .line 239
    .local v19, subtypeCount:I
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-gt v0, v1, :cond_2

    .line 236
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 234
    .end local v3           #N:I
    .end local v9           #i:I
    .end local v10           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v19           #subtypeCount:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 240
    .restart local v3       #N:I
    .restart local v9       #i:I
    .restart local v10       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v19       #subtypeCount:I
    :cond_2
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 243
    .local v11, imiId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 246
    :cond_3
    new-instance v14, Landroid/preference/PreferenceCategory;

    invoke-direct {v14, v8}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 247
    .local v14, keyboardSettingsCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 249
    .local v16, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 251
    .local v15, label:Ljava/lang/CharSequence;
    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v14, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 254
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, v8}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 255
    .local v5, autoCB:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {v14, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-direct {v4, v8}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 259
    .local v4, activeInputMethodsCategory:Landroid/preference/PreferenceCategory;
    const v22, 0x7f090838

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 260
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    const/4 v12, 0x0

    .line 263
    .local v12, isAutoSubtype:Z
    const/4 v6, 0x0

    .line 264
    .local v6, autoSubtypeLabel:Ljava/lang/CharSequence;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v21, subtypePreferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    if-lez v19, :cond_8

    .line 266
    const/4 v13, 0x0

    .local v13, j:I
    :goto_3
    move/from16 v0, v19

    if-ge v13, v0, :cond_6

    .line 267
    invoke-virtual {v10, v13}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v18

    .line 268
    .local v18, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v8, v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 270
    .local v20, subtypeLabel:Ljava/lang/CharSequence;
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 271
    if-nez v12, :cond_4

    .line 272
    const/4 v12, 0x1

    .line 273
    move-object/from16 v6, v20

    .line 266
    :cond_4
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 276
    :cond_5
    new-instance v7, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v7, v8, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/text/Collator;)V

    .line 278
    .local v7, chkbxPref:Landroid/preference/CheckBoxPreference;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 283
    .end local v7           #chkbxPref:Landroid/preference/CheckBoxPreference;
    .end local v18           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v20           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_6
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 284
    const/4 v13, 0x0

    :goto_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_7

    .line 285
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/preference/Preference;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 284
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 287
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v13           #j:I
    :cond_8
    if-eqz v12, :cond_a

    .line 290
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 291
    sget-object v22, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->TAG:Ljava/lang/String;

    const-string v23, "Title for auto subtype is empty."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v22, "---"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 294
    :cond_9
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 297
    :cond_a
    const v22, 0x7f090839

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_2

    .line 300
    .end local v4           #activeInputMethodsCategory:Landroid/preference/PreferenceCategory;
    .end local v5           #autoCB:Landroid/preference/CheckBoxPreference;
    .end local v6           #autoSubtypeLabel:Ljava/lang/CharSequence;
    .end local v10           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v11           #imiId:Ljava/lang/String;
    .end local v12           #isAutoSubtype:Z
    .end local v14           #keyboardSettingsCategory:Landroid/preference/PreferenceCategory;
    .end local v15           #label:Ljava/lang/CharSequence;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    .end local v19           #subtypeCount:I
    .end local v21           #subtypePreferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_b
    return-object v17
.end method

.method private isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z
    .locals 6
    .parameter "imiId"

    .prologue
    .line 304
    const/4 v0, 0x1

    .line 306
    .local v0, allSubtypesOff:Z
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    if-nez v5, :cond_0

    move v1, v0

    .line 321
    .end local v0           #allSubtypesOff:Z
    .local v1, allSubtypesOff:I
    :goto_0
    return v1

    .line 309
    .end local v1           #allSubtypesOff:I
    .restart local v0       #allSubtypesOff:Z
    :cond_0
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 311
    .local v4, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    if-eqz v4, :cond_2

    .line 312
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 313
    .local v3, subtypePref:Landroid/preference/Preference;
    instance-of v5, v3, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .end local v3           #subtypePref:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 315
    const/4 v0, 0x0

    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    move v1, v0

    .line 321
    .restart local v1       #allSubtypesOff:I
    goto :goto_0
.end method

.method private onCreateIMM()V
    .locals 2

    .prologue
    .line 222
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    .line 227
    return-void
.end method

.method private setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .locals 1
    .parameter "targetImiId"

    .prologue
    .line 351
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 352
    return-void
.end method

.method private setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V
    .locals 7
    .parameter "imiId"
    .parameter "autoSelectionEnabled"

    .prologue
    const/4 v5, 0x0

    .line 325
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 326
    .local v0, autoSelectionCB:Landroid/preference/CheckBoxPreference;
    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {v0, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 328
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 330
    .local v3, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    if-eqz v3, :cond_4

    .line 331
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 332
    .local v2, subtypePref:Landroid/preference/Preference;
    instance-of v4, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2

    .line 336
    if-nez p2, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 337
    if-eqz p2, :cond_2

    .line 338
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .end local v2           #subtypePref:Landroid/preference/Preference;
    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .restart local v2       #subtypePref:Landroid/preference/Preference;
    :cond_3
    move v4, v5

    .line 336
    goto :goto_2

    .line 343
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #subtypePref:Landroid/preference/Preference;
    :cond_4
    if-eqz p2, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, v4, v5, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 346
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAutoSelectionCB()V
    .locals 3

    .prologue
    .line 390
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 391
    .local v1, imiId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 393
    .end local v1           #imiId:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method private updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V
    .locals 14
    .parameter "targetImiId"
    .parameter "check"

    .prologue
    .line 360
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 361
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, imiId:Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 363
    :cond_1
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 366
    .local v0, autoCB:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 367
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 368
    .local v11, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v5, v13}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 370
    .local v8, implicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v11, :cond_0

    if-eqz v8, :cond_0

    .line 371
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/preference/Preference;

    .line 372
    .local v10, subtypePref:Landroid/preference/Preference;
    instance-of v12, v10, Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_2

    move-object v1, v10

    .line 373
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 374
    .local v1, cb:Landroid/preference/CheckBoxPreference;
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 375
    if-eqz p2, :cond_2

    .line 376
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 377
    .local v9, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, implicitlyEnabledSubtypePrefKey:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 379
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 387
    .end local v0           #autoCB:Landroid/preference/CheckBoxPreference;
    .end local v1           #cb:Landroid/preference/CheckBoxPreference;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #imiId:Ljava/lang/String;
    .end local v7           #implicitlyEnabledSubtypePrefKey:Ljava/lang/String;
    .end local v8           #implicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10           #subtypePref:Landroid/preference/Preference;
    .end local v11           #subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 68
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 69
    .local v1, config:Landroid/content/res/Configuration;
    iget v5, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 71
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, arguments:Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "input_method_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    .line 78
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    .line 79
    const-string v5, "input_method_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, inputMethodId:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 82
    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    .line 85
    .end local v2           #inputMethodId:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.TITLE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    .line 86
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    .line 87
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, title:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 89
    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    .line 93
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 94
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    .line 95
    invoke-static {v3}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    .line 96
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->onCreateIMM()V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 99
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 100
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 101
    :cond_2
    return-void

    .line 69
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v3           #locale:Ljava/util/Locale;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    .line 219
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->clearImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 130
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 16
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 136
    move-object/from16 v0, p2

    instance-of v9, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_6

    move-object/from16 v2, p2

    .line 137
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 139
    .local v2, chkPref:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 140
    .local v7, imiId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_0

    .line 144
    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V

    .line 145
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    .line 209
    .end local v2           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #imiId:Ljava/lang/String;
    :goto_0
    return v9

    .line 149
    .restart local v2       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, id:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 151
    const/4 v8, 0x0

    .line 152
    .local v8, selImi:Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 153
    .local v1, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 155
    .local v6, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 156
    move-object v8, v6

    .line 157
    invoke-static {v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 158
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5, v10}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 161
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto :goto_0

    .line 153
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    .end local v6           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    if-nez v8, :cond_4

    .line 167
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto :goto_0

    .line 169
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 170
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    if-nez v9, :cond_7

    .line 171
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x1040014

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x1010355

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2, v5}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;-><init>(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x104

    new-instance v11, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$1;-><init>(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    .line 199
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0907fd

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 209
    .end local v1           #N:I
    .end local v2           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #id:Ljava/lang/String;
    .end local v8           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    :goto_3
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto/16 :goto_0

    .line 195
    .restart local v1       #N:I
    .restart local v2       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #id:Ljava/lang/String;
    .restart local v8       #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 196
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    .line 204
    .end local v1           #N:I
    .end local v3           #i:I
    .end local v8           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5, v10}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionCB()V

    goto :goto_3
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionCB()V

    .line 121
    return-void
.end method
