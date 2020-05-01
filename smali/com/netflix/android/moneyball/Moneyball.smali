.class public final Lcom/netflix/android/moneyball/Moneyball;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/netflix/android/moneyball/Moneyball;

.field private static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/netflix/android/moneyball/Moneyball;

    invoke-direct {v0}, Lcom/netflix/android/moneyball/Moneyball;-><init>()V

    sput-object v0, Lcom/netflix/android/moneyball/Moneyball;->INSTANCE:Lcom/netflix/android/moneyball/Moneyball;

    .line 14
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/netflix/android/moneyball/Moneyball;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 14
    sget-object v0, Lcom/netflix/android/moneyball/Moneyball;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public final parseJsonToFlowMode(Ljava/lang/String;)Lcom/netflix/android/moneyball/FlowMode;
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/netflix/android/moneyball/Moneyball$parseJsonToFlowMode$type$1;

    invoke-direct {v0}, Lcom/netflix/android/moneyball/Moneyball$parseJsonToFlowMode$type$1;-><init>()V

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/Moneyball$parseJsonToFlowMode$type$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/netflix/android/moneyball/Moneyball;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(json, type)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    .line 18
    invoke-virtual {p0, p1}, Lcom/netflix/android/moneyball/Moneyball;->recursiveSetLongs(Ljava/util/Map;)V

    .line 19
    new-instance v0, Lcom/netflix/android/moneyball/FlowMode;

    invoke-direct {v0, p1}, Lcom/netflix/android/moneyball/FlowMode;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final recursiveSetLongs(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 25
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_1

    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lo/amq;->e(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {v2}, Lo/amk;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    sget-object v1, Lcom/netflix/android/moneyball/Moneyball;->INSTANCE:Lcom/netflix/android/moneyball/Moneyball;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lo/amk;->i(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/moneyball/Moneyball;->recursiveSetLongs(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Any>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method
