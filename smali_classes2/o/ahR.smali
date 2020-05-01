.class public Lo/ahR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahZ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/msl/util/MslContext;Lo/ahS;)Lo/agz;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/netflix/msl/util/MslContext;Lo/ahS;)Lo/agz;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;)Lo/agz;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/netflix/msl/util/MslContext;Lo/ahS;J)Lo/agz;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/netflix/msl/util/MslContext;Lo/ahX;Lo/ahS;)Lo/ahX;
    .locals 0

    .line 96
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Renewing master tokens is unsupported by the token factory."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;)Lo/ahU;
    .locals 0

    .line 104
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Creating users is unsupported by the token factory."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lcom/netflix/msl/util/MslContext;Lo/ahU;Lo/ahS;)Lo/ahX;
    .locals 0

    .line 88
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Creating user ID tokens is unsupported by the token factory."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
