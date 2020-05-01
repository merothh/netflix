.class public Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private type:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field

.field private valueSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget-object v0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;->NONE:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->type:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;

    return-void
.end method

.method private b()Z
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->type:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 189
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$2;->d:[I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->type:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    return v1

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->value:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->valueSize:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->value:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->valueSize:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    return v2
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->name:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;
    .locals 1

    .line 202
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;->NONE:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->type:Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$RequestOptionsType;

    :goto_0
    return-object v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->valueSize:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->valueSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->valueSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v0, v0, [B

    .line 212
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x10

    .line 214
    :try_start_1
    invoke-static {v0, v1}, Lo/adl;->b([BI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->valueSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->value:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$TaskDescription;->value:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
