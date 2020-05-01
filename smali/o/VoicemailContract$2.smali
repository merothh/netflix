.class Lo/VoicemailContract$2;
.super Lo/zn;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VoicemailContract;->e(Ljava/util/List;Lo/CustomViolation;)Lo/zn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zn<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/CustomViolation;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lo/VoicemailContract;

.field private final m:Z

.field private final u:J

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Z

.field private final y:Z

.field private final z:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/VoicemailContract;Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;ILjava/util/List;Lo/CustomViolation;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    iput-object p5, p0, Lo/VoicemailContract$2;->d:Ljava/util/List;

    iput-object p6, p0, Lo/VoicemailContract$2;->b:Lo/CustomViolation;

    invoke-direct {p0, p2, p3, p4}, Lo/zn;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;I)V

    .line 734
    invoke-static {}, Lo/aeB;->c()Z

    move-result p1

    iput-boolean p1, p0, Lo/VoicemailContract$2;->m:Z

    .line 736
    iget-object p1, p0, Lo/VoicemailContract$2;->d:Ljava/util/List;

    invoke-static {p1}, Lo/adt;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/VoicemailContract$2;->v:Ljava/util/List;

    .line 737
    iget-object p1, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    invoke-virtual {p1}, Lo/VoicemailContract;->a()Z

    move-result p1

    iput-boolean p1, p0, Lo/VoicemailContract$2;->y:Z

    .line 738
    iget-object p1, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    invoke-virtual {p1}, Lo/VoicemailContract;->o()Z

    move-result p1

    iput-boolean p1, p0, Lo/VoicemailContract$2;->x:Z

    .line 739
    iget-object p1, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    invoke-virtual {p1}, Lo/VoicemailContract;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/VoicemailContract$2;->w:Ljava/util/List;

    const-wide/16 p1, -0x1

    .line 740
    iput-wide p1, p0, Lo/VoicemailContract$2;->u:J

    .line 741
    iget-object p1, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    .line 742
    invoke-virtual {p1}, Lo/VoicemailContract;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/VoicemailContract$2;->z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 754
    iget-object v0, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    invoke-virtual {v0}, Lo/VoicemailContract;->c()Lcom/android/volley/Request$Priority;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    invoke-virtual {v0}, Lo/VoicemailContract;->c()Lcom/android/volley/Request$Priority;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lo/zn;->D()Lcom/android/volley/Request$Priority;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected J()Z
    .locals 1

    .line 749
    iget-object v0, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    invoke-virtual {v0}, Lo/VoicemailContract;->g()Z

    move-result v0

    return v0
.end method

.method protected K()Z
    .locals 1

    .line 826
    iget-boolean v0, p0, Lo/VoicemailContract$2;->x:Z

    return v0
.end method

.method protected M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 764
    invoke-virtual {p0}, Lo/VoicemailContract$2;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/VoicemailContract$2;->v:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    .line 821
    iget-boolean v0, p0, Lo/VoicemailContract$2;->y:Z

    if-eqz v0, :cond_0

    const-string v0, "call"

    goto :goto_0

    :cond_0
    const-string v0, "get"

    :goto_0
    return-object v0
.end method

.method protected O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected P()Ljava/lang/String;
    .locals 4

    .line 831
    invoke-virtual {p0}, Lo/VoicemailContract$2;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 835
    :cond_0
    invoke-static {}, Lo/aeB;->c()Z

    .line 836
    iget-object v0, p0, Lo/VoicemailContract$2;->w:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 840
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    iget-object v1, p0, Lo/VoicemailContract$2;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/adt$Activity;

    const-string v3, "&"

    .line 842
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lo/adt$Activity;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lo/adt$Activity;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 845
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .line 884
    iget-object v0, p0, Lo/VoicemailContract$2;->z:Ljava/lang/String;

    return-object v0
.end method

.method protected S()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    .line 864
    invoke-static {}, Lo/aeB;->a()Z

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 877
    invoke-super {p0, p1}, Lo/zn;->b(Z)V

    .line 878
    iget-object v0, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    iget-object v1, p0, Lo/VoicemailContract$2;->d:Ljava/util/List;

    iget-object v2, p0, Lo/VoicemailContract$2;->b:Lo/CustomViolation;

    invoke-static {v0, p1, v1, v2}, Lo/VoicemailContract;->c(Lo/VoicemailContract;ZLjava/util/List;Lo/CustomViolation;)V

    return-void
.end method

.method protected synthetic d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 731
    invoke-virtual {p0, p1, p2}, Lo/VoicemailContract$2;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 731
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo/VoicemailContract$2;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .line 815
    iget-object p2, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    iget-wide v0, p0, Lo/VoicemailContract$2;->u:J

    iget-object v2, p0, Lo/VoicemailContract$2;->b:Lo/CustomViolation;

    invoke-static {p2, p1, v0, v1, v2}, Lo/VoicemailContract;->e(Lo/VoicemailContract;Ljava/lang/String;JLo/CustomViolation;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 870
    invoke-static {}, Lo/aeB;->a()Z

    .line 872
    iget-object v0, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    iget-object v1, v0, Lo/VoicemailContract;->b:Lo/ci;

    invoke-static {v0, v1, p1}, Lo/VoicemailContract;->d(Lo/VoicemailContract;Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 759
    iget-object v0, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    invoke-virtual {v0}, Lo/VoicemailContract;->i()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    invoke-virtual {v0}, Lo/VoicemailContract;->i()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->j:Lcom/netflix/mediaclient/net/NetworkRequestType;

    :goto_0
    return-object v0
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

    .line 795
    invoke-super {p0}, Lo/zn;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 797
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 799
    :cond_0
    sget-object v1, Lo/zn;->f:Ljava/lang/String;

    const-string v2, "X-Netflix.Request.Routing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v1, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    invoke-static {v1}, Lo/VoicemailContract;->d(Lo/VoicemailContract;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    iget-object v1, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    invoke-static {v1}, Lo/VoicemailContract;->d(Lo/VoicemailContract;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.Request.NqTracking"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :cond_1
    iget-object v1, p0, Lo/VoicemailContract$2;->e:Lo/VoicemailContract;

    invoke-virtual {v1, v0}, Lo/VoicemailContract;->a(Ljava/util/Map;)V

    .line 805
    sget-object v1, Lo/zs;->b:Lo/zs;

    .line 807
    invoke-virtual {v1}, Lo/zs;->d()Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Netflix.Request.Client.Context"

    .line 805
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

    .line 769
    invoke-virtual {p0}, Lo/VoicemailContract$2;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 773
    :cond_0
    new-instance v0, Lo/adY;

    invoke-direct {v0}, Lo/adY;-><init>()V

    .line 774
    iget-object v1, p0, Lo/VoicemailContract$2;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 778
    invoke-virtual {p0}, Lo/VoicemailContract$2;->V()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 781
    :cond_1
    invoke-static {v0}, Lo/VoicemailContract;->b(Ljava/util/Map;)V

    .line 783
    iget-object v1, p0, Lo/VoicemailContract$2;->w:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 784
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/adt$Activity;

    .line 785
    iget-object v3, v2, Lo/adt$Activity;->first:Ljava/lang/Object;

    iget-object v2, v2, Lo/adt$Activity;->second:Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method
