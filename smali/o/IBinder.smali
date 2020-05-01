.class public Lo/IBinder;
.super Lo/Mode;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lo/Rect;

.field private mParentMenu:Lo/Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/Mode;Lo/Rect;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/Mode;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    .line 45
    iput-object p3, p0, Lo/IBinder;->mItem:Lo/Rect;

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lo/Rect;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    invoke-virtual {v0, p1}, Lo/Mode;->collapseItemActionView(Lo/Rect;)Z

    move-result p1

    return p1
.end method

.method dispatchMenuItemSelected(Lo/Mode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 89
    invoke-super {p0, p1, p2}, Lo/Mode;->dispatchMenuItemSelected(Lo/Mode;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    .line 90
    invoke-virtual {v0, p1, p2}, Lo/Mode;->dispatchMenuItemSelected(Lo/Mode;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public expandItemActionView(Lo/Rect;)Z
    .locals 1

    .line 132
    iget-object v0, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    invoke-virtual {v0, p1}, Lo/Mode;->expandItemActionView(Lo/Rect;)Z

    move-result p1

    return p1
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .line 142
    iget-object v0, p0, Lo/IBinder;->mItem:Lo/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Rect;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lo/Mode;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 74
    iget-object v0, p0, Lo/IBinder;->mItem:Lo/Rect;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    return-object v0
.end method

.method public getRootMenu()Lo/Mode;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    invoke-virtual {v0}, Lo/Mode;->getRootMenu()Lo/Mode;

    move-result-object v0

    return-object v0
.end method

.method public isGroupDividerEnabled()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    invoke-virtual {v0}, Lo/Mode;->isGroupDividerEnabled()Z

    move-result v0

    return v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    invoke-virtual {v0}, Lo/Mode;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    invoke-virtual {v0}, Lo/Mode;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lo/Mode$StateListAnimator;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    invoke-virtual {v0, p1}, Lo/Mode;->setCallback(Lo/Mode$StateListAnimator;)V

    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    invoke-virtual {v0, p1}, Lo/Mode;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lo/Mode;->setHeaderIconInt(I)Lo/Mode;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lo/Mode;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lo/Mode;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lo/Mode;->setHeaderTitleInt(I)Lo/Mode;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lo/Mode;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lo/Mode;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 127
    invoke-super {p0, p1}, Lo/Mode;->setHeaderViewInt(Landroid/view/View;)Lo/Mode;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/IBinder;->mItem:Lo/Rect;

    invoke-virtual {v0, p1}, Lo/Rect;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/IBinder;->mItem:Lo/Rect;

    invoke-virtual {v0, p1}, Lo/Rect;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/IBinder;->mParentMenu:Lo/Mode;

    invoke-virtual {v0, p1}, Lo/Mode;->setQwertyMode(Z)V

    return-void
.end method
