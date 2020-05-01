.class public Lo/ahH;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/util/Set;Ljava/util/Map;)Lo/ahO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/io/InputStream;",
            "Ljava/util/Set<",
            "Lo/ahz;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;)",
            "Lo/ahO;"
        }
    .end annotation

    .line 94
    new-instance v0, Lo/ahO;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/ahO;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/util/Set;Ljava/util/Map;)V

    return-object v0
.end method

.method public b(Lcom/netflix/msl/util/MslContext;Lo/ahP;)Lo/ahK;
    .locals 1

    .line 212
    new-instance v0, Lo/ahT;

    invoke-direct {v0, p1, p2}, Lo/ahT;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahP;)V

    return-object v0
.end method

.method public b(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;)Lo/ahK;
    .locals 1

    .line 190
    new-instance v0, Lo/ahK;

    invoke-direct {v0, p1, p2, p3}, Lo/ahK;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;)V

    return-object v0
.end method

.method public c(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;J)Lo/ahK;
    .locals 7

    .line 176
    new-instance v6, Lo/ahK;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lo/ahK;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;J)V

    return-object v6
.end method

.method public e(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lo/ahP;Lo/agM;)Lo/ahM;
    .locals 1

    .line 125
    new-instance v0, Lo/ahM;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/ahM;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lo/ahP;Lo/agM;)V

    return-object v0
.end method
