.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IClientLogging;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
    }
.end annotation


# static fields
.field public static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->d:J

    return-void
.end method


# virtual methods
.method public abstract a()Lo/zz;
.end method

.method public abstract addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
.end method

.method public abstract b()Lo/iS;
.end method

.method public abstract d()Lo/iU;
.end method

.method public abstract e()Lo/zu;
.end method

.method public abstract g()J
.end method

.method public abstract h()Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;
.end method

.method public abstract i()V
.end method

.method public abstract k()V
.end method

.method public abstract l()Lo/zS;
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()V
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public abstract s()Lo/jQ;
.end method
