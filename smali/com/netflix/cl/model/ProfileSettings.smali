.class public Lcom/netflix/cl/model/ProfileSettings;
.super Lcom/netflix/cl/model/Data;
.source ""


# instance fields
.field private avatarName:Ljava/lang/String;

.field private kids:Ljava/lang/Boolean;

.field private language:Ljava/lang/String;

.field private maturityLevel:Lcom/netflix/cl/model/MaturityLevel;

.field private nextEpisodeAutoplay:Ljava/lang/Boolean;

.field private videoMerchEnabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Lcom/netflix/cl/model/MaturityLevel;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/netflix/cl/model/Data;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netflix/cl/model/ProfileSettings;->videoMerchEnabled:Ljava/lang/Boolean;

    .line 26
    iput-object p2, p0, Lcom/netflix/cl/model/ProfileSettings;->avatarName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/netflix/cl/model/ProfileSettings;->maturityLevel:Lcom/netflix/cl/model/MaturityLevel;

    .line 28
    iput-object p4, p0, Lcom/netflix/cl/model/ProfileSettings;->language:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/netflix/cl/model/ProfileSettings;->nextEpisodeAutoplay:Ljava/lang/Boolean;

    .line 30
    iput-object p6, p0, Lcom/netflix/cl/model/ProfileSettings;->kids:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/netflix/cl/model/ProfileSettings;->videoMerchEnabled:Ljava/lang/Boolean;

    const-string v2, "videoMerchEnabled"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    iget-object v1, p0, Lcom/netflix/cl/model/ProfileSettings;->avatarName:Ljava/lang/String;

    const-string v2, "avatarName"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 46
    iget-object v1, p0, Lcom/netflix/cl/model/ProfileSettings;->maturityLevel:Lcom/netflix/cl/model/MaturityLevel;

    const-string v2, "maturityLevel"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    iget-object v1, p0, Lcom/netflix/cl/model/ProfileSettings;->language:Ljava/lang/String;

    const-string v2, "language"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 48
    iget-object v1, p0, Lcom/netflix/cl/model/ProfileSettings;->nextEpisodeAutoplay:Ljava/lang/Boolean;

    const-string v2, "nextEpisodeAutoplay"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    iget-object v1, p0, Lcom/netflix/cl/model/ProfileSettings;->kids:Ljava/lang/Boolean;

    const-string v2, "kids"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
