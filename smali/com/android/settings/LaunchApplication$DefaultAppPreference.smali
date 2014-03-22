.class Lcom/android/settings/LaunchApplication$DefaultAppPreference;
.super Landroid/preference/Preference;
.source "LaunchApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LaunchApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultAppPreference"
.end annotation


# instance fields
.field packageName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/LaunchApplication;


# direct methods
.method public constructor <init>(Lcom/android/settings/LaunchApplication;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "icon"
    .parameter "title"
    .parameter "packageName"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    .line 339
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 340
    const v0, 0x7f0400e4

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 341
    invoke-virtual {p0, p3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 342
    invoke-virtual {p0, p4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 343
    iput-object p5, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    .line 344
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 350
    const v2, 0x7f0b024e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 352
    .local v0, clearButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    iget-object v2, v2, Lcom/android/settings/LaunchApplication;->mClearClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v2, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 355
    const v2, 0x7f0b024d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 356
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    iget-object v2, v2, Lcom/android/settings/LaunchApplication;->mApplicationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v2, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 358
    return-void
.end method
