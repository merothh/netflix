.class Lo/ClipData$Application;
.super Lo/AssetManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic b:Lo/ClipData;


# direct methods
.method public constructor <init>(Lo/ClipData;Landroid/view/Window$Callback;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lo/ClipData$Application;->b:Lo/ClipData;

    .line 517
    invoke-direct {p0, p2}, Lo/AssetManager;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 536
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lo/ClipData$Application;->b:Lo/ClipData;

    iget-object v0, v0, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 538
    :cond_0
    invoke-super {p0, p1}, Lo/AssetManager;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 522
    invoke-super {p0, p1, p2, p3}, Lo/AssetManager;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 523
    iget-object p2, p0, Lo/ClipData$Application;->b:Lo/ClipData;

    iget-boolean p2, p2, Lo/ClipData;->a:Z

    if-nez p2, :cond_0

    .line 524
    iget-object p2, p0, Lo/ClipData$Application;->b:Lo/ClipData;

    iget-object p2, p2, Lo/ClipData;->d:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p2}, Landroidx/appcompat/widget/DecorToolbar;->setMenuPrepared()V

    .line 525
    iget-object p2, p0, Lo/ClipData$Application;->b:Lo/ClipData;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lo/ClipData;->a:Z

    :cond_0
    return p1
.end method
