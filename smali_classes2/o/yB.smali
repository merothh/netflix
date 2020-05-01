.class Lo/yB;
.super Lo/hO;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hO<",
        "Lcom/netflix/model/survey/Survey;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lo/yq;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;)V
    .locals 1

    const-string v0, "FetchSurveyRequest"

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lo/hO;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;)V

    .line 33
    iput-object p3, p0, Lo/yB;->d:Lo/yq;

    return-void
.end method


# virtual methods
.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/netflix/model/survey/Survey;

    invoke-virtual {p0, p1}, Lo/yB;->e(Lcom/netflix/model/survey/Survey;)V

    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/model/survey/Survey;
    .locals 1

    const-string p2, "FetchSurveyRequest"

    .line 52
    invoke-static {p2, p1}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "survey_get"

    .line 54
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    const-class v0, Lcom/netflix/model/survey/Survey;

    invoke-static {p1, p2, v0}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/survey/Survey;

    return-object p1

    .line 55
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netflix/model/survey/Survey;->a()Lcom/netflix/model/survey/Survey;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lo/yB;->d:Lo/yq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 64
    invoke-interface {v0, v1, p1}, Lo/yq;->e(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected synthetic e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/yB;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/model/survey/Survey;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netflix/model/survey/Survey;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lo/yB;->d:Lo/yq;

    if-eqz v0, :cond_0

    .line 71
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/yq;->e(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "[\"survey_get\"]"

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
