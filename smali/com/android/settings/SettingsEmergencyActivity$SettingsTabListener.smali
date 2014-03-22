.class Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;
.super Ljava/lang/Object;
.source "SettingsEmergencyActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsEmergencyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencyActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/SettingsEmergencyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsEmergencyActivity;Lcom/android/settings/SettingsEmergencyActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1169
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsEmergencyActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1199
    const-string v0, "SettingsEmergencyActivity"

    const-string v1, "onTabReselected ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4
    .parameter "tab"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1172
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity;->access$1200(Lcom/android/settings/SettingsEmergencyActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity;->access$1200(Lcom/android/settings/SettingsEmergencyActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #setter for: Lcom/android/settings/SettingsEmergencyActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0, v3}, Lcom/android/settings/SettingsEmergencyActivity;->access$1302(Lcom/android/settings/SettingsEmergencyActivity;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    .line 1178
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #setter for: Lcom/android/settings/SettingsEmergencyActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0, v3}, Lcom/android/settings/SettingsEmergencyActivity;->access$1402(Lcom/android/settings/SettingsEmergencyActivity;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    .line 1179
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 1181
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->mOpenSearchHierarchy:Z
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity;->access$1500(Lcom/android/settings/SettingsEmergencyActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1188
    :cond_2
    :goto_0
    const-string v0, "SettingsEmergencyActivity"

    const-string v1, "onTabSelected ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return-void

    .line 1185
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1193
    const-string v0, "SettingsEmergencyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabUnselected() mPrevSelectedActionBarIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    iget v2, v2, Lcom/android/settings/SettingsEmergencyActivity;->mPrevSelectedActionBarIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/android/settings/SettingsEmergencyActivity;->mPrevSelectedActionBarIndex:I

    .line 1195
    return-void
.end method
