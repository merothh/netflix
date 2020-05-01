.class public final Lo/Yu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Yu$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/Yu$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Yu$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Yu$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Yu;->a:Lo/Yu$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;ILio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AM;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "I",
            "Lio/reactivex/ObservableEmitter<",
            "Lkotlin/Pair<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;>;>;)V"
        }
    .end annotation

    .line 74
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Feed fetch error: (isError = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", statusCode = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", message = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", serverLogDebugMsg = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") or (requestedVideos == null = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") or (requestedVideo.isEmpty() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    new-instance p3, Lkotlin/Pair;

    invoke-direct {p3, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p3}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 79
    invoke-interface {p4}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto/16 :goto_5

    :cond_2
    if-eqz p1, :cond_8

    .line 82
    check-cast p1, Ljava/lang/Iterable;

    .line 100
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 101
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/AM;

    .line 83
    invoke-interface {v3}, Lo/AM;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_3

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 102
    :cond_5
    check-cast p2, Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 105
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    if-gez v2, :cond_6

    .line 106
    invoke-static {}, Lo/akz;->c()V

    :cond_6
    check-cast v0, Lo/AM;

    add-int/2addr v2, p3

    .line 86
    new-instance v3, Lo/Yn;

    invoke-direct {v3, v0, v2}, Lo/Yn;-><init>(Lo/AM;I)V

    .line 87
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_4

    .line 107
    :cond_7
    check-cast p1, Ljava/util/List;

    .line 90
    new-instance p2, Lkotlin/Pair;

    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p2, p3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 91
    invoke-interface {p4}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_5

    .line 92
    :cond_8
    move-object p1, p0

    check-cast p1, Lo/Yu;

    .line 93
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    new-instance p3, Lkotlin/Pair;

    invoke-direct {p3, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p3}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 94
    invoke-interface {p4}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :goto_5
    return-void
.end method

.method public static final synthetic d(Lo/Yu;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;ILio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lo/Yu;->c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;ILio/reactivex/ObservableEmitter;)V

    return-void
.end method


# virtual methods
.method public final b(Lo/Am;Ljava/lang/String;IIZ)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/lang/String;",
            "IIZ)",
            "Lio/reactivex/Observable<",
            "Lkotlin/Pair<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "listId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-le p3, p4, :cond_0

    .line 31
    sget-object p1, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p2

    new-instance p3, Lkotlin/Pair;

    invoke-direct {p3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.just(Pair(Com\u2026NTERNAL_ERROR, listOf()))"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 33
    :cond_0
    new-instance v7, Lo/Yu$ActionBar;

    move-object v0, v7

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lo/Yu$ActionBar;-><init>(Lo/Yu;IILo/Am;Ljava/lang/String;Z)V

    check-cast v7, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v7}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { emit\u2026}\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
