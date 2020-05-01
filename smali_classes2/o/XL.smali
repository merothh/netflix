.class public abstract Lo/XL;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# instance fields
.field private final b:Landroid/view/ViewGroup;

.field private final c:Lo/Xx;

.field private d:Z

.field private final e:F


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/Xx;)V
    .locals 1

    const-string v0, "navigationPointLayout"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickHandler"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/XL;->c:Lo/Xx;

    .line 15
    iput-object p1, p0, Lo/XL;->b:Landroid/view/ViewGroup;

    .line 25
    new-instance p2, Lo/XL$1;

    invoke-direct {p2, p0}, Lo/XL$1;-><init>(Lo/XL;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    sget-object p2, Lo/XJ;->c:Lo/XJ;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "navigationPointLayout.context"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lo/XJ;->a(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lo/XL;->e:F

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public b()V
    .locals 2

    .line 45
    iget-object v0, p0, Lo/XL;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/originals/interactive/condition/State;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/PlayerControls;)V
.end method

.method public c(I)V
    .locals 3

    .line 36
    invoke-virtual {p0}, Lo/XL;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/XL;->c:Lo/Xx;

    invoke-virtual {p0}, Lo/XL;->e()I

    move-result v2

    invoke-interface {v1, v0, p1, v2}, Lo/Xx;->d(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public final c(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lo/XL;->d:Z

    return-void
.end method

.method public abstract e()I
.end method

.method public final f()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/XL;->d:Z

    return v0
.end method

.method public final h()F
    .locals 1

    .line 14
    iget v0, p0, Lo/XL;->e:F

    return v0
.end method

.method protected final j()Landroid/view/ViewGroup;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/XL;->b:Landroid/view/ViewGroup;

    return-object v0
.end method
