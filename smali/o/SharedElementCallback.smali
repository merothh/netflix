.class public Lo/SharedElementCallback;
.super Lo/Serializable;
.source ""

# interfaces
.implements Lo/TaskStackBuilder;
.implements Lo/OnUnhandledKeyEventListener$Activity;


# instance fields
.field private mDelegate:Lo/PictureInPictureParams;

.field private mResources:Landroid/content/res/Resources;

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lo/Serializable;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lo/SharedElementCallback;->mThemeId:I

    return-void
.end method

.method private performMenuItemShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 552
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 553
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 554
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 555
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 556
    invoke-virtual {p0}, Lo/SharedElementCallback;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 557
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 559
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/PictureInPictureParams;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    .line 586
    invoke-virtual {p0}, Lo/SharedElementCallback;->getSupportActionBar()Lo/Fragment;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Lo/SharedElementCallback;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0}, Lo/Fragment;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 589
    :cond_0
    invoke-super {p0}, Lo/Serializable;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 529
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 530
    invoke-virtual {p0}, Lo/SharedElementCallback;->getSupportActionBar()Lo/Fragment;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {v1, p1}, Lo/Fragment;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 535
    :cond_0
    invoke-super {p0, p1}, Lo/Serializable;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PictureInPictureParams;->d(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getDelegate()Lo/PictureInPictureParams;
    .locals 1

    .line 519
    iget-object v0, p0, Lo/SharedElementCallback;->mDelegate:Lo/PictureInPictureParams;

    if-nez v0, :cond_0

    .line 520
    invoke-static {p0, p0}, Lo/PictureInPictureParams;->a(Landroid/app/Activity;Lo/TaskStackBuilder;)Lo/PictureInPictureParams;

    move-result-object v0

    iput-object v0, p0, Lo/SharedElementCallback;->mDelegate:Lo/PictureInPictureParams;

    .line 522
    :cond_0
    iget-object v0, p0, Lo/SharedElementCallback;->mDelegate:Lo/PictureInPictureParams;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Lo/FragmentManager$Application;
    .locals 1

    .line 483
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0}, Lo/PictureInPictureParams;->h()Lo/FragmentManager$Application;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0}, Lo/PictureInPictureParams;->e()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 540
    iget-object v0, p0, Lo/SharedElementCallback;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Landroidx/appcompat/widget/VectorEnabledTintResources;

    invoke-super {p0}, Lo/Serializable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lo/SharedElementCallback;->mResources:Landroid/content/res/Resources;

    .line 543
    :cond_0
    iget-object v0, p0, Lo/SharedElementCallback;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Lo/Serializable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSupportActionBar()Lo/Fragment;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0}, Lo/PictureInPictureParams;->a()Lo/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 431
    invoke-static {p0}, Lo/OnCapturedPointerListener;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0}, Lo/PictureInPictureParams;->j()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Lo/Serializable;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PictureInPictureParams;->c(Landroid/content/res/Configuration;)V

    .line 162
    iget-object v0, p0, Lo/SharedElementCallback;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 165
    invoke-super {p0}, Lo/Serializable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lo/SharedElementCallback;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 470
    invoke-virtual {p0}, Lo/SharedElementCallback;->onSupportContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lo/PictureInPictureParams;->f()V

    .line 73
    invoke-virtual {v0, p1}, Lo/PictureInPictureParams;->c(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {v0}, Lo/PictureInPictureParams;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lo/SharedElementCallback;->mThemeId:I

    if-eqz v0, :cond_1

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lo/SharedElementCallback;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Lo/SharedElementCallback;->mThemeId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lo/SharedElementCallback;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_0

    .line 82
    :cond_0
    iget v0, p0, Lo/SharedElementCallback;->mThemeId:I

    invoke-virtual {p0, v0}, Lo/SharedElementCallback;->setTheme(I)V

    .line 85
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lo/Serializable;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Lo/OnUnhandledKeyEventListener;)V
    .locals 0

    .line 348
    invoke-virtual {p1, p0}, Lo/OnUnhandledKeyEventListener;->e(Landroid/app/Activity;)Lo/OnUnhandledKeyEventListener;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 210
    invoke-super {p0}, Lo/Serializable;->onDestroy()V

    .line 211
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0}, Lo/PictureInPictureParams;->g()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 569
    invoke-direct {p0, p1, p2}, Lo/SharedElementCallback;->performMenuItemShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 572
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Serializable;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 196
    invoke-super {p0, p1, p2}, Lo/Serializable;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 200
    :cond_0
    invoke-virtual {p0}, Lo/SharedElementCallback;->getSupportActionBar()Lo/Fragment;

    move-result-object p1

    .line 201
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1}, Lo/Fragment;->a()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p0}, Lo/SharedElementCallback;->onSupportNavigateUp()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 494
    invoke-super {p0, p1, p2}, Lo/Serializable;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 505
    invoke-super {p0, p1, p2}, Lo/Serializable;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lo/Serializable;->onPostCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PictureInPictureParams;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 172
    invoke-super {p0}, Lo/Serializable;->onPostResume()V

    .line 173
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0}, Lo/PictureInPictureParams;->d()V

    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Lo/OnUnhandledKeyEventListener;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 510
    invoke-super {p0, p1}, Lo/Serializable;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 511
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PictureInPictureParams;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 178
    invoke-super {p0}, Lo/Serializable;->onStart()V

    .line 179
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0}, Lo/PictureInPictureParams;->b()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 184
    invoke-super {p0}, Lo/Serializable;->onStop()V

    .line 185
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0}, Lo/PictureInPictureParams;->c()V

    return-void
.end method

.method public onSupportActionModeFinished(Lo/ServiceConnection;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Lo/ServiceConnection;)V
    .locals 0

    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 2

    .line 393
    invoke-virtual {p0}, Lo/SharedElementCallback;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {p0, v0}, Lo/SharedElementCallback;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-static {p0}, Lo/OnUnhandledKeyEventListener;->a(Landroid/content/Context;)Lo/OnUnhandledKeyEventListener;

    move-result-object v0

    .line 398
    invoke-virtual {p0, v0}, Lo/SharedElementCallback;->onCreateSupportNavigateUpTaskStack(Lo/OnUnhandledKeyEventListener;)V

    .line 399
    invoke-virtual {p0, v0}, Lo/SharedElementCallback;->onPrepareSupportNavigateUpTaskStack(Lo/OnUnhandledKeyEventListener;)V

    .line 400
    invoke-virtual {v0}, Lo/OnUnhandledKeyEventListener;->a()V

    .line 403
    :try_start_0
    invoke-static {p0}, Lo/OnAttachStateChangeListener;->e(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    invoke-virtual {p0}, Lo/SharedElementCallback;->finish()V

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p0, v0}, Lo/SharedElementCallback;->supportNavigateUpTo(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 216
    invoke-super {p0, p1, p2}, Lo/Serializable;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 217
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/PictureInPictureParams;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public openOptionsMenu()V
    .locals 3

    .line 577
    invoke-virtual {p0}, Lo/SharedElementCallback;->getSupportActionBar()Lo/Fragment;

    move-result-object v0

    .line 578
    invoke-virtual {p0}, Lo/SharedElementCallback;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Lo/Fragment;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    :cond_0
    invoke-super {p0}, Lo/Serializable;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PictureInPictureParams;->c(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PictureInPictureParams;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/PictureInPictureParams;->d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PictureInPictureParams;->e(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lo/Serializable;->setTheme(I)V

    .line 92
    iput p1, p0, Lo/SharedElementCallback;->mThemeId:I

    return-void
.end method

.method public startSupportActionMode(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PictureInPictureParams;->e(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;

    move-result-object p1

    return-object p1
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0}, Lo/PictureInPictureParams;->j()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    .line 464
    invoke-static {p0, p1}, Lo/OnCapturedPointerListener;->c(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    .line 235
    invoke-virtual {p0}, Lo/SharedElementCallback;->getDelegate()Lo/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PictureInPictureParams;->b(I)Z

    move-result p1

    return p1
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 0

    .line 448
    invoke-static {p0, p1}, Lo/OnCapturedPointerListener;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
