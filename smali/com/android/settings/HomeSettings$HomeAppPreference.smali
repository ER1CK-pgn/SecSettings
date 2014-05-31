.class Lcom/android/settings/HomeSettings$HomeAppPreference;
.super Landroid/preference/Preference;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HomeAppPreference"
.end annotation


# instance fields
.field activityName:Landroid/content/ComponentName;

.field fragment:Lcom/android/settings/HomeSettings;

.field final grayscaleFilter:Landroid/graphics/ColorFilter;

.field index:I

.field isChecked:Z

.field isSystem:Z

.field final synthetic this$0:Lcom/android/settings/HomeSettings;

.field uninstallTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "activity"
    .parameter "i"
    .parameter "icon"
    .parameter "title"
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    .line 225
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 226
    const v2, 0x7f040154

    invoke-virtual {p0, v2}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setLayoutResource(I)V

    .line 227
    invoke-virtual {p0, p5}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {p0, p6}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    iput-object p3, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    .line 230
    iput-object p7, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->fragment:Lcom/android/settings/HomeSettings;

    .line 231
    iput p4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->index:I

    .line 233
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 234
    .local v0, colorMatrix:Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 235
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 236
    .local v1, matrix:[F
    const/16 v2, 0x12

    const/high16 v3, 0x3f00

    aput v3, v1, v2

    .line 237
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    .line 239
    invoke-direct {p0, p8}, Lcom/android/settings/HomeSettings$HomeAppPreference;->determineTargets(Landroid/content/pm/ActivityInfo;)V

    .line 240
    return-void
.end method

.method private determineTargets(Landroid/content/pm/ActivityInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 245
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 246
    .local v5, meta:Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 247
    const-string v9, "android.app.home.alternate"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, altHomePackage:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 250
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v9, v9, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v10, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 251
    .local v4, match:I
    if-ltz v4, :cond_1

    .line 252
    iget-object v9, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v9, v9, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 253
    .local v2, altInfo:Landroid/content/pm/PackageInfo;
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 254
    .local v0, altFlags:I
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_0

    move v9, v7

    :goto_0
    iput-boolean v9, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    .line 255
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0           #altFlags:I
    .end local v1           #altHomePackage:Ljava/lang/String;
    .end local v2           #altInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #match:I
    :goto_1
    return-void

    .restart local v0       #altFlags:I
    .restart local v1       #altHomePackage:Ljava/lang/String;
    .restart local v2       #altInfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #match:I
    :cond_0
    move v9, v8

    .line 254
    goto :goto_0

    .line 258
    .end local v0           #altFlags:I
    .end local v2           #altInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #match:I
    :catch_0
    move-exception v3

    .line 260
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "HomeSettings"

    const-string v10, "Unable to compare/resolve alternate"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v1           #altHomePackage:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v9, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    :goto_2
    iput-boolean v7, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    .line 268
    :try_start_1
    iget-object v8, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v7, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    invoke-virtual {v7}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v9, "enterprise_policy"

    invoke-virtual {v7, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    #setter for: Lcom/android/settings/HomeSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v8, v7}, Lcom/android/settings/HomeSettings;->access$002(Lcom/android/settings/HomeSettings;Landroid/app/enterprise/EnterpriseDeviceManager;)Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 270
    iget-object v7, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    #getter for: Lcom/android/settings/HomeSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v7}, Lcom/android/settings/HomeSettings;->access$000(Lcom/android/settings/HomeSettings;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 272
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :cond_2
    :goto_3
    iget-object v7, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v7, v8

    .line 265
    goto :goto_2

    .line 274
    :catch_1
    move-exception v6

    .line 275
    .local v6, ne:Ljava/lang/NullPointerException;
    const-string v7, "HomeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EnterpriseDeviceManager is not getting started"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 285
    const v4, 0x7f0b0397

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 286
    .local v2, radio:Landroid/widget/RadioButton;
    iget-boolean v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 288
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->index:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 290
    .local v1, indexObj:Ljava/lang/Integer;
    const v4, 0x7f0b0399

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 291
    .local v0, icon:Landroid/widget/ImageView;
    iget-boolean v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v4, :cond_0

    .line 292
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 293
    iget-object v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 299
    :goto_0
    const v4, 0x7f0b0396

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 300
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v4, v4, Lcom/android/settings/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 302
    return-void

    .line 295
    .end local v3           #v:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/settings/HomeSettings;

    iget-object v4, v4, Lcom/android/settings/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setChecked(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eq p1, v0, :cond_0

    .line 306
    iput-boolean p1, p0, Lcom/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings$HomeAppPreference;->notifyChanged()V

    .line 309
    :cond_0
    return-void
.end method
