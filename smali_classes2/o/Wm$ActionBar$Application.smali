.class public final Lo/Wm$ActionBar$Application;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wm$ActionBar;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Wm$ActionBar;


# direct methods
.method constructor <init>(Lo/Wm$ActionBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lo/Wm$ActionBar$Application;->d:Lo/Wm$ActionBar;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-super {p0, p1, p2}, Lo/Ai;->k(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 24
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 25
    iget-object p2, p0, Lo/Wm$ActionBar$Application;->d:Lo/Wm$ActionBar;

    iget-object p2, p2, Lo/Wm$ActionBar;->e:Lo/Wm;

    invoke-virtual {p2}, Lo/Wm;->a()Lio/reactivex/subjects/PublishSubject;

    move-result-object p2

    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 38
    invoke-static {p1, v0}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lo/akI;->d(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lo/amG;->e(II)I

    move-result v0

    .line 39
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 40
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Lcom/netflix/model/leafs/advisory/Advisory;

    const/4 v2, 0x0

    .line 25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    :cond_0
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 25
    invoke-virtual {p2, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
