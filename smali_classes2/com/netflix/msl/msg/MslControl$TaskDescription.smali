.class Lcom/netflix/msl/msg/MslControl$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/msl/msg/MessageContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field protected final d:Lcom/netflix/msl/msg/MessageContext;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/msg/MessageContext;)V
    .locals 0

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/ahz;",
            ">;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b()Lo/ahJ;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->b()Lo/ahJ;

    move-result-object v0

    return-object v0
.end method

.method public b(Lo/ahM;)V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0, p1}, Lcom/netflix/msl/msg/MessageContext;->b(Lo/ahM;)V

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d()Lo/ahU;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->d()Lo/ahU;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lo/aie;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/msl/msg/MessageContext;->d(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lo/aie;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Lo/ahQ;Z)V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0, p1, p2}, Lcom/netflix/msl/msg/MessageContext;->e(Lo/ahQ;Z)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->g()Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->i()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$TaskDescription;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->j()Z

    move-result v0

    return v0
.end method
