.class public abstract Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/ImpressionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Data"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIterator(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/Condition;",
            ">;)",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonPrimitive;",
            ">;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data$1;-><init>(Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;Ljava/util/Map;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V

    return-object v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ImpressionData_Data$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_ImpressionData_Data$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method abstract global()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/Condition;",
            ">;"
        }
    .end annotation
.end method

.method public globalIterator(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonPrimitive;",
            ">;>;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;->global()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;->getIterator(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method abstract persistent()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/Condition;",
            ">;"
        }
    .end annotation
.end method

.method public persistentIterator(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonPrimitive;",
            ">;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;->persistent()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;->getIterator(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method abstract session()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/Condition;",
            ">;"
        }
    .end annotation
.end method

.method public sessionIterator(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonPrimitive;",
            ">;>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;->session()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;->getIterator(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
