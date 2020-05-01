.class public final Lo/ii;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/ir;

.field private final b:Lo/ig;

.field private final d:Lo/il;

.field private final e:Lo/ie;


# direct methods
.method public constructor <init>(Lio/reactivex/subjects/PublishSubject;Landroid/content/Context;Lo/cz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;",
            "Landroid/content/Context;",
            "Lo/cz;",
            ")V"
        }
    .end annotation

    const-string v0, "subject"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationAgent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lo/ig;

    invoke-direct {v0, p1, p3}, Lo/ig;-><init>(Lio/reactivex/subjects/PublishSubject;Lo/cz;)V

    iput-object v0, p0, Lo/ii;->b:Lo/ig;

    .line 25
    new-instance v0, Lo/ie;

    invoke-direct {v0, p1, p2, p3}, Lo/ie;-><init>(Lio/reactivex/subjects/PublishSubject;Landroid/content/Context;Lo/cz;)V

    iput-object v0, p0, Lo/ii;->e:Lo/ie;

    .line 26
    new-instance v0, Lo/il;

    invoke-direct {v0, p1, p3}, Lo/il;-><init>(Lio/reactivex/subjects/PublishSubject;Lo/cz;)V

    iput-object v0, p0, Lo/ii;->d:Lo/il;

    .line 27
    new-instance p3, Lo/ir;

    invoke-direct {p3, p1, p2}, Lo/ir;-><init>(Lio/reactivex/subjects/PublishSubject;Landroid/content/Context;)V

    iput-object p3, p0, Lo/ii;->a:Lo/ir;

    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "BaseNetflixApp.getInstance()"

    .line 30
    iget-object v2, v0, Lo/ii;->e:Lo/ie;

    invoke-virtual {v2}, Lo/ie;->e()V

    .line 31
    iget-object v2, v0, Lo/ii;->b:Lo/ig;

    invoke-virtual {v2}, Lo/ig;->e()V

    .line 32
    iget-object v2, v0, Lo/ii;->d:Lo/il;

    invoke-virtual {v2}, Lo/il;->a()V

    .line 33
    iget-object v2, v0, Lo/ii;->a:Lo/ir;

    invoke-virtual {v2}, Lo/ir;->e()V

    .line 34
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "voipNeeded"

    .line 36
    iget-object v4, v0, Lo/ii;->e:Lo/ie;

    invoke-virtual {v4}, Lo/ie;->b()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "av1Needed"

    .line 37
    iget-object v4, v0, Lo/ii;->b:Lo/ig;

    invoke-virtual {v4}, Lo/ig;->b()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "inAppWvNeeded"

    .line 38
    iget-object v4, v0, Lo/ii;->d:Lo/il;

    invoke-virtual {v4}, Lo/il;->b()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "partnerModuleNeed"

    .line 39
    iget-object v4, v0, Lo/ii;->a:Lo/ir;

    invoke-virtual {v4}, Lo/ir;->b()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "voipInstalled"

    .line 41
    iget-object v4, v0, Lo/ii;->e:Lo/ie;

    invoke-virtual {v4}, Lo/ie;->c()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "av1Installed"

    .line 42
    iget-object v4, v0, Lo/ii;->b:Lo/ig;

    invoke-virtual {v4}, Lo/ig;->c()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "inAppWvInstalled"

    .line 43
    iget-object v4, v0, Lo/ii;->d:Lo/il;

    invoke-virtual {v4}, Lo/il;->c()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "partnerModuleInstalled"

    .line 44
    iget-object v4, v0, Lo/ii;->a:Lo/ir;

    invoke-virtual {v4}, Lo/ir;->c()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    const-class v3, Lo/bY;

    invoke-static {v3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/bY;

    .line 48
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v4

    invoke-static {v4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v4

    invoke-virtual {v4}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v4

    .line 47
    invoke-static {v4}, Lo/ij;->e(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "LanguageModuleInstallUti\u2026fAgentProvider.userAgent)"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {v3}, Lo/bY;->e()Ljava/util/Set;

    move-result-object v5

    const-string v6, "moduleInstaller.installedLanguages"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {v4, v5}, Lo/ij;->b(Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v6

    const-string v7, "LanguageModuleInstallUti\u2026ales, installedLanguages)"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "languages"

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 52
    :try_start_1
    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_0
    const/4 v7, 0x0

    .line 54
    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "langNeeded"

    .line 55
    check-cast v4, Ljava/lang/Iterable;

    .line 71
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 72
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "it"

    if-eqz v10, :cond_1

    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 73
    check-cast v10, Ljava/util/Locale;

    .line 55
    invoke-static {v10, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_1
    check-cast v8, Ljava/util/List;

    move-object v12, v8

    check-cast v12, Ljava/lang/Iterable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3f

    const/16 v20, 0x0

    .line 55
    invoke-static/range {v12 .. v20}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "langInstalled"

    .line 56
    move-object v12, v5

    check-cast v12, Ljava/lang/Iterable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3f

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "langMissing"

    .line 57
    move-object v5, v6

    check-cast v5, Ljava/lang/Iterable;

    .line 75
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5, v9}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 76
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 77
    check-cast v8, Ljava/util/Locale;

    .line 57
    invoke-static {v8, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_2
    check-cast v7, Ljava/util/List;

    move-object v8, v7

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3f

    const/16 v16, 0x0

    .line 57
    invoke-static/range {v8 .. v16}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v4

    invoke-static {v4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object v1

    const-string v4, "BaseNetflixApp.getInstance().userInputTracker"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/Plugin;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    invoke-interface {v3, v6}, Lo/bY;->c(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_3
    :goto_2
    return-object v2
.end method
