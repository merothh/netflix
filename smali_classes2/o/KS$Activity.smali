.class final Lo/KS$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KS;->d(Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/KS;

.field final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lo/KS;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lo/KS$Activity;->d:Lo/KS;

    iput-object p2, p0, Lo/KS$Activity;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lo/KS$Activity;->d:Lo/KS;

    invoke-static {v0}, Lo/KS;->d(Lo/KS;)Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lo/KS$Activity;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 70
    new-instance v2, Lo/KS$ActionBar;

    iget-object v3, p0, Lo/KS$Activity;->d:Lo/KS;

    invoke-direct {v2, v3, p1}, Lo/KS$ActionBar;-><init>(Lo/KS;Lio/reactivex/ObservableEmitter;)V

    check-cast v2, Lo/zU;

    const-string p1, "actionbarCategoryList"

    .line 67
    invoke-interface {v0, p1, v1, v2}, Lo/zG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    .line 74
    iget-object p1, p0, Lo/KS$Activity;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    sget-object v0, Lo/KS;->a:Lo/KS$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 77
    iget-object v0, p0, Lo/KS$Activity;->d:Lo/KS;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    const/4 v2, 0x0

    .line 78
    sget-object v3, Lo/KV;->c:Lo/KV;

    invoke-virtual {v3}, Lo/KV;->a()Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    aput-object v3, v1, v2

    .line 77
    invoke-static {v1}, Lo/akz;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lo/KS;->b(Lo/KS;Ljava/util/List;)V

    .line 80
    iget-object v0, p0, Lo/KS$Activity;->d:Lo/KS;

    invoke-static {v0}, Lo/KS;->e(Lo/KS;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 81
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :goto_0
    return-void
.end method
