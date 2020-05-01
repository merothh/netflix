.class public final Lo/SimpleExpandableListAdapter;
.super Lo/SimpleAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SimpleAdapter<",
        "Lo/Ba;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Ba;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selections"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lo/SimpleAdapter;-><init>()V

    iput-object p1, p0, Lo/SimpleExpandableListAdapter;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 17
    iget-object v0, p0, Lo/SimpleExpandableListAdapter;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .line 19
    invoke-virtual {p0, p1}, Lo/SimpleExpandableListAdapter;->d(I)Lo/Ba;

    move-result-object p1

    invoke-interface {p1}, Lo/Ba;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSelection(position).id"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic c(I)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lo/SimpleExpandableListAdapter;->d(I)Lo/Ba;

    move-result-object p1

    return-object p1
.end method

.method public d(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;>;"
        }
    .end annotation

    .line 22
    iget-object p1, p0, Lo/SimpleExpandableListAdapter;->a:Ljava/util/List;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.just(selections)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected d(I)Lo/Ba;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/SimpleExpandableListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Ba;

    return-object p1
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    .line 20
    invoke-virtual {p0, p1}, Lo/SimpleExpandableListAdapter;->d(I)Lo/Ba;

    move-result-object p1

    invoke-interface {p1}, Lo/Ba;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSelection(position).title"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
