.class public Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2139
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 14
    .parameter "parent"

    .prologue
    .line 2144
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2192
    :goto_0
    return-void

    .line 2146
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2148
    .local v9, res:Landroid/content/res/Resources;
    #getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v10

    #getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3200(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v10

    iget-wide v10, v10, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v10, v10

    const v11, 0x3f99999a

    mul-float/2addr v10, v11

    float-to-long v7, v10

    .line 2153
    .local v7, minLimitBytes:J
    const/4 v2, 0x5

    .line 2154
    .local v2, defaultLimitGB:I
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3400()Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v2, 0x50

    .line 2158
    :cond_1
    #getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 2159
    .local v1, currentTab:Ljava/lang/String;
    const-string v10, "3g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2160
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3500()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3400()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2161
    :cond_2
    const v10, 0x7f091235

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2165
    .local v6, message:Ljava/lang/CharSequence;
    :goto_1
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2184
    .local v4, limitBytes:J
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2185
    .local v0, args:Landroid/os/Bundle;
    const-string v10, "message"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2186
    const-string v10, "limitBytes"

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2188
    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 2189
    .local v3, dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v3, v0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2190
    const/4 v10, 0x0

    invoke-virtual {v3, p0, v10}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2191
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "confirmLimit"

    invoke-virtual {v3, v10, v11}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2163
    .end local v0           #args:Landroid/os/Bundle;
    .end local v3           #dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    .end local v4           #limitBytes:J
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_3
    const v10, 0x7f090a10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #message:Ljava/lang/CharSequence;
    goto :goto_1

    .line 2166
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_4
    const-string v10, "4g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2167
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3500()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3400()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2168
    :cond_5
    const v10, 0x7f091235

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2172
    .restart local v6       #message:Ljava/lang/CharSequence;
    :goto_3
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4       #limitBytes:J
    goto :goto_2

    .line 2170
    .end local v4           #limitBytes:J
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_6
    const v10, 0x7f090a10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #message:Ljava/lang/CharSequence;
    goto :goto_3

    .line 2173
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_7
    const-string v10, "mobile"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2174
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3500()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3400()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2175
    :cond_8
    const v10, 0x7f091235

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2179
    .restart local v6       #message:Ljava/lang/CharSequence;
    :goto_4
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4       #limitBytes:J
    goto :goto_2

    .line 2177
    .end local v4           #limitBytes:J
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_9
    const v10, 0x7f090a10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #message:Ljava/lang/CharSequence;
    goto :goto_4

    .line 2181
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown current tab: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2207
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2208
    .local v4, message:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2210
    .local v2, limitBytes:J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2212
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3500()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3400()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2213
    :cond_0
    const v5, 0x7f091234

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2218
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2220
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 2215
    :cond_1
    const v5, 0x7f090a0e

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
