.class public final Lo/OZ;
.super Lo/UnsupportedOperationException;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/UnsupportedOperationException<",
        "Lo/Pa;",
        "Lo/OY;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Pe;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/UnicodeScript;


# direct methods
.method public constructor <init>(Lo/UnicodeScript;Lio/reactivex/subjects/PublishSubject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UnicodeScript;",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Pe;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPub"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lo/OZ$5;

    invoke-direct {v0}, Lo/OZ$5;-><init>()V

    check-cast v0, Lo/State$StateListAnimator;

    invoke-direct {p0, v0}, Lo/UnsupportedOperationException;-><init>(Lo/State$StateListAnimator;)V

    iput-object p1, p0, Lo/OZ;->e:Lo/UnicodeScript;

    iput-object p2, p0, Lo/OZ;->c:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public b(Lo/OY;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p2}, Lo/OZ;->a(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getItem(position)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/Pa;

    invoke-virtual {p1, p2}, Lo/OY;->b(Lo/Pa;)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lo/OY;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cc:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 30
    new-instance p2, Lo/OY;

    iget-object v0, p0, Lo/OZ;->e:Lo/UnicodeScript;

    iget-object v1, p0, Lo/OZ;->c:Lio/reactivex/subjects/PublishSubject;

    const-string v2, "view"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v1, p1}, Lo/OY;-><init>(Lo/UnicodeScript;Lio/reactivex/subjects/PublishSubject;Landroid/view/View;)V

    return-object p2
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 11
    check-cast p1, Lo/OY;

    invoke-virtual {p0, p1, p2}, Lo/OZ;->b(Lo/OY;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lo/OZ;->d(Landroid/view/ViewGroup;I)Lo/OY;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method
