.class public abstract Lo/VoicemailContract;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final d:Lo/DiskWriteViolation;

.field private static e:Z

.field private static final l:Lo/PreferenceFrameLayout;


# instance fields
.field public final a:Lo/FontRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FontRequest<",
            "*>;"
        }
    .end annotation
.end field

.field protected final b:Lo/ci;

.field protected final c:J

.field private f:Lo/CustomViolation;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/TextClock;

.field private i:Z

.field private j:Z

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    new-instance v0, Lo/DiskReadViolation;

    const-string v1, "jsonGraph"

    invoke-direct {v0, v1}, Lo/DiskReadViolation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/VoicemailContract;->d:Lo/DiskWriteViolation;

    .line 101
    sget-boolean v0, Lo/BrowserContract;->c:Z

    sput-boolean v0, Lo/VoicemailContract;->e:Z

    const/4 v0, 0x1

    .line 425
    invoke-static {v0}, Lo/PreferenceInflater;->e(Z)Lo/PreferenceFrameLayout;

    move-result-object v0

    sput-object v0, Lo/VoicemailContract;->l:Lo/PreferenceFrameLayout;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/FontRequest<",
            "*>;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 119
    iput-wide v0, p0, Lo/VoicemailContract;->c:J

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lo/VoicemailContract;->i:Z

    .line 138
    iput-object p1, p0, Lo/VoicemailContract;->o:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lo/VoicemailContract;->a:Lo/FontRequest;

    .line 140
    iput-object p3, p0, Lo/VoicemailContract;->b:Lo/ci;

    return-void
.end method

.method private a(Ljava/lang/String;JLo/CustomViolation;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 443
    invoke-virtual {p4}, Lo/CustomViolation;->e()V

    .line 446
    :cond_0
    invoke-static {}, Lo/aeB;->c()Z

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 p2, 0x0

    .line 468
    invoke-direct {p0, p1, p2, p4}, Lo/VoicemailContract;->a(Ljava/lang/String;ZLo/CustomViolation;)V

    .line 483
    invoke-direct {p0}, Lo/VoicemailContract;->u()V

    return-void
.end method

.method private a(Ljava/lang/String;ZLo/CustomViolation;)V
    .locals 5

    if-eqz p3, :cond_0

    .line 494
    :try_start_0
    invoke-virtual {p3}, Lo/CustomViolation;->b()V

    .line 496
    :cond_0
    sget-object v0, Lo/VoicemailContract;->l:Lo/PreferenceFrameLayout;

    invoke-interface {v0, p1}, Lo/PreferenceFrameLayout;->d(Ljava/lang/String;)Lo/RecommendationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lo/RecommendationInfo;->n()Lo/PrintJob;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 498
    invoke-virtual {p3}, Lo/CustomViolation;->j()V

    :cond_1
    if-eqz p2, :cond_2

    .line 502
    iget-object p2, p0, Lo/VoicemailContract;->a:Lo/FontRequest;

    invoke-virtual {p2}, Lo/FontRequest;->a()Lcom/google/gson/JsonParser;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    .line 503
    sget-object v1, Lo/MultiSelectListPreference;->b:Lo/MultiSelectListPreference;

    invoke-virtual {v1, v0}, Lo/MultiSelectListPreference;->d(Lo/PrintJob;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 505
    invoke-static {v1, p2}, Lo/SeekBarDialogPreference;->d(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lo/PreferenceGroupAdapter;

    move-result-object p2

    .line 506
    invoke-virtual {p2}, Lo/PreferenceGroupAdapter;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CmpTask"

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Falcor and Falkor jsons are not the same. PQLs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    invoke-static {v4}, Lo/FileUriExposedViolation;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \n diff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 514
    :cond_3
    :goto_0
    invoke-static {v0}, Lo/VoicemailContract;->c(Lo/RecommendationInfo;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v1, :cond_4

    .line 516
    sget-object p1, Lo/MultiSelectListPreference;->b:Lo/MultiSelectListPreference;

    invoke-virtual {p1, v0}, Lo/MultiSelectListPreference;->d(Lo/PrintJob;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 523
    :cond_4
    invoke-virtual {p0, v1}, Lo/VoicemailContract;->b(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;

    move-result-object p1

    throw p1

    .line 524
    :cond_5
    invoke-virtual {p0}, Lo/VoicemailContract;->t()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 525
    sget-object p1, Lo/VoicemailContract;->d:Lo/DiskWriteViolation;

    invoke-virtual {v0, p1}, Lo/PrintJob;->a(Lo/DiskWriteViolation;)Lo/RecommendationInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 527
    invoke-virtual {p0, p1}, Lo/VoicemailContract;->d(Lo/RecommendationInfo;)V

    goto :goto_1

    .line 530
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 531
    invoke-static {p1, p2}, Lo/BrowserContract;->c(J)V

    .line 532
    invoke-direct {p0, v0, p1, p2, p3}, Lo/VoicemailContract;->c(Lo/PrintJob;JLo/CustomViolation;)V

    :cond_7
    :goto_1
    return-void

    :catch_0
    move-exception p2

    .line 511
    new-instance p3, Lcom/netflix/falkor/FalkorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error when parsing response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private a(ZLjava/util/List;Lo/CustomViolation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/CustomViolation;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 540
    invoke-virtual {p0}, Lo/VoicemailContract;->e()V

    if-eqz p3, :cond_1

    .line 542
    invoke-static {p2}, Lo/SearchIndexableResource;->e(Ljava/util/Collection;)I

    move-result p1

    .line 543
    invoke-virtual {p3, p1}, Lo/CustomViolation;->e(I)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {p0}, Lo/VoicemailContract;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Lo/ci;Ljava/lang/String;)Lo/ci;
    .locals 2

    if-nez p1, :cond_0

    .line 1018
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPY-12760 : callback should not be null ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Lo/cq;->d()Lo/cq;

    move-result-object p1

    return-object p1

    .line 1021
    :cond_0
    new-instance p2, Lo/co;

    iget-object v0, p0, Lo/VoicemailContract;->a:Lo/FontRequest;

    invoke-virtual {v0}, Lo/FontRequest;->j()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lo/co;-><init>(Landroid/os/Handler;Lo/ci;)V

    return-object p2
.end method

.method static synthetic b(Ljava/util/Map;)V
    .locals 0

    .line 86
    invoke-static {p0}, Lo/VoicemailContract;->c(Ljava/util/Map;)V

    return-void
.end method

.method private c(Ljava/util/List;Lo/CustomViolation;)Lo/ng;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/CustomViolation;",
            ")",
            "Lo/ng;"
        }
    .end annotation

    .line 576
    new-instance v0, Lo/VoicemailContract$1;

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->a:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    invoke-direct {v0, p0, v1, p1, p2}, Lo/VoicemailContract$1;-><init>(Lo/VoicemailContract;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;Ljava/util/List;Lo/CustomViolation;)V

    return-object v0
.end method

.method private static c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "falcor_server"

    const-string v1, "0.1.0"

    .line 552
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Lo/PrintJob;JLo/CustomViolation;)V
    .locals 2

    .line 999
    sget-object v0, Lo/VoicemailContract;->d:Lo/DiskWriteViolation;

    invoke-virtual {p1, v0}, Lo/PrintJob;->a(Lo/DiskWriteViolation;)Lo/RecommendationInfo;

    move-result-object v0

    .line 1000
    instance-of v1, v0, Lo/PrintJob;

    if-eqz v1, :cond_1

    if-eqz p4, :cond_0

    .line 1002
    invoke-virtual {p4}, Lo/CustomViolation;->i()V

    .line 1004
    :cond_0
    iget-object p1, p0, Lo/VoicemailContract;->a:Lo/FontRequest;

    invoke-virtual {v0}, Lo/RecommendationInfo;->n()Lo/PrintJob;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lo/FontRequest;->b(Lo/PrintJob;J)V

    if-eqz p4, :cond_2

    .line 1006
    invoke-virtual {p4}, Lo/CustomViolation;->f()V

    goto :goto_0

    .line 1009
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "jsongraphobject value is not object: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic c(Lo/VoicemailContract;ZLjava/util/List;Lo/CustomViolation;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lo/VoicemailContract;->a(ZLjava/util/List;Lo/CustomViolation;)V

    return-void
.end method

.method private c(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 938
    iget-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    if-eqz v0, :cond_1

    .line 939
    sget-object v0, Lo/LegacyErrorStrings;->m:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne p2, v0, :cond_0

    .line 940
    iget-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    invoke-virtual {v0}, Lo/CustomViolation;->k()Lo/CustomViolation;

    .line 942
    :cond_0
    iget-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    invoke-virtual {v0, p2}, Lo/CustomViolation;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 945
    :cond_1
    invoke-virtual {p0, p1, p2}, Lo/VoicemailContract;->b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 947
    iget-object p1, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    if-eqz p1, :cond_2

    .line 948
    invoke-virtual {p1}, Lo/CustomViolation;->l()V

    .line 949
    iget-object p1, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    invoke-virtual {p1}, Lo/CustomViolation;->n()Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;

    move-result-object p1

    .line 950
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    :cond_2
    return-void
.end method

.method private static c(Lo/RecommendationInfo;)Z
    .locals 1

    .line 430
    instance-of v0, p0, Lo/PrintJob;

    if-eqz v0, :cond_0

    .line 431
    check-cast p0, Lo/PrintJob;

    const-string v0, "errors"

    .line 432
    invoke-virtual {p0, v0}, Lo/PrintJob;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private d(Ljava/util/List;Lo/CustomViolation;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/CustomViolation;",
            ")",
            "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lo/VoicemailContract;->a:Lo/FontRequest;

    invoke-virtual {v0}, Lo/FontRequest;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0, p1, p2}, Lo/VoicemailContract;->c(Ljava/util/List;Lo/CustomViolation;)Lo/ng;

    move-result-object p1

    return-object p1

    .line 421
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/VoicemailContract;->e(Ljava/util/List;Lo/CustomViolation;)Lo/zn;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lo/VoicemailContract;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/VoicemailContract;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lo/VoicemailContract;Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lo/VoicemailContract;->c(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private e(Ljava/util/List;Lo/CustomViolation;)Lo/zn;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;",
            "Lo/CustomViolation;",
            ")",
            "Lo/zn;"
        }
    .end annotation

    .line 730
    new-instance v7, Lo/VoicemailContract$2;

    .line 731
    invoke-virtual {p0}, Lo/VoicemailContract;->s()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->a:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lo/VoicemailContract$2;-><init>(Lo/VoicemailContract;Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;ILjava/util/List;Lo/CustomViolation;)V

    return-object v7
.end method

.method static synthetic e(Lo/VoicemailContract;Ljava/lang/String;JLo/CustomViolation;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lo/VoicemailContract;->a(Ljava/lang/String;JLo/CustomViolation;)V

    return-void
.end method

.method private p()V
    .locals 3

    .line 182
    iget-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lo/CustomViolation;->a()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lo/VoicemailContract;->j()V

    .line 188
    iget-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Lo/CustomViolation;->d()V

    .line 192
    :cond_1
    iget-object v0, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    iget-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {v0}, Lo/CustomViolation;->c()V

    .line 198
    :cond_2
    iget-object v0, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    invoke-virtual {p0, v0}, Lo/VoicemailContract;->b(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    invoke-static {v0}, Lo/SearchIndexableResource;->e(Ljava/util/Collection;)I

    move-result v0

    .line 202
    iget-object v1, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    invoke-virtual {v1, v0}, Lo/CustomViolation;->d(I)V

    .line 210
    :cond_3
    iget-boolean v0, p0, Lo/VoicemailContract;->i:Z

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lo/VoicemailContract;->b:Lo/ci;

    invoke-virtual {p0}, Lo/VoicemailContract;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/VoicemailContract;->b(Lo/ci;Ljava/lang/String;)Lo/ci;

    move-result-object v0

    sget-object v1, Lo/LegacyErrorStrings;->m:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p0, v0, v1}, Lo/VoicemailContract;->c(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 215
    :cond_4
    invoke-virtual {p0}, Lo/VoicemailContract;->k()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lo/VoicemailContract;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lo/VoicemailContract;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    if-eqz v1, :cond_6

    .line 234
    iget-object v0, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    invoke-static {v0}, Lo/SearchIndexableResource;->e(Ljava/util/Collection;)I

    move-result v0

    .line 235
    new-instance v1, Lo/Contacts;

    invoke-direct {v1}, Lo/Contacts;-><init>()V

    .line 236
    iget-object v2, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    invoke-virtual {v2, v0}, Lo/CustomViolation;->c(I)V

    move-object v0, v1

    .line 239
    :cond_6
    iget-object v1, p0, Lo/VoicemailContract;->a:Lo/FontRequest;

    iget-object v2, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lo/FontRequest;->b(Ljava/util/Collection;Lo/Contacts;)Lo/TextClock;

    move-result-object v1

    iput-object v1, p0, Lo/VoicemailContract;->h:Lo/TextClock;

    .line 241
    iget-object v1, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    if-eqz v1, :cond_7

    .line 242
    invoke-virtual {v1, v0}, Lo/CustomViolation;->e(Lo/Contacts;)V

    .line 253
    :cond_7
    iget-object v0, p0, Lo/VoicemailContract;->h:Lo/TextClock;

    invoke-virtual {v0}, Lo/TextClock;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lo/VoicemailContract;->m()Z

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lo/VoicemailContract;->e:Z

    if-nez v0, :cond_a

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    iget-object v1, p0, Lo/VoicemailContract;->h:Lo/TextClock;

    invoke-virtual {v1}, Lo/TextClock;->d()Z

    move-result v1

    if-nez v1, :cond_8

    .line 257
    iget-object v1, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 260
    :cond_8
    iget-object v1, p0, Lo/VoicemailContract;->h:Lo/TextClock;

    iget-object v1, v1, Lo/TextClock;->e:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-virtual {p0, v0}, Lo/VoicemailContract;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 265
    invoke-static {v0}, Lo/SearchIndexableResource;->d(Ljava/util/List;)V

    .line 277
    :cond_9
    :goto_0
    iget-object v1, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    invoke-direct {p0, v0, v1}, Lo/VoicemailContract;->d(Ljava/util/List;Lo/CustomViolation;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    goto :goto_1

    :cond_a
    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lo/VoicemailContract;->j:Z

    .line 284
    invoke-direct {p0}, Lo/VoicemailContract;->u()V

    :goto_1
    return-void

    .line 219
    :cond_b
    :goto_2
    iget-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    if-eqz v0, :cond_c

    .line 220
    invoke-virtual {v0}, Lo/CustomViolation;->m()Lo/CustomViolation;

    .line 222
    :cond_c
    new-instance v0, Lo/TextClock;

    iget-object v1, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Lo/TextClock;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lo/VoicemailContract;->h:Lo/TextClock;

    .line 223
    iget-object v0, p0, Lo/VoicemailContract;->h:Lo/TextClock;

    iget-object v0, v0, Lo/TextClock;->e:Ljava/util/Set;

    iget-object v1, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 224
    iget-object v0, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    iget-object v1, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    invoke-direct {p0, v0, v1}, Lo/VoicemailContract;->d(Ljava/util/List;Lo/CustomViolation;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method private u()V
    .locals 3

    .line 893
    iget-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0}, Lo/CustomViolation;->h()V

    .line 897
    :cond_0
    invoke-static {}, Lo/aeB;->c()Z

    .line 899
    iget-object v0, p0, Lo/VoicemailContract;->b:Lo/ci;

    invoke-virtual {p0}, Lo/VoicemailContract;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/VoicemailContract;->b(Lo/ci;Ljava/lang/String;)Lo/ci;

    move-result-object v0

    .line 900
    iget-object v1, p0, Lo/VoicemailContract;->h:Lo/TextClock;

    if-nez v1, :cond_1

    const-string v1, "CmpTask"

    const-string v2, "GetResult is null - shouldn\'t happen - forcing failure"

    .line 901
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    sget-object v1, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p0, v0, v1}, Lo/VoicemailContract;->c(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 903
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "CmpTask handleSuccess: GetResult is null - forcing failure"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 912
    :cond_1
    invoke-virtual {p0, v0, v1}, Lo/VoicemailContract;->d(Lo/ci;Lo/TextClock;)V

    .line 915
    iget-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    if-eqz v0, :cond_2

    .line 916
    invoke-virtual {v0}, Lo/CustomViolation;->g()V

    .line 917
    iget-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    invoke-virtual {v0}, Lo/CustomViolation;->n()Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;

    move-result-object v0

    .line 918
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)Z"
        }
    .end annotation

    .line 318
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected b(Lcom/google/gson/JsonObject;)Lcom/android/volley/VolleyError;
    .locals 3

    .line 968
    new-instance v0, Lcom/netflix/falkor/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error found in json response for task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/VoicemailContract;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CmpTask"

    .line 972
    invoke-static {p1, v2}, Lo/Downloads;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method protected c()Lcom/android/volley/Request$Priority;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 1

    .line 305
    sget-object v0, Lo/bL;->e:Lo/bL;

    invoke-virtual {v0, p1}, Lo/bL;->e(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 173
    iget-object v0, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TextInputTimePickerView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/VoicemailContract;->g:Ljava/util/List;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/RecommendationInfo;)V
    .locals 0

    return-void
.end method

.method protected abstract d(Lo/ci;Lo/TextClock;)V
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected f()V
    .locals 1

    const/4 v0, 0x1

    .line 301
    iput-boolean v0, p0, Lo/VoicemailContract;->i:Z

    return-void
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected n()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lo/VoicemailContract;->j:Z

    return v0
.end method

.method protected o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final q()V
    .locals 2

    .line 1032
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.DETAIL_PAGE_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0}, Lo/VoicemailContract;->s()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    const-string v0, "CmpTask"

    const-string v1, "Intent DETAIL_PAGE_REFRESH sent"

    .line 1034
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected r()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 3

    .line 145
    invoke-static {}, Lo/aeB;->c()Z

    .line 152
    :try_start_0
    sget-object v0, Lo/gk;->b:Lo/gk$Activity;

    .line 154
    invoke-virtual {v0}, Lo/gk$Activity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lo/CustomViolation;

    iget-object v1, p0, Lo/VoicemailContract;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Lo/CustomViolation;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/VoicemailContract;->f:Lo/CustomViolation;

    .line 157
    invoke-direct {p0}, Lo/VoicemailContract;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "CmpTask"

    .line 159
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 160
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->bO:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    const/4 v2, 0x0

    .line 161
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Z)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lo/VoicemailContract;->b:Lo/ci;

    invoke-virtual {p0}, Lo/VoicemailContract;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lo/VoicemailContract;->b(Lo/ci;Ljava/lang/String;)Lo/ci;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lo/VoicemailContract;->c(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_1
    return-void
.end method

.method protected final s()Landroid/content/Context;
    .locals 1

    .line 1027
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
