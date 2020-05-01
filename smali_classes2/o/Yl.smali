.class public final Lo/Yl;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Yl$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Lo/Yo;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/Yl$TaskDescription;

.field private static h:Z


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Z

.field private final d:Landroid/content/Context;

.field private e:Lo/Ab;

.field private final f:Lo/UpdateLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UpdateLock<",
            "Lo/YB;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Yl$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Yl$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Yl;->c:Lo/Yl$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/UpdateLock;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/UpdateLock<",
            "Lo/YB;",
            ">;",
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewItems"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput-object p1, p0, Lo/Yl;->d:Landroid/content/Context;

    iput-object p2, p0, Lo/Yl;->f:Lo/UpdateLock;

    iput-object p3, p0, Lo/Yl;->i:Ljava/util/List;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lo/Yl;->b:Z

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 13
    sget-boolean v0, Lo/Yl;->h:Z

    return v0
.end method

.method public static final synthetic e(Z)V
    .locals 0

    .line 13
    sput-boolean p0, Lo/Yl;->h:Z

    return-void
.end method


# virtual methods
.method public a(Lo/Yo;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 48
    iget-object v0, p0, Lo/Yl;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Lo/Yo;->d(Ljava/util/List;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lo/Yl;->b:Z

    return-void
.end method

.method public final c(Landroid/graphics/Rect;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/Yl;->a:Landroid/graphics/Rect;

    return-void
.end method

.method public c(Lo/Yo;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lo/Yo;->e()V

    .line 38
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/view/ViewGroup;I)Lo/Yo;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ci:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance p2, Lo/Yo;

    const-string v0, "viewItem"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/Yl;->e:Lo/Ab;

    iget-object v1, p0, Lo/Yl;->f:Lo/UpdateLock;

    iget-object v2, p0, Lo/Yl;->a:Landroid/graphics/Rect;

    invoke-direct {p2, p1, v0, v1, v2}, Lo/Yo;-><init>(Landroid/view/View;Lo/Ab;Lo/UpdateLock;Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public d(Lo/Yo;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 43
    invoke-virtual {p1}, Lo/Yo;->d()V

    return-void
.end method

.method public d(Lo/Yo;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lo/Yl;->d:Landroid/content/Context;

    iget-object v1, p0, Lo/Yl;->i:Ljava/util/List;

    invoke-virtual {p1, v0, p2, v1}, Lo/Yo;->a(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public final e()Lo/UpdateLock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/UpdateLock<",
            "Lo/YB;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/Yl;->f:Lo/UpdateLock;

    return-object v0
.end method

.method public final e(Lo/Ab;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/Yl;->e:Lo/Ab;

    return-void
.end method

.method public e(Lo/Yo;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 53
    iget-boolean v0, p0, Lo/Yl;->b:Z

    invoke-virtual {p1, v0}, Lo/Yo;->e(Z)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lo/Yl;->b:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 25
    iget-object v0, p0, Lo/Yl;->i:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 13
    check-cast p1, Lo/Yo;

    invoke-virtual {p0, p1, p2}, Lo/Yl;->d(Lo/Yo;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lo/Yl;->d(Landroid/view/ViewGroup;I)Lo/Yo;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method

.method public synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z
    .locals 0

    .line 13
    check-cast p1, Lo/Yo;

    invoke-virtual {p0, p1}, Lo/Yl;->c(Lo/Yo;)Z

    move-result p1

    return p1
.end method

.method public synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 13
    check-cast p1, Lo/Yo;

    invoke-virtual {p0, p1}, Lo/Yl;->e(Lo/Yo;)V

    return-void
.end method

.method public synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 13
    check-cast p1, Lo/Yo;

    invoke-virtual {p0, p1}, Lo/Yl;->a(Lo/Yo;)V

    return-void
.end method

.method public synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 13
    check-cast p1, Lo/Yo;

    invoke-virtual {p0, p1}, Lo/Yl;->d(Lo/Yo;)V

    return-void
.end method
