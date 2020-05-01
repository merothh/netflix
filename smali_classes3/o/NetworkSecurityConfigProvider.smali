.class public final Lo/NetworkSecurityConfigProvider;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private final d:Lo/TextInputTimePickerView;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private final h:I


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            "II",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "netflixModelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawQuery"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskMode"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchSearchLolomoResults"

    .line 27
    invoke-direct {p0, v0, p1, p6}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    iput-object p3, p0, Lo/NetworkSecurityConfigProvider;->g:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    iput p4, p0, Lo/NetworkSecurityConfigProvider;->h:I

    iput p5, p0, Lo/NetworkSecurityConfigProvider;->f:I

    .line 29
    invoke-static {p2}, Lo/ia;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/NetworkSecurityConfigProvider;->e:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "searchLolomo"

    aput-object p3, p1, p2

    .line 32
    iget-object p2, p0, Lo/NetworkSecurityConfigProvider;->e:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "summary"

    aput-object p3, p1, p2

    .line 30
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "PQLHelper.create(\n      \u2026,\n        \"summary\"\n    )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/NetworkSecurityConfigProvider;->d:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method protected b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pqls"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lo/NetworkSecurityConfigProvider;->d:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "searchLolomo"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 41
    iget-object v4, p0, Lo/NetworkSecurityConfigProvider;->e:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 42
    iget v4, p0, Lo/NetworkSecurityConfigProvider;->h:I

    invoke-static {v4}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v1, v6

    const-string v4, "summary"

    const/4 v7, 0x3

    aput-object v4, v1, v7

    .line 39
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    const-string v8, "PQLHelper.create(\n      \u2026  \"summary\"\n            )"

    invoke-static {v1, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 49
    iget-object v2, p0, Lo/NetworkSecurityConfigProvider;->e:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 50
    iget v2, p0, Lo/NetworkSecurityConfigProvider;->h:I

    invoke-static {v2}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    .line 51
    iget v2, p0, Lo/NetworkSecurityConfigProvider;->f:I

    invoke-static {v2}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v4, v1, v0

    .line 47
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-static {v0, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lo/NetworkSecurityConfigProvider;->a:Lo/FontRequest;

    iget-object v1, p0, Lo/NetworkSecurityConfigProvider;->d:Lo/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    .line 67
    check-cast v0, Lo/AH;

    invoke-interface {p1, v0, p2}, Lo/ci;->c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lo/NetworkSecurityConfigProvider;->a:Lo/FontRequest;

    iget-object v0, p0, Lo/NetworkSecurityConfigProvider;->d:Lo/TextInputTimePickerView;

    invoke-virtual {p2, v0}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p2

    instance-of v0, p2, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    .line 60
    check-cast p2, Lo/AH;

    .line 61
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/NetworkSecurityConfigProvider;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/NetworkSecurityConfigProvider;->n()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 59
    invoke-interface {p1, p2, v0}, Lo/ci;->c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected k()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lo/NetworkSecurityConfigProvider;->g:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected m()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lo/NetworkSecurityConfigProvider;->g:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
