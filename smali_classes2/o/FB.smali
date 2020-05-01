.class public final Lo/FB;
.super Lo/FD;
.source ""


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayMode"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0, p2}, Lo/FD;-><init>(Landroid/view/ViewGroup;Lo/UpdateEngine;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;)V

    .line 13
    invoke-virtual {p0}, Lo/FB;->j()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lo/FB;->a:I

    .line 17
    invoke-virtual {p0}, Lo/FB;->j()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lo/FB;->j()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "rootView.context"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 45
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    invoke-virtual {p0}, Lo/FB;->b()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 10
    sget-object p2, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/FB;-><init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 13
    iget v0, p0, Lo/FB;->a:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 29
    invoke-super {p0}, Lo/FD;->b()V

    .line 30
    invoke-virtual {p0}, Lo/FB;->l()Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lo/FB;->j()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 22
    invoke-super {p0}, Lo/FD;->e()V

    .line 23
    invoke-virtual {p0}, Lo/FB;->l()Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lo/FB;->j()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lo/FB;->j()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
