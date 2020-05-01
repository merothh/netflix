.class Lo/BroadcastReceiver$1;
.super Lo/InvalidClassException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/BroadcastReceiver;


# direct methods
.method constructor <init>(Lo/BroadcastReceiver;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lo/BroadcastReceiver$1;->a:Lo/BroadcastReceiver;

    invoke-direct {p0}, Lo/InvalidClassException;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lo/BroadcastReceiver$1;->a:Lo/BroadcastReceiver;

    iget-boolean p1, p1, Lo/BroadcastReceiver;->l:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/BroadcastReceiver$1;->a:Lo/BroadcastReceiver;

    iget-object p1, p1, Lo/BroadcastReceiver;->j:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lo/BroadcastReceiver$1;->a:Lo/BroadcastReceiver;

    iget-object p1, p1, Lo/BroadcastReceiver;->j:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 140
    iget-object p1, p0, Lo/BroadcastReceiver$1;->a:Lo/BroadcastReceiver;

    iget-object p1, p1, Lo/BroadcastReceiver;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 142
    :cond_0
    iget-object p1, p0, Lo/BroadcastReceiver$1;->a:Lo/BroadcastReceiver;

    iget-object p1, p1, Lo/BroadcastReceiver;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lo/BroadcastReceiver$1;->a:Lo/BroadcastReceiver;

    iget-object p1, p1, Lo/BroadcastReceiver;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 144
    iget-object p1, p0, Lo/BroadcastReceiver$1;->a:Lo/BroadcastReceiver;

    const/4 v0, 0x0

    iput-object v0, p1, Lo/BroadcastReceiver;->o:Lo/ColorStateList;

    .line 145
    invoke-virtual {p1}, Lo/BroadcastReceiver;->h()V

    .line 146
    iget-object p1, p0, Lo/BroadcastReceiver$1;->a:Lo/BroadcastReceiver;

    iget-object p1, p1, Lo/BroadcastReceiver;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lo/BroadcastReceiver$1;->a:Lo/BroadcastReceiver;

    iget-object p1, p1, Lo/BroadcastReceiver;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lo/FilterWriter;->p(Landroid/view/View;)V

    :cond_1
    return-void
.end method
