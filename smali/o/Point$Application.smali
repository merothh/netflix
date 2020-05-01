.class Lo/Point$Application;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lo/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field final d:Landroid/view/CollapsibleActionView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 459
    move-object v0, p1

    check-cast v0, Landroid/view/CollapsibleActionView;

    iput-object v0, p0, Lo/Point$Application;->d:Landroid/view/CollapsibleActionView;

    .line 460
    invoke-virtual {p0, p1}, Lo/Point$Application;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method e()Landroid/view/View;
    .locals 1

    .line 474
    iget-object v0, p0, Lo/Point$Application;->d:Landroid/view/CollapsibleActionView;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onActionViewCollapsed()V
    .locals 1

    .line 470
    iget-object v0, p0, Lo/Point$Application;->d:Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 1

    .line 465
    iget-object v0, p0, Lo/Point$Application;->d:Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    return-void
.end method
