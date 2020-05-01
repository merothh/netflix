.class public final Lo/Space;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Space$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Lo/Space$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/SimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/SlidingDrawer;

.field private final e:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/SimpleAdapter;Lo/SlidingDrawer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lo/SlidingDrawer;",
            ")V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput-object p1, p0, Lo/Space;->a:Lo/SimpleAdapter;

    iput-object p2, p0, Lo/Space;->c:Lo/SlidingDrawer;

    .line 22
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<Int>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Space;->b:Lio/reactivex/subjects/PublishSubject;

    .line 23
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<Unit>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Space;->e:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lo/Space;->b:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    check-cast v0, Lio/reactivex/Observable;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type io.reactivex.Observable<kotlin.Int>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/view/ViewGroup;I)Lo/Space$TaskDescription;
    .locals 9

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fy:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 61
    new-instance p2, Lo/Space$TaskDescription;

    const-string v0, "view"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lo/Space;->a:Lo/SimpleAdapter;

    iget-object v6, p0, Lo/Space;->b:Lio/reactivex/subjects/PublishSubject;

    iget-object v7, p0, Lo/Space;->e:Lio/reactivex/subjects/PublishSubject;

    iget-object v8, p0, Lo/Space;->c:Lo/SlidingDrawer;

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lo/Space$TaskDescription;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Lo/SimpleAdapter;Lio/reactivex/subjects/PublishSubject;Lio/reactivex/subjects/PublishSubject;Lo/SlidingDrawer;)V

    return-object p2
.end method

.method public c(Lo/Space$TaskDescription;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lo/Space;->a:Lo/SimpleAdapter;

    invoke-virtual {v0, p2}, Lo/SimpleAdapter;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lo/Space;->a:Lo/SimpleAdapter;

    invoke-virtual {v1}, Lo/SimpleAdapter;->d()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 64
    :goto_0
    invoke-virtual {p1, v0, p2}, Lo/Space$TaskDescription;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lo/Space;->a:Lo/SimpleAdapter;

    invoke-virtual {v0}, Lo/SimpleAdapter;->b()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 69
    iget-object p1, p0, Lo/Space;->c:Lo/SlidingDrawer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/SlidingDrawer;->d()V

    :cond_0
    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 17
    check-cast p1, Lo/Space$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Space;->c(Lo/Space$TaskDescription;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lo/Space;->b(Landroid/view/ViewGroup;I)Lo/Space$TaskDescription;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method
