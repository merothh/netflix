.class public abstract Lo/TimeZoneRulesDataContract;
.super Lo/Session;
.source ""


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final h:Lo/MetadataReader;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;ZLo/ci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/FontRequest<",
            "*>;",
            "Lo/SearchIndexablesContract;",
            "Lo/MetadataReader;",
            "Ljava/lang/String;",
            "Z",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3, p7}, Lo/Session;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/ci;)V

    .line 46
    iput-object p5, p0, Lo/TimeZoneRulesDataContract;->d:Ljava/lang/String;

    .line 47
    iput-boolean p6, p0, Lo/TimeZoneRulesDataContract;->e:Z

    .line 48
    iput-object p4, p0, Lo/TimeZoneRulesDataContract;->h:Lo/MetadataReader;

    return-void
.end method

.method private final v()V
    .locals 3

    .line 97
    iget-object v0, p0, Lo/TimeZoneRulesDataContract;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/TimeZoneRulesDataContract;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Lo/TimeZoneRulesDataContract;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "BaseFetchDetailsTask"

    const-string v2, "Prefetch DP request in-flight for %s completed"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    iget-object v0, p0, Lo/TimeZoneRulesDataContract;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/hV;->b(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lo/TimeZoneRulesDataContract;->h:Lo/MetadataReader;

    invoke-virtual {v0}, Lo/MetadataReader;->c()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lo/Session;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-boolean p1, p0, Lo/TimeZoneRulesDataContract;->e:Z

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lo/TimeZoneRulesDataContract;->d:Ljava/lang/String;

    invoke-static {p1}, Lo/hV;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lo/TimeZoneRulesDataContract;->v()V

    return-void
.end method

.method protected c()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 54
    iget-boolean v0, p0, Lo/TimeZoneRulesDataContract;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lo/Session;->c()Lcom/android/volley/Request$Priority;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lo/Session;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-super {p0}, Lo/Session;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lo/TimeZoneRulesDataContract;->v()V

    return-void
.end method

.method protected e()V
    .locals 3

    .line 60
    invoke-super {p0}, Lo/Session;->e()V

    .line 62
    iget-object v0, p0, Lo/TimeZoneRulesDataContract;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/TimeZoneRulesDataContract;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lo/TimeZoneRulesDataContract;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "BaseFetchDetailsTask"

    const-string v2, "Prefetch DP request in-flight for %s "

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    iget-object v0, p0, Lo/TimeZoneRulesDataContract;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/hV;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected i()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-static {}, Lo/hV;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
