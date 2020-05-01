.class public abstract Lcom/netflix/msl/util/MslContext;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/msl/util/MslContext$ReauthCode;
    }
.end annotation


# instance fields
.field private volatile b:J

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/netflix/msl/util/MslContext;->d:Z

    const-wide/16 v0, 0x0

    .line 299
    iput-wide v0, p0, Lcom/netflix/msl/util/MslContext;->b:J

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lo/ahx;
.end method

.method public abstract a()Z
.end method

.method public abstract b(Ljava/lang/String;)Lo/agT;
.end method

.method public final b(Ljava/util/Date;)V
    .locals 6

    .line 274
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 275
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    .line 276
    iput-wide v4, p0, Lcom/netflix/msl/util/MslContext;->b:J

    const/4 p1, 0x1

    .line 277
    iput-boolean p1, p0, Lcom/netflix/msl/util/MslContext;->d:Z

    return-void
.end method

.method public abstract c()J
.end method

.method public abstract c(Lo/agT;)Lo/agO;
.end method

.method public abstract d(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lo/agQ;
.end method

.method public abstract d()Lo/ahL;
.end method

.method public abstract d(Ljava/lang/String;)Lo/aib;
.end method

.method public abstract d(Lo/aib;)Lo/aif;
.end method

.method public abstract e()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lo/ahB;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e(Lo/ahx;)Lo/ahB;
.end method

.method public abstract f()Lo/aim;
.end method

.method public abstract g()Lo/ahZ;
.end method

.method public abstract h()Lo/aho;
.end method

.method public abstract i()Lo/agM;
.end method

.method public abstract j()Ljava/util/Random;
.end method

.method public final k()Ljava/util/Date;
    .locals 6

    .line 290
    iget-boolean v0, p0, Lcom/netflix/msl/util/MslContext;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 292
    iget-wide v4, p0, Lcom/netflix/msl/util/MslContext;->b:J

    add-long/2addr v0, v4

    .line 293
    new-instance v4, Ljava/util/Date;

    mul-long v0, v0, v2

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v4
.end method
