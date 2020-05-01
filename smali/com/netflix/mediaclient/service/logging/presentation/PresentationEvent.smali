.class public Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;
.super Ljava/lang/Object;
.source "PresentationEvent.java"


# static fields
.field private static final IMAGE_TYPE_KEY:Ljava/lang/String; = "image_key"

.field private static final IS_HERO:Ljava/lang/String; = "is_hero"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final RANK:Ljava/lang/String; = "rank"

.field private static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static TAG:Ljava/lang/String; = null

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final TRACK_ID:Ljava/lang/String; = "track_id"

.field private static final VIDEO_ID:Ljava/lang/String; = "video_id"


# instance fields
.field private isHero:Z

.field private location:Ljava/lang/String;

.field private rank:I

.field private requestId:Ljava/lang/String;

.field private row:I

.field private time:J

.field private trackId:I

.field private final videoIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final videoImageTypeIdentifierIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "nf_presentation"

    sput-object v0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoIds:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoImageTypeIdentifierIds:Ljava/util/List;

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/netflix/mediaclient/servicemgr/UiLocation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoIds:Ljava/util/List;

    .line 78
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoImageTypeIdentifierIds:Ljava/util/List;

    .line 79
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->requestId:Ljava/lang/String;

    .line 80
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->isHero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getHeroTrackId()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->trackId:I

    .line 81
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getListPos()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->row:I

    .line 82
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->isHero()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->isHero:Z

    .line 83
    iput p4, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->rank:I

    .line 84
    invoke-virtual {p5}, Lcom/netflix/mediaclient/servicemgr/UiLocation;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->location:Ljava/lang/String;

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->time:J

    .line 86
    return-void

    .line 80
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getTrackId()I

    move-result v0

    goto :goto_0
.end method

.method static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 115
    if-nez p0, :cond_0

    .line 138
    :goto_0
    return-object v0

    .line 119
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;-><init>()V

    .line 121
    :try_start_0
    const-string/jumbo v2, "video_id"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    iget-object v3, v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string/jumbo v2, "image_key"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoImageTypeIdentifierIds:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoImageTypeIdentifierIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    const-string/jumbo v2, "request_id"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->requestId:Ljava/lang/String;

    .line 128
    const-string/jumbo v2, "track_id"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->trackId:I

    .line 129
    const-string/jumbo v2, "row"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->row:I

    .line 130
    const-string/jumbo v2, "rank"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->rank:I

    .line 131
    const-string/jumbo v2, "location"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->location:Ljava/lang/String;

    .line 132
    const-string/jumbo v2, "time"

    const-wide/16 v4, 0x0

    invoke-static {p0, v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->time:J

    .line 133
    const-string/jumbo v2, "is_hero"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->isHero:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 138
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    sget-object v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "fail to create PT event from json: %s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->location:Ljava/lang/String;

    return-object v0
.end method

.method getRank()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->rank:I

    return v0
.end method

.method getRow()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->row:I

    return v0
.end method

.method getTime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->time:J

    return-wide v0
.end method

.method getVideoIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoIds:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVideoImageTypeIdentifierIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoImageTypeIdentifierIds:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toJSONArray()Lorg/json/JSONArray;
    .locals 8

    .prologue
    .line 89
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 90
    iget v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->rank:I

    .line 91
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 94
    const-string/jumbo v5, "video_id"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v0, "request_id"

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->requestId:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v0, "track_id"

    iget v5, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->trackId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v0, "row"

    iget v5, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->row:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v0, "rank"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v0, "location"

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->location:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v0, "time"

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v0, "is_hero"

    iget-boolean v5, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->isHero:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoImageTypeIdentifierIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoImageTypeIdentifierIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoImageTypeIdentifierIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    const-string/jumbo v5, "image_key"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 109
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 111
    :cond_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PresentationEvent [videoIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoImageTypeIdentifierIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->videoImageTypeIdentifierIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isHero="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->isHero:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
