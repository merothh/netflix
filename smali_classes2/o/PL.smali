.class public final Lo/PL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Pq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PL$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/PL$StateListAnimator;


# instance fields
.field private final d:Lo/Zx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/PL$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PL$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/PL;->a:Lo/PL$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    iput-object v0, p0, Lo/PL;->d:Lo/Zx;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Ph;",
            ">;"
        }
    .end annotation

    const-string v0, "eventGuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lo/PL;->d:Lo/Zx;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/Zx;->b(Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 19
    new-instance v1, Lo/PL$ActionBar;

    invoke-direct {v1, p1}, Lo/PL$ActionBar;-><init>(Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "browseRepository.fetchNo\u2026          }\n            }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Ph;",
            ">;"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lo/PK;->d:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "browseRepository\n       \u2026ls)\n                    }"

    const/4 v3, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 87
    new-instance p1, Lo/Ph$FragmentManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lo/PL;->a:Lo/PL$StateListAnimator;

    invoke-virtual {v0}, Lo/PL$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - got unexpected result"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/Ph$FragmentManager;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.just(\n       \u2026 got unexpected result\"))"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 78
    :cond_0
    iget-object p2, p0, Lo/PL;->d:Lo/Zx;

    .line 79
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    invoke-virtual {p2, p1, v3, v1, v0}, Lo/Zx;->d(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;

    move-result-object p1

    .line 80
    sget-object p2, Lo/PL$LoaderManager;->b:Lo/PL$LoaderManager;

    check-cast p2, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 70
    :cond_1
    iget-object p2, p0, Lo/PL;->d:Lo/Zx;

    .line 71
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    invoke-virtual {p2, p1, v3, v1, v0}, Lo/Zx;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;

    move-result-object p1

    .line 72
    sget-object p2, Lo/PL$Activity;->b:Lo/PL$Activity;

    check-cast p2, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 62
    :cond_2
    iget-object p2, p0, Lo/PL;->d:Lo/Zx;

    .line 63
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    invoke-virtual {p2, p1, v3, v0}, Lo/Zx;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;

    move-result-object p1

    .line 64
    sget-object p2, Lo/PL$TaskDescription;->d:Lo/PL$TaskDescription;

    check-cast p2, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 54
    :cond_3
    iget-object p2, p0, Lo/PL;->d:Lo/Zx;

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    invoke-virtual {p2, p1, v3, v1, v0}, Lo/Zx;->d(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    sget-object p2, Lo/PL$Application;->a:Lo/PL$Application;

    check-cast p2, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
