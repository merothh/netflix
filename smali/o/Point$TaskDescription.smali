.class Lo/Point$TaskDescription;
.super Lo/DataInput;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic c:Lo/Point;

.field final d:Landroid/view/ActionProvider;


# direct methods
.method public constructor <init>(Lo/Point;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lo/Point$TaskDescription;->c:Lo/Point;

    .line 423
    invoke-direct {p0, p2}, Lo/DataInput;-><init>(Landroid/content/Context;)V

    .line 424
    iput-object p3, p0, Lo/Point$TaskDescription;->d:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lo/Point$TaskDescription;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 1

    .line 429
    iget-object v0, p0, Lo/Point$TaskDescription;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .line 434
    iget-object v0, p0, Lo/Point$TaskDescription;->d:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 2

    .line 444
    iget-object v0, p0, Lo/Point$TaskDescription;->d:Landroid/view/ActionProvider;

    iget-object v1, p0, Lo/Point$TaskDescription;->c:Lo/Point;

    invoke-virtual {v1, p1}, Lo/Point;->b(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    return-void
.end method
