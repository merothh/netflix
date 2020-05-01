.class public Lo/DA;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lo/Am;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/util/List<",
            "+",
            "Lo/Av;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lo/DA;->b(Lo/Am;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-static {}, Lo/eG;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lo/DA;->a(Lo/Am;Ljava/util/List;I)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "DPPrefetchHelper"

    const-string p1, "Not executing prefetchFromLolomoList"

    .line 52
    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Lo/Am;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/util/List<",
            "+",
            "Lo/Av;",
            ">;I)V"
        }
    .end annotation

    .line 107
    invoke-static {p0, p1}, Lo/DA;->b(Lo/Am;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lo/Am;->w()Lo/zG;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lo/DA$4;

    invoke-direct {p2}, Lo/DA$4;-><init>()V

    invoke-interface {p0, p1, p2}, Lo/zG;->b(Ljava/util/List;Lo/zU;)Z

    return-void
.end method

.method private static b(Lo/Am;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/util/List<",
            "+",
            "Lo/Av;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "DPPrefetchHelper"

    if-eqz p1, :cond_3

    .line 114
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_2

    .line 119
    invoke-virtual {p0}, Lo/Am;->c()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "isInputValid: manager not ready or not in AB test"

    .line 120
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :goto_1
    const-string p0, "isInputValid: videos list is empty"

    .line 115
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static c(Lo/Am;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/util/List<",
            "+",
            "Lo/Av;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-static {p0, p1}, Lo/DA;->b(Lo/Am;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-static {}, Lo/eG;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lo/DA;->a(Lo/Am;Ljava/util/List;I)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "DPPrefetchHelper"

    const-string p1, "Not executing prefetchFromLolomoList"

    .line 100
    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 133
    instance-of v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    if-eqz v0, :cond_0

    .line 134
    check-cast p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->m()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 136
    :goto_0
    const-class v0, Lo/kg;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/kg;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->e:Lcom/netflix/mediaclient/service/logging/perf/Events;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v2, "isFromCache"

    invoke-static {v2, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lo/kg;->b(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    return-void
.end method

.method public static d(Lo/Am;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/util/List<",
            "+",
            "Lo/Av;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-static {p0, p1}, Lo/DA;->b(Lo/Am;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/eo;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lo/DA;->a(Lo/Am;Ljava/util/List;I)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "DPPrefetchHelper"

    const-string p1, "Not executing prefetchFromLolomoList"

    .line 86
    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Lo/Am;Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/util/List<",
            "+",
            "Lo/Av;",
            ">;",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 67
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->s()Lio/reactivex/Observable;

    move-result-object v0

    .line 68
    invoke-static {p2}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->d(Lo/UnicodeScript;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object p2

    invoke-static {p2}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lo/DA$1;

    invoke-direct {v0, p0, p1}, Lo/DA$1;-><init>(Lo/Am;Ljava/util/List;)V

    .line 69
    invoke-interface {p2, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->b(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
