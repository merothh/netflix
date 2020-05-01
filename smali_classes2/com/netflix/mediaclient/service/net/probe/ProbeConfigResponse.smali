.class public Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;,
        Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;,
        Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$ActionBar;
    }
.end annotation


# instance fields
.field private context:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ctx"
    .end annotation
.end field

.field private transient d:Ljava/lang/String;

.field private logblob:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logblob"
    .end annotation
.end field

.field private next:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "next"
    .end annotation
.end field

.field private pulseDelay:[Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pulse_delays"
    .end annotation
.end field

.field private pulseDelayDeprecated:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pulse_delay"
    .end annotation
.end field

.field private pulseTimeout:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pulse_timeout"
    .end annotation
.end field

.field private pulses:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pulses"
    .end annotation
.end field

.field private requestOptions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reqopts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private urls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()J
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->next:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->next:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public c(I)J
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->pulseDelay:[Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-ge p1, v3, :cond_0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->pulseDelay:[Ljava/lang/Long;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->pulseDelayDeprecated:Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-ltz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->pulseDelayDeprecated:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$ActionBar;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->urls:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->d:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->pulses:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->pulses:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public f()Lcom/google/gson/JsonObject;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->context:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->logblob:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ftlProbe"

    :cond_0
    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->requestOptions:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object v0
.end method
