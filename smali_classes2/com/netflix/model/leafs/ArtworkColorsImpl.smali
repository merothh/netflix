.class public Lcom/netflix/model/leafs/ArtworkColorsImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lcom/netflix/model/leafs/ArtworkColors;


# static fields
.field public static final TAG:Ljava/lang/String; = "ArtworkColors"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private foregroundColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/netflix/model/leafs/ArtworkColorsImpl;->foregroundColor:Ljava/lang/Integer;

    .line 27
    iput-object v0, p0, Lcom/netflix/model/leafs/ArtworkColorsImpl;->backgroundColor:Ljava/lang/Integer;

    return-void
.end method

.method private static parseColor(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;
    .locals 7

    .line 77
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "#%s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 81
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "ArtworkColors"

    aput-object v6, v5, v0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v1

    const-string p0, "%s: can\'t recognize color %s"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, v4, p0, v2}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    const/high16 v0, -0x1000000

    .line 45
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/ArtworkColorsImpl;->getBackgroundColor(I)I

    move-result v0

    return v0
.end method

.method public getBackgroundColor(I)I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/netflix/model/leafs/ArtworkColorsImpl;->backgroundColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getForegroundColor()I
    .locals 1

    const/4 v0, -0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/ArtworkColorsImpl;->getForegroundColor(I)I

    move-result v0

    return v0
.end method

.method public getForegroundColor(I)I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netflix/model/leafs/ArtworkColorsImpl;->foregroundColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 6

    .line 56
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x2635d820

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x4cb7f6d5    # 9.6450216E7f

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "backgroundColor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "foregroundColor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {v1}, Lcom/netflix/model/leafs/ArtworkColorsImpl;->parseColor(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/ArtworkColorsImpl;->backgroundColor:Ljava/lang/Integer;

    goto :goto_0

    .line 64
    :cond_4
    invoke-static {v1}, Lcom/netflix/model/leafs/ArtworkColorsImpl;->parseColor(Lcom/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/ArtworkColorsImpl;->foregroundColor:Ljava/lang/Integer;

    goto :goto_0

    :cond_5
    return-void
.end method
