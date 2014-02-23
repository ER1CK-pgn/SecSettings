.class Lcom/android/settings/motion2013/ArcMotionEnabler$1;
.super Ljava/lang/Object;
.source "ArcMotionEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/ArcMotionEnabler;->showAllOptionDisabledDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/ArcMotionEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/ArcMotionEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/ArcMotionEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/ArcMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/ArcMotionEnabler;->access$000(Lcom/android/settings/motion2013/ArcMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_arc_motion"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/ArcMotionEnabler;

    #calls: Lcom/android/settings/motion2013/ArcMotionEnabler;->broadcastArcMotionChanged(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/motion2013/ArcMotionEnabler;->access$100(Lcom/android/settings/motion2013/ArcMotionEnabler;Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/ArcMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/ArcMotionEnabler;->access$000(Lcom/android/settings/motion2013/ArcMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 149
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    :cond_0
    const-class v1, Lcom/android/settings/motion2013/ArcMotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090d87

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/ArcMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/ArcMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/motion2013/ArcMotionEnabler;->access$200(Lcom/android/settings/motion2013/ArcMotionEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/ArcMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/ArcMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/motion2013/ArcMotionEnabler;->access$200(Lcom/android/settings/motion2013/ArcMotionEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/ArcMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/ArcMotionEnabler;->mPosition:I
    invoke-static {v2}, Lcom/android/settings/motion2013/ArcMotionEnabler;->access$300(Lcom/android/settings/motion2013/ArcMotionEnabler;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method
