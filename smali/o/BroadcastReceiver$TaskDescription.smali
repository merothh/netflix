.class public Lo/BroadcastReceiver$TaskDescription;
.super Lo/ServiceConnection;
.source ""

# interfaces
.implements Lo/Mode$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/ServiceConnection$Activity;

.field final synthetic c:Lo/BroadcastReceiver;

.field private final d:Landroid/content/Context;

.field private final e:Lo/Mode;


# direct methods
.method public constructor <init>(Lo/BroadcastReceiver;Landroid/content/Context;Lo/ServiceConnection$Activity;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    invoke-direct {p0}, Lo/ServiceConnection;-><init>()V

    .line 994
    iput-object p2, p0, Lo/BroadcastReceiver$TaskDescription;->d:Landroid/content/Context;

    .line 995
    iput-object p3, p0, Lo/BroadcastReceiver$TaskDescription;->b:Lo/ServiceConnection$Activity;

    .line 996
    new-instance p1, Lo/Mode;

    invoke-direct {p1, p2}, Lo/Mode;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 997
    invoke-virtual {p1, p2}, Lo/Mode;->setDefaultShowAsAction(I)Lo/Mode;

    move-result-object p1

    iput-object p1, p0, Lo/BroadcastReceiver$TaskDescription;->e:Lo/Mode;

    .line 998
    iget-object p1, p0, Lo/BroadcastReceiver$TaskDescription;->e:Lo/Mode;

    invoke-virtual {p1, p0}, Lo/Mode;->setCallback(Lo/Mode$StateListAnimator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1013
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v0, v0, Lo/BroadcastReceiver;->i:Lo/BroadcastReceiver$TaskDescription;

    if-eq v0, p0, :cond_0

    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-boolean v0, v0, Lo/BroadcastReceiver;->k:Z

    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-boolean v1, v1, Lo/BroadcastReceiver;->m:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/BroadcastReceiver;->e(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1025
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iput-object p0, v0, Lo/BroadcastReceiver;->g:Lo/ServiceConnection;

    .line 1026
    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->b:Lo/ServiceConnection$Activity;

    iput-object v1, v0, Lo/BroadcastReceiver;->f:Lo/ServiceConnection$Activity;

    goto :goto_0

    .line 1028
    :cond_1
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->b:Lo/ServiceConnection$Activity;

    invoke-interface {v0, p0}, Lo/ServiceConnection$Activity;->d(Lo/ServiceConnection;)V

    :goto_0
    const/4 v0, 0x0

    .line 1030
    iput-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->b:Lo/ServiceConnection$Activity;

    .line 1031
    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lo/BroadcastReceiver;->o(Z)V

    .line 1034
    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v1, v1, Lo/BroadcastReceiver;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->closeMode()V

    .line 1035
    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v1, v1, Lo/BroadcastReceiver;->a:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1037
    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v1, v1, Lo/BroadcastReceiver;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-boolean v2, v2, Lo/BroadcastReceiver;->n:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1039
    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iput-object v0, v1, Lo/BroadcastReceiver;->i:Lo/BroadcastReceiver$TaskDescription;

    return-void
.end method

.method public b()Landroid/view/MenuInflater;
    .locals 2

    .line 1003
    new-instance v0, Lo/Configuration;

    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/Configuration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public c()Landroid/view/Menu;
    .locals 1

    .line 1008
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->e:Lo/Mode;

    return-object v0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1076
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v0, v0, Lo/BroadcastReceiver;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1091
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v0, v0, Lo/BroadcastReceiver;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/BroadcastReceiver$TaskDescription;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1081
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v0, v0, Lo/BroadcastReceiver;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1106
    invoke-super {p0, p1}, Lo/ServiceConnection;->d(Z)V

    .line 1107
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v0, v0, Lo/BroadcastReceiver;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1060
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->e:Lo/Mode;

    invoke-virtual {v0}, Lo/Mode;->stopDispatchingItemsChanged()V

    .line 1062
    :try_start_0
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->b:Lo/ServiceConnection$Activity;

    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->e:Lo/Mode;

    invoke-interface {v0, p0, v1}, Lo/ServiceConnection$Activity;->d(Lo/ServiceConnection;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->e:Lo/Mode;

    invoke-virtual {v1}, Lo/Mode;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->e:Lo/Mode;

    invoke-virtual {v1}, Lo/Mode;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public e()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v0, v0, Lo/BroadcastReceiver;->i:Lo/BroadcastReceiver$TaskDescription;

    if-eq v0, p0, :cond_0

    return-void

    .line 1051
    :cond_0
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->e:Lo/Mode;

    invoke-virtual {v0}, Lo/Mode;->stopDispatchingItemsChanged()V

    .line 1053
    :try_start_0
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->b:Lo/ServiceConnection$Activity;

    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->e:Lo/Mode;

    invoke-interface {v0, p0, v1}, Lo/ServiceConnection$Activity;->e(Lo/ServiceConnection;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->e:Lo/Mode;

    invoke-virtual {v0}, Lo/Mode;->startDispatchingItemsChanged()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/BroadcastReceiver$TaskDescription;->e:Lo/Mode;

    invoke-virtual {v1}, Lo/Mode;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public e(I)V
    .locals 1

    .line 1086
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v0, v0, Lo/BroadcastReceiver;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/BroadcastReceiver$TaskDescription;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 1

    .line 1070
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v0, v0, Lo/BroadcastReceiver;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1071
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1112
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v0, v0, Lo/BroadcastReceiver;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .line 1101
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v0, v0, Lo/BroadcastReceiver;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 1

    .line 1096
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object v0, v0, Lo/BroadcastReceiver;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/view/View;
    .locals 1

    .line 1117
    iget-object v0, p0, Lo/BroadcastReceiver$TaskDescription;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onMenuItemSelected(Lo/Mode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1122
    iget-object p1, p0, Lo/BroadcastReceiver$TaskDescription;->b:Lo/ServiceConnection$Activity;

    if-eqz p1, :cond_0

    .line 1123
    invoke-interface {p1, p0, p2}, Lo/ServiceConnection$Activity;->e(Lo/ServiceConnection;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Lo/Mode;)V
    .locals 0

    .line 1150
    iget-object p1, p0, Lo/BroadcastReceiver$TaskDescription;->b:Lo/ServiceConnection$Activity;

    if-nez p1, :cond_0

    return-void

    .line 1153
    :cond_0
    invoke-virtual {p0}, Lo/BroadcastReceiver$TaskDescription;->e()V

    .line 1154
    iget-object p1, p0, Lo/BroadcastReceiver$TaskDescription;->c:Lo/BroadcastReceiver;

    iget-object p1, p1, Lo/BroadcastReceiver;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->showOverflowMenu()Z

    return-void
.end method
