.class public Lo/agI;
.super Lcom/netflix/msl/util/MslContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/agI$Application;,
        Lo/agI$Activity;,
        Lo/agI$ActionBar;
    }
.end annotation


# instance fields
.field private final a:Lo/ahZ;

.field private final b:Lo/agI$ActionBar;

.field private final c:Lo/agM;

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ahn;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Random;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/agT;",
            "Lo/agO;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/ahx;",
            "Lo/ahB;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lo/agQ;

.field private final i:Lo/aho;

.field private final j:Lo/aim;

.field private final k:Lo/agL;

.field private final n:Lo/agG;


# direct methods
.method public constructor <init>(Lo/agI$ActionBar;Ljava/util/Random;Lo/agM;Lo/ahZ;Lo/agQ;Ljava/util/Map;Ljava/util/Map;Lo/aim;Lo/agL;Lo/agG;Lo/aho;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/agI$ActionBar;",
            "Ljava/util/Random;",
            "Lo/agM;",
            "Lo/ahZ;",
            "Lo/agQ;",
            "Ljava/util/Map<",
            "Lo/agT;",
            "Lo/agO;",
            ">;",
            "Ljava/util/Map<",
            "Lo/ahx;",
            "Lo/ahB;",
            ">;",
            "Lo/aim;",
            "Lo/agL;",
            "Lo/agG;",
            "Lo/aho;",
            "Ljava/util/Set<",
            "Lo/ahn;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/netflix/msl/util/MslContext;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Lo/agI$Activity;

    invoke-direct {p1}, Lo/agI$Activity;-><init>()V

    :goto_0
    iput-object p1, p0, Lo/agI;->b:Lo/agI$ActionBar;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    :goto_1
    iput-object p2, p0, Lo/agI;->e:Ljava/util/Random;

    if-eqz p3, :cond_2

    goto :goto_2

    .line 55
    :cond_2
    new-instance p3, Lo/agK;

    invoke-direct {p3}, Lo/agK;-><init>()V

    :goto_2
    iput-object p3, p0, Lo/agI;->c:Lo/agM;

    if-eqz p4, :cond_3

    goto :goto_3

    .line 56
    :cond_3
    new-instance p4, Lo/ahR;

    invoke-direct {p4}, Lo/ahR;-><init>()V

    :goto_3
    iput-object p4, p0, Lo/agI;->a:Lo/ahZ;

    .line 57
    iput-object p5, p0, Lo/agI;->h:Lo/agQ;

    .line 58
    iput-object p6, p0, Lo/agI;->f:Ljava/util/Map;

    .line 59
    iput-object p7, p0, Lo/agI;->g:Ljava/util/Map;

    .line 60
    iput-object p8, p0, Lo/agI;->j:Lo/aim;

    .line 61
    iput-object p9, p0, Lo/agI;->k:Lo/agL;

    .line 62
    iput-object p10, p0, Lo/agI;->n:Lo/agG;

    if-eqz p11, :cond_4

    goto :goto_4

    .line 63
    :cond_4
    new-instance p11, Lo/ahh;

    invoke-direct {p11}, Lo/ahh;-><init>()V

    :goto_4
    iput-object p11, p0, Lo/agI;->i:Lo/aho;

    .line 64
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 67
    sget-object p2, Lo/ahn;->a:Lo/ahn;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p12, :cond_5

    move-object p1, p12

    .line 68
    :cond_5
    iput-object p1, p0, Lo/agI;->d:Ljava/util/Set;

    return-void
.end method

.method public static b()Lo/agI$Application;
    .locals 1

    .line 51
    new-instance v0, Lo/agI$Application;

    invoke-direct {v0}, Lo/agI$Application;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lo/ahx;
    .locals 0

    .line 130
    invoke-static {p1}, Lo/ahx;->c(Ljava/lang/String;)Lo/ahx;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Lo/agT;
    .locals 0

    .line 110
    invoke-static {p1}, Lo/agT;->b(Ljava/lang/String;)Lo/agT;

    move-result-object p1

    return-object p1
.end method

.method public c()J
    .locals 2

    .line 85
    iget-object v0, p0, Lo/agI;->b:Lo/agI$ActionBar;

    invoke-interface {v0}, Lo/agI$ActionBar;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Lo/agT;)Lo/agO;
    .locals 1

    .line 115
    iget-object v0, p0, Lo/agI;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/agO;

    return-object p1
.end method

.method public c(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/ahn;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lo/agI;->d:Ljava/util/Set;

    return-void
.end method

.method public d(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lo/agQ;
    .locals 0

    .line 105
    iget-object p1, p0, Lo/agI;->h:Lo/agQ;

    return-object p1
.end method

.method public d()Lo/ahL;
    .locals 4

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 97
    sget-object v1, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->c:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v1, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->d:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lo/ahL;

    iget-object v2, p0, Lo/agI;->d:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lo/ahL;-><init>(Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V

    return-object v1
.end method

.method public d(Ljava/lang/String;)Lo/aib;
    .locals 0

    .line 120
    invoke-static {p1}, Lo/aib;->e(Ljava/lang/String;)Lo/aib;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/aib;)Lo/aif;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lo/ahB;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lo/agI;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public e(Lo/ahx;)Lo/ahB;
    .locals 1

    .line 135
    iget-object v0, p0, Lo/agI;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ahB;

    return-object p1
.end method

.method public f()Lo/aim;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/agI;->j:Lo/aim;

    return-object v0
.end method

.method public g()Lo/ahZ;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/agI;->a:Lo/ahZ;

    return-object v0
.end method

.method public h()Lo/aho;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/agI;->i:Lo/aho;

    return-object v0
.end method

.method public i()Lo/agM;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/agI;->c:Lo/agM;

    return-object v0
.end method

.method public j()Ljava/util/Random;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/agI;->e:Ljava/util/Random;

    return-object v0
.end method
