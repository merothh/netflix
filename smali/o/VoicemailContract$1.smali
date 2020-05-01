.class Lo/VoicemailContract$1;
.super Lo/ng;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VoicemailContract;->c(Ljava/util/List;Lo/CustomViolation;)Lo/ng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ng<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final A:Z

.field private final B:Ljava/lang/String;

.field private final C:Z

.field private final D:J

.field final synthetic b:Lo/VoicemailContract;

.field final synthetic d:Lo/CustomViolation;

.field final synthetic e:Ljava/util/List;

.field private final v:Z

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/VoicemailContract;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;Ljava/util/List;Lo/CustomViolation;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    iput-object p3, p0, Lo/VoicemailContract$1;->e:Ljava/util/List;

    iput-object p4, p0, Lo/VoicemailContract$1;->d:Lo/CustomViolation;

    invoke-direct {p0, p2}, Lo/ng;-><init>(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)V

    .line 578
    invoke-static {}, Lo/aeB;->c()Z

    move-result p1

    iput-boolean p1, p0, Lo/VoicemailContract$1;->v:Z

    .line 580
    iget-object p1, p0, Lo/VoicemailContract$1;->e:Ljava/util/List;

    invoke-static {p1}, Lo/adt;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/VoicemailContract$1;->w:Ljava/util/List;

    .line 581
    iget-object p1, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    invoke-virtual {p1}, Lo/VoicemailContract;->a()Z

    move-result p1

    iput-boolean p1, p0, Lo/VoicemailContract$1;->C:Z

    .line 582
    iget-object p1, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    invoke-virtual {p1}, Lo/VoicemailContract;->o()Z

    move-result p1

    iput-boolean p1, p0, Lo/VoicemailContract$1;->A:Z

    .line 583
    iget-object p1, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    invoke-virtual {p1}, Lo/VoicemailContract;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/VoicemailContract$1;->z:Ljava/util/List;

    const-wide/16 p1, -0x1

    .line 584
    iput-wide p1, p0, Lo/VoicemailContract$1;->D:J

    .line 586
    iget-object p1, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    .line 587
    invoke-virtual {p1}, Lo/VoicemailContract;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/VoicemailContract$1;->B:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 591
    iget-object v0, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    invoke-virtual {v0}, Lo/VoicemailContract;->c()Lcom/android/volley/Request$Priority;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    invoke-virtual {v0}, Lo/VoicemailContract;->c()Lcom/android/volley/Request$Priority;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/volley/Request$Priority;->c:Lcom/android/volley/Request$Priority;

    :goto_0
    return-object v0
.end method

.method protected J()Ljava/lang/String;
    .locals 1

    .line 612
    iget-boolean v0, p0, Lo/VoicemailContract$1;->C:Z

    if-eqz v0, :cond_0

    const-string v0, "call"

    goto :goto_0

    :cond_0
    const-string v0, "get"

    :goto_0
    return-object v0
.end method

.method protected K()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public M_()Ljava/lang/String;
    .locals 1

    .line 701
    iget-object v0, p0, Lo/VoicemailContract$1;->B:Ljava/lang/String;

    return-object v0
.end method

.method protected N()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 687
    invoke-static {}, Lo/aeB;->a()Z

    .line 689
    iget-object v0, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    iget-object v1, v0, Lo/VoicemailContract;->b:Lo/ci;

    invoke-static {v0, v1, p1}, Lo/VoicemailContract;->d(Lo/VoicemailContract;Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 694
    invoke-super {p0, p1}, Lo/ng;->b(Z)V

    .line 695
    iget-object v0, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    iget-object v1, p0, Lo/VoicemailContract$1;->e:Ljava/util/List;

    iget-object v2, p0, Lo/VoicemailContract$1;->d:Lo/CustomViolation;

    invoke-static {v0, p1, v1, v2}, Lo/VoicemailContract;->c(Lo/VoicemailContract;ZLjava/util/List;Lo/CustomViolation;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .line 606
    iget-object v0, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    iget-wide v1, p0, Lo/VoicemailContract$1;->D:J

    iget-object v3, p0, Lo/VoicemailContract$1;->d:Lo/CustomViolation;

    invoke-static {v0, p1, v1, v2, v3}, Lo/VoicemailContract;->e(Lo/VoicemailContract;Ljava/lang/String;JLo/CustomViolation;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 576
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo/VoicemailContract$1;->e(Ljava/lang/Void;)V

    return-void
.end method

.method protected e(Ljava/lang/Void;)V
    .locals 0

    .line 681
    invoke-static {}, Lo/aeB;->a()Z

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 596
    iget-object v0, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    invoke-virtual {v0}, Lo/VoicemailContract;->i()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    invoke-virtual {v0}, Lo/VoicemailContract;->i()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->j:Lcom/netflix/mediaclient/net/NetworkRequestType;

    :goto_0
    return-object v0
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 576
    invoke-virtual {p0, p1}, Lo/VoicemailContract$1;->c(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public q()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 651
    invoke-super {p0}, Lo/ng;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 655
    :cond_0
    sget-object v1, Lo/zn;->f:Ljava/lang/String;

    const-string v2, "X-Netflix.Request.Routing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v1, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    invoke-static {v1}, Lo/VoicemailContract;->d(Lo/VoicemailContract;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    iget-object v1, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    invoke-static {v1}, Lo/VoicemailContract;->d(Lo/VoicemailContract;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.Request.NqTracking"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_1
    iget-object v1, p0, Lo/VoicemailContract$1;->b:Lo/VoicemailContract;

    invoke-virtual {v1, v0}, Lo/VoicemailContract;->a(Ljava/util/Map;)V

    .line 661
    sget-object v1, Lo/zs;->b:Lo/zs;

    .line 663
    invoke-virtual {v1}, Lo/zs;->d()Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.Request.Client.Context"

    .line 661
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public u()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 623
    invoke-super {p0}, Lo/ng;->u()Ljava/util/Map;

    move-result-object v0

    .line 624
    invoke-static {}, Lo/aeB;->c()Z

    .line 625
    iget-object v1, p0, Lo/VoicemailContract$1;->z:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 629
    :cond_0
    iget-object v1, p0, Lo/VoicemailContract$1;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/adt$Activity;

    .line 633
    iget-object v3, v2, Lo/adt$Activity;->first:Ljava/lang/Object;

    iget-object v2, v2, Lo/adt$Activity;->second:Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 636
    :cond_1
    invoke-static {v0}, Lo/VoicemailContract;->b(Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected u_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lo/VoicemailContract$1;->w:Ljava/util/List;

    return-object v0
.end method
