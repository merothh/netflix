.class public final Lo/WR;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/Wy;


# instance fields
.field private final e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 10
    iput-object p1, p0, Lo/WR;->e:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/WR;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    .line 21
    invoke-virtual {p0}, Lo/WR;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lo/adq;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 25
    invoke-virtual {p0}, Lo/WR;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lo/adq;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public j()Landroid/view/ViewGroup;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/WR;->e:Landroid/view/ViewGroup;

    return-object v0
.end method
