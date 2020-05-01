.class public Lo/Point;
.super Lo/Theme;
.source ""

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Point$Application;,
        Lo/Point$TaskDescription;,
        Lo/Point$StateListAnimator;,
        Lo/Point$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Theme<",
        "Lo/InputConnection;",
        ">;",
        "Landroid/view/MenuItem;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/InputConnection;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lo/Theme;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    .line 374
    :try_start_0
    iget-object v0, p0, Lo/Point;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setExclusiveCheckable"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 376
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lo/Point;->c:Ljava/lang/reflect/Method;

    .line 378
    :cond_0
    iget-object v0, p0, Lo/Point;->c:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lo/Point;->a:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MenuItemWrapper"

    const-string v1, "Error while calling setExclusiveCheckable"

    .line 380
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public collapseActionView()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method e(Landroid/view/ActionProvider;)Lo/Point$TaskDescription;
    .locals 2

    .line 385
    new-instance v0, Lo/Point$TaskDescription;

    iget-object v1, p0, Lo/Point;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lo/Point$TaskDescription;-><init>(Lo/Point;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method

.method public expandActionView()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .line 299
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->b()Lo/DataInput;

    move-result-object v0

    .line 300
    instance-of v1, v0, Lo/Point$TaskDescription;

    if-eqz v1, :cond_0

    .line 301
    check-cast v0, Lo/Point$TaskDescription;

    iget-object v0, v0, Lo/Point$TaskDescription;->d:Landroid/view/ActionProvider;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .line 283
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 284
    instance-of v1, v0, Lo/Point$Application;

    if-eqz v1, :cond_0

    .line 285
    check-cast v0, Lo/Point$Application;

    invoke-virtual {v0}, Lo/Point$Application;->e()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .line 180
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getAlphabeticModifiers()I

    move-result v0

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 175
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 336
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 62
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 358
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 369
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 57
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 245
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .line 158
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getNumericModifiers()I

    move-result v0

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 153
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 67
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 233
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Point;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 347
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0}, Lo/InputConnection;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    .line 292
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Lo/Point;->e(Landroid/view/ActionProvider;)Lo/Point$TaskDescription;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 292
    :goto_0
    invoke-interface {v0, p1}, Lo/InputConnection;->e(Lo/DataInput;)Lo/InputConnection;

    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 2

    .line 271
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setActionView(I)Landroid/view/MenuItem;

    .line 273
    iget-object p1, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast p1, Lo/InputConnection;

    invoke-interface {p1}, Lo/InputConnection;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 274
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    new-instance v1, Lo/Point$Application;

    invoke-direct {v1, p1}, Lo/Point$Application;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Lo/InputConnection;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .line 261
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Lo/Point$Application;

    invoke-direct {v0, p1}, Lo/Point$Application;-><init>(Landroid/view/View;)V

    move-object p1, v0

    .line 264
    :cond_0
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 163
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 169
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1, p2}, Lo/InputConnection;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .line 185
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setCheckable(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 196
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setChecked(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 330
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->d(Ljava/lang/CharSequence;)Lo/InputConnection;

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .line 217
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    .line 100
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    .line 352
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    .line 363
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    .line 117
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 141
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setNumericShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1, p2}, Lo/InputConnection;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .line 323
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    if-eqz p1, :cond_0

    new-instance v1, Lo/Point$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/Point$StateListAnimator;-><init>(Lo/Point;Landroid/view/MenuItem$OnActionExpandListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lo/InputConnection;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2

    .line 238
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    if-eqz p1, :cond_0

    new-instance v1, Lo/Point$Activity;

    invoke-direct {v1, p0, p1}, Lo/Point$Activity;-><init>(Lo/Point;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lo/InputConnection;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    .line 128
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1, p2}, Lo/InputConnection;->setShortcut(CC)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1

    .line 135
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/InputConnection;->setShortcut(CCII)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 1

    .line 250
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setShowAsAction(I)V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .line 255
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setTitle(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 341
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->a(Ljava/lang/CharSequence;)Lo/InputConnection;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .line 207
    iget-object v0, p0, Lo/Point;->a:Ljava/lang/Object;

    check-cast v0, Lo/InputConnection;

    invoke-interface {v0, p1}, Lo/InputConnection;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method
