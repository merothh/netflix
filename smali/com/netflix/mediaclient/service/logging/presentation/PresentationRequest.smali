.class public Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;
.super Ljava/lang/Object;
.source "PresentationRequest.java"


# static fields
.field public static final API:Ljava/lang/String; = "sw_version"

.field public static final APPLICATION_NAME:Ljava/lang/String; = "application_name"

.field public static final APPLICATION_VER:Ljava/lang/String; = "application_v"

.field public static final APP_NAME_VAL:Ljava/lang/String; = "andorid"

.field public static final APP_NAME_VAL_KUBRICK:Ljava/lang/String; = "android/kubrick"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field protected static final DEBUG:Z = false

.field public static final DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final ESN:Ljava/lang/String; = "esn"

.field public static final EVENTS:Ljava/lang/String; = "data"

.field public static final NRDP_VERSION:Ljava/lang/String; = "sdk_version"

.field private static TAG:Ljava/lang/String; = null

.field public static final USER_GLANCE_TIME:J = 0x12cL


# instance fields
.field private api:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private app_ver:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private country:Ljava/lang/String;

.field private device_type:Ljava/lang/String;

.field private esn:Ljava/lang/String;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private nrdp_ver:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nf_presentation"

    sput-object v0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->events:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->events:Ljava/util/List;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->context:Landroid/content/Context;

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->esn:Ljava/lang/String;

    invoke-interface {p3}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getGeoCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->country:Ljava/lang/String;

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->device_type:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->app_ver:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getNrdLibVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->nrdp_ver:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->api:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->getApplicationName(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->app_name:Ljava/lang/String;

    return-void
.end method

.method private static addToSlidingWindow(Ljava/util/LinkedList;Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
            ">;",
            "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, p2, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "t %d, row %d, rank %d,  %s, %s - !Drop"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getRow()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getRank()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getVideoIds()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getVideoImageTypeIdentifierIds()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static filterFastScrollEvents(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->getNumPagesVisibileToUser(Landroid/content/Context;)I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->shouldFlushSlidingWindow(Ljava/util/LinkedList;Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    :cond_0
    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->addToSlidingWindow(Ljava/util/LinkedList;Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;I)V

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method private getApplicationName(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isKubrick()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android/kubrick"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "andorid"

    goto :goto_0
.end method

.method private static getNumPagesVisibileToUser(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method private static shouldFlushSlidingWindow(Ljava/util/LinkedList;Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
            ">;",
            "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
            "I)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getRow()I

    move-result v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getRow()I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addAllEvent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->filterFastScrollEvents(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public initFromString(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cant create PT request from empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "esn"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->esn:Ljava/lang/String;

    const-string/jumbo v1, "country"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->country:Ljava/lang/String;

    const-string/jumbo v1, "device_type"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->device_type:Ljava/lang/String;

    const-string/jumbo v1, "application_name"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->app_name:Ljava/lang/String;

    const-string/jumbo v1, "application_v"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->app_ver:Ljava/lang/String;

    const-string/jumbo v1, "sdk_version"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->nrdp_ver:Ljava/lang/String;

    const-string/jumbo v1, "sw_version"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->api:Ljava/lang/String;

    const-string/jumbo v1, "data"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->events:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "esn"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->esn:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->country:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "country"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->country:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v0, "device_type"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->device_type:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "application_name"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->app_name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "application_v"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->app_ver:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sdk_version"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->nrdp_ver:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sw_version"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->api:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->events:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public toRequestParams()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "esn"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->esn:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "country"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->country:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "device_type"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->device_type:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "application_name"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->app_name:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "application_v"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->app_ver:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "sdk_version"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->nrdp_ver:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "sw_version"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->api:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->events:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;

    sget-object v5, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "t %d, row %d, rank %d, %s, %s - sending"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getRow()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getRank()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getVideoIds()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->getVideoImageTypeIdentifierIds()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v5

    move v0, v1

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error in event json exception %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "data"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v2
.end method
