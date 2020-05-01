.class public final Lcom/netflix/model/leafs/ProfileIconImpl$Companion;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/ProfileIconImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "ProfileIconImpl"

    .line 16
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/netflix/model/leafs/ProfileIconImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final asList(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lo/AO;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 28
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-string v4, "jsonArray.get(i)"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 31
    new-instance v4, Lcom/netflix/model/leafs/ProfileIconImpl;

    invoke-direct {v4}, Lcom/netflix/model/leafs/ProfileIconImpl;-><init>()V

    .line 32
    check-cast v3, Lcom/google/gson/JsonElement;

    invoke-virtual {v4, v3}, Lcom/netflix/model/leafs/ProfileIconImpl;->populate(Lcom/google/gson/JsonElement;)V

    .line 33
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
