.class public final Lo/Xo;
.super Lo/Xr;
.source ""


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/netflix/model/leafs/PostPlayItem;",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postPlayItem"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postPlayUIObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lo/Xr;-><init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;)V

    .line 15
    invoke-virtual {p0}, Lo/Xo;->m()Lo/HorizontalScrollView;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->jc:I

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setText(I)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method
