.class final Lo/Yo$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yo;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Yo;


# direct methods
.method constructor <init>(Lo/Yo;)V
    .locals 0

    iput-object p1, p0, Lo/Yo$TaskDescription;->a:Lo/Yo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 7

    .line 310
    iget-object v0, p0, Lo/Yo$TaskDescription;->a:Lo/Yo;

    invoke-virtual {v0}, Lo/Yo;->a()Lo/Yn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {v0, p1, p2}, Lo/Yn;->b(J)V

    .line 312
    invoke-virtual {v0}, Lo/Yn;->c()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v0}, Lo/Yn;->getSupplementalVideoId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {v0}, Lo/Yn;->getSupplementalVideoDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    .line 321
    invoke-virtual {v0}, Lo/Yn;->d()J

    move-result-wide v1

    invoke-virtual {v0}, Lo/Yn;->getSupplementalVideoDuration()J

    move-result-wide v3

    const/16 p2, 0xa

    int-to-long v5, p2

    mul-long v3, v3, v5

    div-long/2addr v1, v3

    const-wide/16 v3, 0x5

    const-wide/16 v5, 0x32

    cmp-long p2, v1, v3

    if-ltz p2, :cond_0

    cmp-long p2, v1, v5

    if-gez p2, :cond_0

    .line 324
    sget-object p2, Lo/YE;->a:Lo/YE;

    invoke-virtual {p2}, Lo/YE;->h()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 326
    sget-object p2, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast p2, Lo/MessagePdu;

    .line 327
    sget-object p2, Lo/YE;->a:Lo/YE;

    invoke-virtual {p2}, Lo/YE;->h()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    cmp-long p2, v1, v5

    if-ltz p2, :cond_1

    .line 329
    sget-object p2, Lo/YE;->a:Lo/YE;

    invoke-virtual {p2}, Lo/YE;->h()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 331
    sget-object p2, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast p2, Lo/MessagePdu;

    .line 332
    sget-object p2, Lo/YE;->a:Lo/YE;

    invoke-virtual {p2}, Lo/YE;->h()Ljava/util/Set;

    move-result-object p2

    const-string v0, "supplementalId"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
