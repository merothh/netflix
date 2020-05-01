.class Lo/Matrix$ActionBar;
.super Lo/Point$TaskDescription;
.source ""

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic a:Lo/Matrix;

.field e:Lo/DataInput$TaskDescription;


# direct methods
.method public constructor <init>(Lo/Matrix;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lo/Matrix$ActionBar;->a:Lo/Matrix;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lo/Point$TaskDescription;-><init>(Lo/Point;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lo/Matrix$ActionBar;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Lo/Matrix$ActionBar;->e:Lo/DataInput$TaskDescription;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1}, Lo/DataInput$TaskDescription;->d(Z)V

    :cond_0
    return-void
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/Matrix$ActionBar;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lo/Matrix$ActionBar;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public refreshVisibility()V
    .locals 1

    .line 72
    iget-object v0, p0, Lo/Matrix$ActionBar;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->refreshVisibility()V

    return-void
.end method

.method public setVisibilityListener(Lo/DataInput$TaskDescription;)V
    .locals 1

    .line 77
    iput-object p1, p0, Lo/Matrix$ActionBar;->e:Lo/DataInput$TaskDescription;

    .line 78
    iget-object v0, p0, Lo/Matrix$ActionBar;->d:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method
