.class public final Lcom/netflix/mediaclient/AutoValueGson_AutoValueAdapterFactory;
.super Lcom/netflix/mediaclient/AutoValueAdapterFactory;
.source "AutoValueGson_AutoValueAdapterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/AutoValueAdapterFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
