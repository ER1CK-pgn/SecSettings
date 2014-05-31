.class public Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;
.super Landroid/app/Fragment;
.source "ToggleCaptioningPreferenceFragment.java"


# instance fields
.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

.field private toggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)Lcom/android/settings/accessibility/CaptionPropertiesFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;I)V
    .locals 7
    .parameter "manager"
    .parameter "previewText"
    .parameter "styleId"

    .prologue
    const v6, 0x7f09090c

    .line 120
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 124
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 125
    .local v2, fontScale:F
    const/high16 v5, 0x4240

    mul-float/2addr v5, v2

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 127
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 128
    .local v3, locale:Ljava/util/Locale;
    if-eqz v3, :cond_0

    .line 129
    invoke-static {v0, v3, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 131
    .local v4, localizedText:Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .end local v4           #localizedText:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p1, v6}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_0
.end method

.method private installActionBarToggleSwitch()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v5, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 139
    .local v1, activity:Landroid/app/Activity;
    new-instance v6, Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-direct {v6, v1}, Lcom/android/settings/accessibility/ToggleSwitch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->toggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 143
    .local v3, padding:I
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->toggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v6, v5, v5, v3, v5}, Lcom/android/settings/accessibility/ToggleSwitch;->setPaddingRelative(IIII)V

    .line 145
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 146
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 148
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v4, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 151
    .local v4, params:Landroid/app/ActionBar$LayoutParams;
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->toggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v0, v6, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 153
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    .line 154
    .local v2, enabled:Z
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 155
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 156
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->toggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v5, v2}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 157
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->toggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    new-instance v6, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment$1;

    invoke-direct {v6, p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/accessibility/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 168
    return-void

    .line 155
    :cond_0
    const/4 v5, 0x4

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const v1, 0x7f040037

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, rootView:Landroid/view/View;
    instance-of v1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 67
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 91
    .local v0, trans:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 92
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 94
    .end local v0           #trans:Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->toggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->toggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ToggleSwitch;->setVisibility(I)V

    .line 97
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .line 76
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->setParent(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)V

    .line 78
    const v0, 0x7f0b00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->installActionBarToggleSwitch()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->refreshPreviewText()V

    .line 82
    return-void
.end method

.method public refreshPreviewText()V
    .locals 8

    .prologue
    const v7, 0x7f09090b

    .line 100
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 101
    .local v4, preview:Lcom/android/internal/widget/SubtitleView;
    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 103
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 104
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v5

    .line 105
    .local v5, styleId:I
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v6, v4, v5}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;I)V

    .line 107
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 108
    .local v2, locale:Ljava/util/Locale;
    if-eqz v2, :cond_1

    .line 109
    invoke-static {v0, v2, v7}, Lcom/android/settings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 111
    .local v3, localizedText:Ljava/lang/CharSequence;
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #localizedText:Ljava/lang/CharSequence;
    .end local v5           #styleId:I
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #locale:Ljava/util/Locale;
    .restart local v5       #styleId:I
    :cond_1
    invoke-virtual {v4, v7}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_0
.end method
