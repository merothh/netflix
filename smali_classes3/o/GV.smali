.class public abstract Lo/GV;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GV$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/GV$TaskDescription;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/GR;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lo/GV;->c(Landroid/view/ViewGroup;)Landroid/widget/Space;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public synthetic a(Lo/TimeUnit;Lo/BiConsumer;)V
    .locals 0

    .line 16
    check-cast p1, Lo/GV$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/GV;->c(Lo/GV$TaskDescription;Lo/BiConsumer;)V

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lo/GV$TaskDescription;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lo/GV$TaskDescription;->g()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)Landroid/widget/Space;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public c(Lo/GV$TaskDescription;Lo/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/GV$TaskDescription;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previouslyBoundModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lo/GV$TaskDescription;->g()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 16
    check-cast p1, Lo/GV$TaskDescription;

    invoke-virtual {p0, p1}, Lo/GV;->b(Lo/GV$TaskDescription;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lo/GV$TaskDescription;

    invoke-virtual {p0, p1}, Lo/GV;->b(Lo/GV$TaskDescription;)V

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 16
    check-cast p1, Lo/GV$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/GV;->c(Lo/GV$TaskDescription;Lo/BiConsumer;)V

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lo/GV;->r()Lo/GV$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method protected r()Lo/GV$TaskDescription;
    .locals 1

    .line 31
    new-instance v0, Lo/GV$TaskDescription;

    invoke-direct {v0}, Lo/GV$TaskDescription;-><init>()V

    return-object v0
.end method
