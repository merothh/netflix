.class public Lo/ahQ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/ahK;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/netflix/msl/util/MslContext;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lo/ahK;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lo/ahQ;->d:Lcom/netflix/msl/util/MslContext;

    .line 96
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->c()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/ahQ;->c:Ljava/util/Map;

    .line 97
    iput-object p3, p0, Lo/ahQ;->a:Lo/ahK;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lo/ahQ;->a:Lo/ahK;

    invoke-virtual {v0}, Lo/ahK;->o()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    .line 450
    iget-object v0, p0, Lo/ahQ;->a:Lo/ahK;

    invoke-virtual {v0}, Lo/ahK;->o()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ahV;

    .line 451
    invoke-virtual {v1}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v0, p0, Lo/ahQ;->a:Lo/ahK;

    invoke-virtual {v0, p1}, Lo/ahK;->a(Ljava/lang/String;)Lo/ahK;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
