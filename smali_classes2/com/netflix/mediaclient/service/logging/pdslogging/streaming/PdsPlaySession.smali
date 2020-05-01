.class public Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/jT;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;
    }
.end annotation


# instance fields
.field private A:Lo/kb;

.field private final C:Ljava/lang/Runnable;

.field private a:Lorg/json/JSONObject;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private i:I

.field private j:Landroid/os/Handler;

.field private k:Lo/iS;

.field private l:Lo/zS;

.field private m:Lo/kc;

.field private n:Lo/ke;

.field private o:Z

.field private p:Z

.field private q:Lo/cz;

.field private r:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private s:Z

.field private t:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

.field private u:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

.field private w:Z

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lo/ka;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLorg/json/JSONObject;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lo/kb;ZLcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->d:Z

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->x:Ljava/util/List;

    .line 480
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$1;-><init>(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->C:Ljava/lang/Runnable;

    .line 126
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->b:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c:Ljava/lang/String;

    .line 128
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->g:J

    .line 129
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->u:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 130
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->u:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e:Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->u:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->f:Ljava/lang/String;

    .line 132
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->u:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->b()Lo/iS;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->k:Lo/iS;

    .line 133
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->u:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->l:Lo/zS;

    .line 134
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->a:Lorg/json/JSONObject;

    .line 135
    iput-object p7, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->j:Landroid/os/Handler;

    .line 136
    invoke-interface {p8}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->i:I

    .line 137
    iput-object p9, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->A:Lo/kb;

    .line 138
    sget-object p1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    .line 139
    new-instance p1, Lo/ke;

    invoke-direct {p1}, Lo/ke;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    .line 140
    iput-boolean p10, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->o:Z

    .line 141
    iput-object p11, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->t:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    .line 142
    iput-object p12, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->q:Lo/cz;

    .line 143
    iput-object p13, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->r:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 144
    new-instance p1, Lo/ka;

    const/16 p2, 0x7530

    invoke-direct {p1, p2}, Lo/ka;-><init>(I)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->y:Lo/ka;

    const-string p1, "nf_pds_streaming_session"

    const-string p2, "PdsStreamingPlaySession created"

    .line 145
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Lo/TimePickerSpinnerDelegate;)Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_pds_streaming_session"

    const-string v2, "getStreamType event: %s"

    .line 611
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 612
    invoke-interface {p1}, Lo/TimePickerSpinnerDelegate;->a()Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e(I)V

    return-void
.end method

.method private b(Lo/TimePickerSpinnerDelegate;)Ljava/lang/String;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    invoke-interface {p1}, Lo/TimePickerSpinnerDelegate;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/kc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 1

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 566
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private c(Lo/TimePickerSpinnerDelegate;)Ljava/lang/String;
    .locals 0

    .line 582
    invoke-interface {p1}, Lo/TimePickerSpinnerDelegate;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;JLcom/netflix/mediaclient/servicemgr/PlaybackExperience;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 336
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "nf_pds_streaming_session"

    const-string v4, "buildPdsEvent %s, bookmarkInMs(%d)"

    invoke-static {v2, v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 338
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->d:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "unexpected eventType, %s"

    .line 350
    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 340
    :pswitch_0
    invoke-static {}, Lo/aey;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->h:J

    .line 353
    :goto_0
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;JLcom/netflix/mediaclient/servicemgr/PlaybackExperience;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private c(JLjava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 284
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e()V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;J)V
    .locals 1

    .line 222
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(JLjava/lang/String;)V

    .line 223
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->i:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    if-ne v0, p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->t:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;JLcom/netflix/mediaclient/servicemgr/PlaybackExperience;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->t:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;JLcom/netflix/mediaclient/servicemgr/PlaybackExperience;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->a(Lorg/json/JSONObject;)V

    .line 230
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->t:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    instance-of p1, p1, Lo/zw;

    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->k:Lo/iS;

    invoke-interface {p1}, Lo/iS;->d()V

    :cond_1
    return-void
.end method

.method private c(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    const-string v0, "nf_pds_streaming_session"

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    invoke-virtual {v1, p2}, Lo/kc;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "insertMediaIdIntoMessage %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 440
    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "mediaId"

    .line 441
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "error while inserting mediaId"

    .line 444
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;JLcom/netflix/mediaclient/servicemgr/PlaybackExperience;)Lorg/json/JSONObject;
    .locals 8

    .line 358
    iget-object p4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c:Ljava/lang/String;

    invoke-static {p4}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p4

    const-string v0, "nf_pds_streaming_session"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "trying to send pdsEvent: %s when xid 0"

    .line 359
    invoke-static {v0, p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1

    .line 362
    :cond_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 363
    invoke-static {}, Lo/aey;->b()J

    move-result-wide v3

    .line 366
    :try_start_0
    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    invoke-virtual {v5}, Lo/kc;->d()Lo/sx;

    move-result-object v5

    const-string v6, "version"

    const/4 v7, 0x2

    .line 367
    invoke-virtual {p4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "url"

    .line 368
    invoke-virtual {v5}, Lo/sx;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "event"

    .line 371
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "xid"

    .line 372
    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "clientTime"

    .line 373
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "position"

    .line 374
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sessionStartTime"

    .line 377
    iget-wide v6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    sget-object p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    if-ne p1, p2, :cond_1

    const-string p2, "sessionEndTime"

    .line 379
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p2, "trackId"

    .line 382
    iget p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->i:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sessionId"

    .line 383
    iget-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->f:Ljava/lang/String;

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "appId"

    .line 384
    iget-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e:Ljava/lang/String;

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    sget-object p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    if-ne p1, p2, :cond_2

    .line 386
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v5, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_2
    iget-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {p2}, Lo/ke;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 388
    iget-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {p2}, Lo/ke;->e()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v5, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 391
    :cond_3
    :goto_0
    sget-object p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    if-eq p2, p1, :cond_5

    .line 392
    iget-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {p2}, Lo/ke;->d()Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_1

    :cond_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    const-string p3, "playTimes"

    .line 393
    invoke-virtual {v5, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    :cond_5
    sget-object p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->i:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    if-ne p2, p1, :cond_6

    const-string p2, "isBackgrounded"

    .line 396
    iget-boolean p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->s:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string p2, "sessionParams"

    .line 399
    iget-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "params"

    .line 401
    invoke-virtual {p4, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "playbackExperience"

    .line 402
    iget-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->t:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->c()Lo/Aq;

    move-result-object p3

    invoke-virtual {p3}, Lo/Aq;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "oxid"

    .line 404
    iget-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    invoke-virtual {p3}, Lo/kc;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "dxid"

    .line 405
    iget-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    invoke-virtual {p3}, Lo/kc;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    iget-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    invoke-virtual {p2}, Lo/kc;->a()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "cachedcontent"

    .line 408
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "persistentlicense"

    .line 409
    iget-boolean p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->w:Z

    if-nez p3, :cond_7

    const/4 p3, 0x1

    goto :goto_2

    :cond_7
    const/4 p3, 0x0

    :goto_2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "error building basePdsEvent, %s"

    .line 415
    invoke-static {v0, p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_8
    :goto_3
    return-object p4
.end method

.method private d(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    const-string v0, "uiplaycontext"

    .line 457
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    .line 462
    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "nf_pds_streaming_session"

    const-string v2, "error transformingUiPlayContext"

    .line 465
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p1
.end method

.method private d()V
    .locals 2

    const-string v0, "nf_pds_streaming_session"

    const-string v1, "Stop timer..."

    .line 499
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/net/NetworkRequestType;
    .locals 5

    const-string v0, "nf_pds_streaming_session"

    if-eqz p0, :cond_1

    const-string v1, "params"

    .line 421
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "event"

    .line 424
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->i:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "isBackgrounded"

    const/4 v2, 0x0

    .line 426
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string v1, "isBackgrounded : %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 427
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p0, :cond_0

    .line 428
    sget-object p0, Lcom/netflix/mediaclient/net/NetworkRequestType;->o:Lcom/netflix/mediaclient/net/NetworkRequestType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/netflix/mediaclient/net/NetworkRequestType;->l:Lcom/netflix/mediaclient/net/NetworkRequestType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "exception in getNetworkRequestType "

    .line 431
    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/net/NetworkRequestType;->k:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object p0
.end method

.method static synthetic e(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;)Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->A:Lo/kb;

    invoke-interface {v0}, Lo/kb;->e()J

    move-result-wide v0

    .line 473
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->g(J)V

    .line 474
    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->i:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-direct {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;J)V

    return-void
.end method

.method private e(I)V
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->C:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private e(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;)Z
    .locals 6

    .line 590
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$5;->b:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {v0}, Lo/ke;->b()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {p2, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v3

    goto :goto_0

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {v0}, Lo/ke;->c()Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 602
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v3

    aput-object p2, v4, v1

    const/4 p1, 0x3

    iget-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {p2}, Lo/ke;->c()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x4

    iget-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {p2}, Lo/ke;->b()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "nf_pds_streaming_session"

    const-string p2, "didAudioOrTextChange : %b, %s (%s), %s, %s"

    invoke-static {p1, p2, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method

.method private f(J)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {v0, p1, p2}, Lo/ke;->d(J)V

    .line 188
    sget-object p1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->a:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    .line 189
    sget-object p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->g:J

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;J)V

    .line 190
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->i()V

    return-void
.end method

.method private g()Z
    .locals 2

    .line 623
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->a:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()V
    .locals 4

    const-string v0, "nf_pds_streaming_session"

    const-string v1, "Start timer..."

    .line 504
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->C:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private j()V
    .locals 2

    .line 617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.PLAYER_AUDIO_SUBTITLE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.PLAYER"

    .line 618
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->b:Landroid/content/Context;

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->p:Z

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    if-ne v0, v1, :cond_0

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->f(J)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    if-ne v0, v1, :cond_1

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->b(J)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {v0, p1, p2}, Lo/ke;->d(J)V

    const-string v0, "Play"

    const-string v1, "Ignore"

    .line 182
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e(JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lo/sE;)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v0, Lo/kc;

    invoke-direct {v0, p1}, Lo/kc;-><init>(Lo/sE;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    .line 153
    invoke-static {}, Lo/eX;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    invoke-virtual {v1}, Lo/kc;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ke;->e(Ljava/lang/String;)V

    :cond_1
    const-string v0, "nf_pds_streaming_session"

    const-string v1, "got manifest info"

    .line 157
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-interface {p1}, Lo/sE;->af()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->a:Lorg/json/JSONObject;

    const-string v2, "uiplaycontext"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 164
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "uiDownloadContext"

    .line 165
    invoke-interface {p1}, Lo/sE;->af()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->a:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "error transformingUiPlayContext"

    .line 168
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 515
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->o:Z

    const-string v2, "nf_pds_streaming_session"

    if-eqz v1, :cond_0

    const-string p1, "dropping pds event. disabled via config"

    .line 521
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 525
    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->p:Z

    if-eqz v1, :cond_1

    const-string v0, "suspending pds event. added to queue"

    .line 526
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 531
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->k:Lo/iS;

    invoke-interface {p1, v0}, Lo/iS;->e(Ljava/lang/String;)V

    .line 532
    iget-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->d:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "streaming pdsEvent: %s"

    .line 533
    invoke-static {v2, v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->s:Z

    new-array v0, v0, [Ljava/lang/Object;

    .line 238
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->s:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_pds_streaming_session"

    const-string v2, "mIsBackgrounded : %b"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public b(J)V
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->s:Z

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {v0, p1, p2}, Lo/ke;->d(J)V

    .line 257
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->a:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->y:Lo/ka;

    invoke-virtual {v0}, Lo/ka;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->i:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;J)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    invoke-virtual {v0}, Lo/kc;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->d:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    if-eq v0, v1, :cond_0

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->g(J)V

    .line 299
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;J)V

    .line 300
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->d()V

    .line 301
    sget-object p1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->d:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    .line 303
    :cond_0
    iget-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->p:Z

    if-eqz p1, :cond_2

    const-string p1, "nf_pds_streaming_session"

    const-string p2, "flushing suspended pds events"

    .line 304
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 305
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->p:Z

    .line 306
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 307
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 542
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->o:Z

    const-string v1, "nf_pds_streaming_session"

    if-eqz v0, :cond_1

    const-string p1, "dropping pds event. disabled via config"

    .line 543
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 546
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->p:Z

    if-eqz v0, :cond_2

    const-string p1, "dropping pds event. suspended"

    .line 547
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 551
    :cond_2
    new-instance v0, Lo/jU;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->b(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->q:Lo/cz;

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lo/jU;-><init>(Landroid/content/Context;[Ljava/lang/String;Lo/cz;Lo/jd$StateListAnimator;)V

    .line 552
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->r:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lo/adT;->b(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lo/np;Z)Lo/np;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 554
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->u:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 557
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->d:Z

    if-eqz v0, :cond_4

    .line 558
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string p1, "streaming pdsEvent: %s"

    .line 559
    invoke-static {v1, p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    return-void
.end method

.method public c(Z)V
    .locals 6

    const-string v0, "persistentlicense"

    .line 318
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->w:Z

    const/4 p1, 0x0

    .line 319
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->p:Z

    .line 320
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    :try_start_0
    const-string v3, "params"

    .line 323
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 324
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->w:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "nf_pds_streaming_session"

    const-string v5, "error reworkingPdsEvent"

    .line 328
    invoke-static {v4, v5, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    :cond_1
    :goto_2
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public d(J)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->a:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    if-eq v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {v0, p1, p2}, Lo/ke;->d(J)V

    const-string v0, "Pause"

    const-string v1, "Ignore"

    .line 245
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->g(J)V

    .line 249
    sget-object p1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    return-void
.end method

.method public d(Lo/TimePickerSpinnerDelegate;)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "nf_pds_streaming_session"

    const-string v4, "streamPresentEvent: %s"

    .line 199
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 200
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    const/4 v4, 0x2

    if-nez v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    .line 201
    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c:Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object p1, v1, v0

    const-string p1, "drop streamPresentEvent because manifest is null, %s %s"

    invoke-static {v3, p1, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->a(Lo/TimePickerSpinnerDelegate;)Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    move-result-object v1

    .line 207
    sget-object v5, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    invoke-virtual {v1, v5}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Lo/TimePickerSpinnerDelegate;->c()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    .line 208
    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    invoke-virtual {v5}, Lo/kc;->f()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->b(Lo/TimePickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    aput-object p1, v6, v0

    aput-object v5, v6, v4

    const-string v7, "streamChanged: type: %s, %s, mediaId: %s"

    .line 209
    invoke-static {v3, v7, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    invoke-direct {p0, v1, v5}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;)Z

    move-result v6

    .line 212
    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {v7}, Lo/ke;->e()Ljava/lang/String;

    move-result-object v7

    .line 213
    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lo/TimePickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, v1, p1, v5}, Lo/ke;->a(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_3

    .line 214
    iget-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->m:Lo/kc;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {v1}, Lo/ke;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/kc;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {v1}, Lo/ke;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    aput-object v7, p1, v0

    const-string v0, "sending mediaId for %s (%s)"

    invoke-static {v3, v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 216
    sget-object p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->A:Lo/kb;

    invoke-interface {v0}, Lo/kb;->e()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;J)V

    .line 217
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->j()V

    :cond_3
    return-void
.end method

.method public e(J)V
    .locals 6

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->d:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->s:Z

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->g(J)V

    .line 273
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->d:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->v:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    .line 274
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;J)V

    .line 275
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->d()V

    .line 277
    sget-boolean p1, Lo/kd;->c:Z

    if-eqz p1, :cond_1

    .line 278
    new-instance p1, Lo/jK;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {p2}, Lo/ke;->a()J

    move-result-wide v2

    iget-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    iget-object p2, p2, Lo/ke;->d:Lo/kd;

    iget-wide v4, p2, Lo/kd;->d:J

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo/jK;-><init>(Ljava/lang/String;JJ)V

    .line 279
    iget-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->l:Lo/zS;

    invoke-interface {p2, p1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "Stop"

    const-string v1, "Ignore"

    .line 267
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(J)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    if-nez v0, :cond_0

    return-void

    .line 574
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {v0, p1, p2}, Lo/ke;->c(J)V

    goto :goto_0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->n:Lo/ke;

    invoke-virtual {v0, p1, p2}, Lo/ke;->d(J)V

    :goto_0
    return-void
.end method
