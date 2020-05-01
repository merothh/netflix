.class Lo/VoiceInteractor$ActionBar;
.super Lo/AssetManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic c:Lo/VoiceInteractor;


# direct methods
.method constructor <init>(Lo/VoiceInteractor;Landroid/view/Window$Callback;)V
    .locals 0

    .line 2526
    iput-object p1, p0, Lo/VoiceInteractor$ActionBar;->c:Lo/VoiceInteractor;

    .line 2527
    invoke-direct {p0, p2}, Lo/AssetManager;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method final c(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 2620
    new-instance v0, Lo/PackageItemInfo$TaskDescription;

    iget-object v1, p0, Lo/VoiceInteractor$ActionBar;->c:Lo/VoiceInteractor;

    iget-object v1, v1, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lo/PackageItemInfo$TaskDescription;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 2624
    iget-object p1, p0, Lo/VoiceInteractor$ActionBar;->c:Lo/VoiceInteractor;

    .line 2625
    invoke-virtual {p1, v0}, Lo/VoiceInteractor;->e(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2629
    invoke-virtual {v0, p1}, Lo/PackageItemInfo$TaskDescription;->b(Lo/ServiceConnection;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2532
    iget-object v0, p0, Lo/VoiceInteractor$ActionBar;->c:Lo/VoiceInteractor;

    invoke-virtual {v0, p1}, Lo/VoiceInteractor;->c(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2533
    invoke-super {p0, p1}, Lo/AssetManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 2538
    invoke-super {p0, p1}, Lo/AssetManager;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/VoiceInteractor$ActionBar;->c:Lo/VoiceInteractor;

    .line 2539
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lo/VoiceInteractor;->b(ILandroid/view/KeyEvent;)Z

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

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 2544
    instance-of v0, p2, Lo/Mode;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2549
    :cond_0
    invoke-super {p0, p1, p2}, Lo/AssetManager;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 2587
    invoke-super {p0, p1, p2}, Lo/AssetManager;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2588
    iget-object p2, p0, Lo/VoiceInteractor$ActionBar;->c:Lo/VoiceInteractor;

    invoke-virtual {p2, p1}, Lo/VoiceInteractor;->e(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 2594
    invoke-super {p0, p1, p2}, Lo/AssetManager;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2595
    iget-object p2, p0, Lo/VoiceInteractor$ActionBar;->c:Lo/VoiceInteractor;

    invoke-virtual {p2, p1}, Lo/VoiceInteractor;->a(I)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 2560
    instance-of v0, p3, Lo/Mode;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lo/Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 2573
    invoke-virtual {v0, v2}, Lo/Mode;->setOverrideVisibleItems(Z)V

    .line 2576
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lo/AssetManager;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    .line 2579
    invoke-virtual {v0, v1}, Lo/Mode;->setOverrideVisibleItems(Z)V

    :cond_3
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 2653
    iget-object v0, p0, Lo/VoiceInteractor$ActionBar;->c:Lo/VoiceInteractor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2654
    iget-object v1, v0, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-eqz v1, :cond_0

    .line 2657
    iget-object p2, v0, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-super {p0, p1, p2, p3}, Lo/AssetManager;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    .line 2660
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/AssetManager;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 2601
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2606
    :cond_0
    iget-object v0, p0, Lo/VoiceInteractor$ActionBar;->c:Lo/VoiceInteractor;

    invoke-virtual {v0}, Lo/VoiceInteractor;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2607
    invoke-virtual {p0, p1}, Lo/VoiceInteractor$ActionBar;->c(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 2610
    :cond_1
    invoke-super {p0, p1}, Lo/AssetManager;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 2638
    iget-object v0, p0, Lo/VoiceInteractor$ActionBar;->c:Lo/VoiceInteractor;

    invoke-virtual {v0}, Lo/VoiceInteractor;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2642
    :cond_0
    invoke-virtual {p0, p1}, Lo/VoiceInteractor$ActionBar;->c(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 2646
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lo/AssetManager;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
