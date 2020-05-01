.class public abstract Lo/ahB;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ahB$TaskDescription;
    }
.end annotation


# instance fields
.field private final d:Lo/ahx;


# direct methods
.method protected constructor <init>(Lo/ahx;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lo/ahB;->d:Lo/ahx;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/netflix/msl/util/MslContext;Lo/ahn;Lo/ahz;Lo/ahS;)Lo/ahB$TaskDescription;
.end method

.method public abstract b(Lcom/netflix/msl/util/MslContext;Lo/ahz;Lo/ahA;Lo/ahS;)Lo/agM;
.end method

.method public abstract b(Lcom/netflix/msl/util/MslContext;Lo/ahn;Lo/ahz;Lo/agQ;)Lo/ahB$TaskDescription;
.end method

.method protected abstract b(Lcom/netflix/msl/util/MslContext;Lo/ahp;)Lo/ahz;
.end method

.method public c()Lo/ahx;
    .locals 1

    .line 74
    iget-object v0, p0, Lo/ahB;->d:Lo/ahx;

    return-object v0
.end method

.method protected abstract e(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahp;)Lo/ahA;
.end method
