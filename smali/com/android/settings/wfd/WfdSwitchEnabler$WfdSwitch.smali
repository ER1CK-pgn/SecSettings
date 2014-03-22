.class Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitch;
.super Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;
.source "WfdSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WfdSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdSwitch"
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/wfd/WfdChangedListener;

.field mSwitch:Landroid/widget/Switch;


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitch;->mListener:Lcom/android/settings/wfd/WfdChangedListener;

    invoke-interface {v0, p2}, Lcom/android/settings/wfd/WfdChangedListener;->onSwitchChanged(Z)Z

    .line 320
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 294
    return-void
.end method

.method public setEnabled(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;->setEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 300
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
