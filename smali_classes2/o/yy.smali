.class Lo/yy;
.super Lo/nm;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/nm<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;",
        ">;"
    }
.end annotation


# instance fields
.field private final A:Z

.field private final b:Lo/yq;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/yq;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lo/nm;-><init>()V

    .line 35
    iget-object v0, p0, Lo/yy;->h:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->a:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/yy;->A:Z

    .line 39
    iput-object p1, p0, Lo/yy;->b:Lo/yq;

    const-string p1, "[\"profilesList\", \"summary\"]"

    .line 41
    iput-object p1, p0, Lo/yy;->e:Ljava/lang/String;

    const-string p1, "[\"profilesList\", {\"to\":4}, [\"summary\", \"subtitlePreference\"]]"

    .line 42
    iput-object p1, p0, Lo/yy;->d:Ljava/lang/String;

    const-string p1, "[\"profilesListV2\"]"

    .line 44
    iput-object p1, p0, Lo/yy;->v:Ljava/lang/String;

    const-string p1, "[\"user\", [\"summary\", \"subtitleDefaults\", \"umaEog\", \"uma\", \"thumbMessaging\"]]"

    .line 45
    iput-object p1, p0, Lo/yy;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected U()Ljava/lang/String;
    .locals 1

    const-string v0, "FetchAccountDataMSLRequest"

    return-object v0
.end method

.method protected a(Lo/agE;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lo/nm;->c(Lo/agE;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    return-object p1
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lo/yy;->b:Lo/yq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 91
    invoke-interface {v0, v1, p1}, Lo/yq;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-static {p1, v0}, Lo/yR;->a(Ljava/lang/String;Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic c(Lo/agE;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/yy;->a(Lo/agE;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    invoke-virtual {p0, p1}, Lo/yy;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lo/yy;->b:Lo/yq;

    if-eqz v0, :cond_0

    .line 98
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/yq;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/yy;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    move-result-object p1

    return-object p1
.end method

.method protected u_()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Lo/yy;->A:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lo/yy;->v:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lo/yy;->w:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 62
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v4, p0, Lo/yy;->e:Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v3, p0, Lo/yy;->d:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lo/yy;->w:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 63
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
