.class public final Lo/pp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/xo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/pp$Application;,
        Lo/pp$ActionBar;
    }
.end annotation


# instance fields
.field private final b:Lo/pq;

.field private final c:Lo/sz;

.field private final d:Lo/nS;

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/sz;Lo/nS;Lo/pq;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lo/pp;->e:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lo/pp;->c:Lo/sz;

    .line 45
    iput-object p3, p0, Lo/pp;->d:Lo/nS;

    .line 46
    iput-object p4, p0, Lo/pp;->b:Lo/pq;

    return-void
.end method

.method static synthetic d(Lo/sE;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lo/pp;->e(Lo/sE;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    return-void
.end method

.method private static e(Lo/sE;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 2

    .line 137
    invoke-interface {p0}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lo/sE;->Z()Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lo/adU;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Z

    move-result p1

    const-string v0, "NetflixManifestProvider"

    if-eqz p1, :cond_0

    const-string p1, "Limit streams to SD only!"

    .line 138
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x21c

    .line 139
    invoke-interface {p0, p1}, Lo/sE;->b(I)V

    goto :goto_0

    :cond_0
    const-string p1, "Remove limit to SD only, just in case"

    .line 141
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 142
    invoke-interface {p0, p1}, Lo/sE;->b(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 81
    iget-object v1, p0, Lo/pp;->d:Lo/nS;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/px;->d(Lo/nS;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    return-object p1

    .line 85
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    return-object p1
.end method

.method public c(Ljava/util/List;Lo/xo$TaskDescription;Lo/xx;ZLo/P;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/xo$TaskDescription;",
            "Lo/xx;",
            "Z",
            "Lo/P;",
            ")V"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez p4, :cond_0

    .line 57
    iget-object v2, p0, Lo/pp;->d:Lo/nS;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Lo/px;->d(Lo/nS;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    new-instance v2, Lo/pp$Application;

    invoke-direct {v2, p2}, Lo/pp$Application;-><init>(Lo/xo$TaskDescription;)V

    .line 61
    iget-object v3, p0, Lo/pp;->b:Lo/pq;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v2}, Lo/pq;->d(JLo/pq$ActionBar;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 67
    new-instance p1, Lo/pp$ActionBar;

    invoke-direct {p1, p2}, Lo/pp$ActionBar;-><init>(Lo/xo$TaskDescription;)V

    .line 68
    iget-object p2, p0, Lo/pp;->c:Lo/sz;

    invoke-virtual {p2, v0, p1, p3, p5}, Lo/sz;->c(Ljava/util/List;Lo/sD$ActionBar;Lo/xx;Lo/P;)V

    :cond_2
    return-void
.end method

.method public d(JLcom/netflix/mediaclient/media/PreferredLanguageData;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lo/pp;->c:Lo/sz;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lo/sz;->e(Ljava/lang/Long;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    return-void
.end method
