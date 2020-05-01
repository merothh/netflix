.class Lo/ClipData;
.super Lo/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ClipData$ActionBar;,
        Lo/ClipData$Activity;,
        Lo/ClipData$Application;
    }
.end annotation


# instance fields
.field a:Z

.field b:Landroid/view/Window$Callback;

.field private c:Z

.field d:Landroidx/appcompat/widget/DecorToolbar;

.field private e:Z

.field private final f:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/Fragment$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Lo/Fragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ClipData;->g:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lo/ClipData$4;

    invoke-direct {v0, p0}, Lo/ClipData$4;-><init>(Lo/ClipData;)V

    iput-object v0, p0, Lo/ClipData;->i:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lo/ClipData$5;

    invoke-direct {v0, p0}, Lo/ClipData$5;-><init>(Lo/ClipData;)V

    iput-object v0, p0, Lo/ClipData;->f:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 69
    new-instance v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    .line 70
    new-instance v0, Lo/ClipData$Application;

    invoke-direct {v0, p0, p3}, Lo/ClipData$Application;-><init>(Lo/ClipData;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lo/ClipData;->b:Landroid/view/Window$Callback;

    .line 71
    iget-object p3, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    iget-object v0, p0, Lo/ClipData;->b:Landroid/view/Window$Callback;

    invoke-interface {p3, v0}, Landroidx/appcompat/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 72
    iget-object p3, p0, Lo/ClipData;->f:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 73
    iget-object p1, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, p2}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private k()Landroid/view/Menu;
    .locals 3

    .line 543
    iget-boolean v0, p0, Lo/ClipData;->c:Z

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    new-instance v1, Lo/ClipData$Activity;

    invoke-direct {v1, p0}, Lo/ClipData$Activity;-><init>(Lo/ClipData;)V

    new-instance v2, Lo/ClipData$ActionBar;

    invoke-direct {v2, p0}, Lo/ClipData$ActionBar;-><init>(Lo/ClipData;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/DecorToolbar;->setMenuCallbacks(Lo/MediaController$StateListAnimator;Lo/Mode$StateListAnimator;)V

    const/4 v0, 0x1

    .line 546
    iput-boolean v0, p0, Lo/ClipData;->c:Z

    .line 548
    :cond_0
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 323
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public a(II)V
    .locals 2

    .line 259
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 260
    iget-object v1, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 186
    invoke-super {p0, p1}, Lo/Fragment;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 275
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo/ClipData;->a(II)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 413
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 270
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo/ClipData;->a(II)V

    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 476
    invoke-direct {p0}, Lo/ClipData;->k()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 479
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 478
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 481
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 468
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lo/ClipData;->c()Z

    :cond_0
    return v0
.end method

.method public c(F)V
    .locals 1

    .line 136
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Lo/FilterWriter;->a(Landroid/view/View;F)V

    return-void
.end method

.method public c(Landroid/view/View;Lo/Fragment$StateListAnimator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    :cond_0
    iget-object p2, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p2, p1}, Landroidx/appcompat/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 280
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo/ClipData;->a(II)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .line 146
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 285
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo/ClipData;->a(II)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 406
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 265
    invoke-virtual {p0, p1, v0}, Lo/ClipData;->a(II)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    return-void
.end method

.method public f()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .line 433
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lo/ClipData;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 434
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lo/ClipData;->i:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo/FilterWriter;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public h()Landroid/view/Window$Callback;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/ClipData;->b:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    return-void
.end method

.method public i(Z)V
    .locals 3

    .line 504
    iget-boolean v0, p0, Lo/ClipData;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 507
    :cond_0
    iput-boolean p1, p0, Lo/ClipData;->e:Z

    .line 509
    iget-object v0, p0, Lo/ClipData;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 511
    iget-object v2, p0, Lo/ClipData;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Fragment$TaskDescription;

    invoke-interface {v2, p1}, Lo/Fragment$TaskDescription;->c(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i()Z
    .locals 1

    .line 440
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method j()V
    .locals 2

    .line 489
    iget-object v0, p0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lo/ClipData;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j(Z)V
    .locals 0

    return-void
.end method

.method o()V
    .locals 5

    .line 448
    invoke-direct {p0}, Lo/ClipData;->k()Landroid/view/Menu;

    move-result-object v0

    .line 449
    instance-of v1, v0, Lo/Mode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lo/Mode;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 451
    invoke-virtual {v1}, Lo/Mode;->stopDispatchingItemsChanged()V

    .line 454
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 455
    iget-object v3, p0, Lo/ClipData;->b:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lo/ClipData;->b:Landroid/view/Window$Callback;

    .line 456
    invoke-interface {v3, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 457
    :cond_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    .line 461
    invoke-virtual {v1}, Lo/Mode;->startDispatchingItemsChanged()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lo/Mode;->startDispatchingItemsChanged()V

    :cond_5
    throw v0
.end method
