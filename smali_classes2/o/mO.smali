.class public Lo/mO;
.super Lo/ahB;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lo/ahy;->i:Lo/ahx;

    invoke-direct {p0, v0}, Lo/ahB;-><init>(Lo/ahx;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/msl/util/MslContext;Lo/ahn;Lo/ahz;Lo/ahS;)Lo/ahB$TaskDescription;
    .locals 0

    .line 61
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Client will not generate a keyx  response"

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/netflix/msl/util/MslContext;Lo/ahz;Lo/ahA;Lo/ahS;)Lo/agM;
    .locals 6

    .line 72
    move-object v3, p2

    check-cast v3, Lo/ahD;

    .line 73
    move-object v4, p3

    check-cast v4, Lo/ahC;

    const/4 p2, 0x0

    .line 74
    invoke-virtual {p1, p2}, Lcom/netflix/msl/util/MslContext;->d(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lo/agQ;

    move-result-object p2

    invoke-virtual {p2}, Lo/agQ;->c()Ljava/lang/String;

    move-result-object v2

    .line 76
    new-instance p2, Lo/mK;

    move-object v0, p2

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/mK;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lo/ahD;Lo/ahC;Lo/ahS;)V

    return-object p2
.end method

.method public b(Lcom/netflix/msl/util/MslContext;Lo/ahn;Lo/ahz;Lo/agQ;)Lo/ahB$TaskDescription;
    .locals 0

    .line 66
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Client will not generate a keyx  response"

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b(Lcom/netflix/msl/util/MslContext;Lo/ahp;)Lo/ahz;
    .locals 0

    .line 46
    new-instance p1, Lo/ahD;

    invoke-direct {p1, p2}, Lo/ahD;-><init>(Lo/ahp;)V

    return-object p1
.end method

.method protected e(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahp;)Lo/ahA;
    .locals 0

    .line 56
    new-instance p1, Lo/ahC;

    invoke-direct {p1, p2, p3}, Lo/ahC;-><init>(Lo/ahS;Lo/ahp;)V

    return-object p1
.end method
