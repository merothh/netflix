.class public final Lo/SimpleCursorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SimpleCursorAdapter$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Lo/SimpleCursorAdapter$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/SimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/SimpleAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput-object p1, p0, Lo/SimpleCursorAdapter;->b:Lo/SimpleAdapter;

    .line 18
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "PublishSubject.create<Int>()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/SimpleCursorAdapter;->d:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public a(Lo/SimpleCursorAdapter$Activity;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lo/SimpleCursorAdapter;->b:Lo/SimpleAdapter;

    invoke-virtual {v0, p2}, Lo/SimpleAdapter;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lo/SimpleCursorAdapter;->b:Lo/SimpleAdapter;

    invoke-virtual {v1}, Lo/SimpleAdapter;->d()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 53
    :goto_0
    invoke-virtual {p1, v0, p2}, Lo/SimpleCursorAdapter$Activity;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final d()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lo/SimpleCursorAdapter;->d:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    check-cast v0, Lio/reactivex/Observable;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type io.reactivex.Observable<kotlin.Int>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Landroid/view/ViewGroup;I)Lo/SimpleCursorAdapter$Activity;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 49
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cm:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lo/SimpleCursorAdapter$Activity;

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/SimpleCursorAdapter;->b:Lo/SimpleAdapter;

    iget-object v1, p0, Lo/SimpleCursorAdapter;->d:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {p2, p1, v0, v1}, Lo/SimpleCursorAdapter$Activity;-><init>(Landroid/view/View;Lo/SimpleAdapter;Lio/reactivex/subjects/PublishSubject;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lo/SimpleCursorAdapter;->b:Lo/SimpleAdapter;

    invoke-virtual {v0}, Lo/SimpleAdapter;->b()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 15
    check-cast p1, Lo/SimpleCursorAdapter$Activity;

    invoke-virtual {p0, p1, p2}, Lo/SimpleCursorAdapter;->a(Lo/SimpleCursorAdapter$Activity;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lo/SimpleCursorAdapter;->d(Landroid/view/ViewGroup;I)Lo/SimpleCursorAdapter$Activity;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method
