.class public final Lo/ib;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hZ;


# static fields
.field public static final e:Lo/ib;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/ib;

    invoke-direct {v0}, Lo/ib;-><init>()V

    sput-object v0, Lo/ib;->e:Lo/ib;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/model/leafs/VideoInfo$TimeCodes;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$TimeCodes;->getTimeCodesData()Lcom/netflix/model/leafs/TimeCodesData;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    const-class v1, Lcom/google/gson/Gson;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$TimeCodes;->getTimeCodesData()Lcom/netflix/model/leafs/TimeCodesData;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public b(Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 46
    :cond_0
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 39
    :cond_0
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string v1, "JsonParser().parse(advisoriesString)"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/model/leafs/advisory/AdvisoryImpl;->asList(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/netflix/model/leafs/VideoInfo$TimeCodes;
    .locals 3

    const/4 v0, 0x0

    .line 57
    check-cast v0, Lcom/netflix/model/leafs/TimeCodesImpl;

    if-eqz p1, :cond_0

    .line 59
    new-instance v0, Lcom/netflix/model/leafs/TimeCodesImpl;

    invoke-direct {v0}, Lcom/netflix/model/leafs/TimeCodesImpl;-><init>()V

    .line 61
    const-class v1, Lcom/google/gson/Gson;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    const-class v2, Lcom/netflix/model/leafs/TimeCodesData;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/TimeCodesData;

    iput-object p1, v0, Lcom/netflix/model/leafs/TimeCodesImpl;->timeCodesData:Lcom/netflix/model/leafs/TimeCodesData;

    .line 63
    :cond_0
    check-cast v0, Lcom/netflix/model/leafs/VideoInfo$TimeCodes;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;
    .locals 3

    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 71
    :cond_0
    const-class v1, Lcom/google/gson/Gson;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    .line 73
    const-class v2, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    .line 71
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    return-object v0
.end method

.method public e(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Lcom/netflix/model/leafs/originals/ListOfTagSummaryImpl;->getTagsAsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
