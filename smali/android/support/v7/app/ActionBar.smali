.class public abstract Landroid/support/v7/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 0

    .prologue
    .line 1046
    return-void
.end method

.method public abstract getDisplayOptions()I
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract hide()V
.end method

.method public invalidateOptionsMenu()Z
    .locals 1

    .prologue
    .line 1060
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isShowing()Z
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1042
    return-void
.end method

.method onDestroy()V
    .locals 0

    .prologue
    .line 1095
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x0

    return v0
.end method

.method requestFocus()Z
    .locals 1

    .prologue
    .line 1088
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0

    .prologue
    .line 1034
    return-void
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract setDisplayUseLogoEnabled(Z)V
.end method

.method public setElevation(F)V
    .locals 2

    .prologue
    .line 1014
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1015
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :cond_0
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2

    .prologue
    .line 959
    if-eqz p1, :cond_0

    .line 960
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_0
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 0

    .prologue
    .line 943
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    .prologue
    .line 841
    return-void
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0

    .prologue
    .line 1038
    return-void
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method public abstract show()V
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 1

    .prologue
    .line 1050
    const/4 v0, 0x0

    return-object v0
.end method
