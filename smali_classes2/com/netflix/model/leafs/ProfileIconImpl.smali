.class public final Lcom/netflix/model/leafs/ProfileIconImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lo/AO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/ProfileIconImpl$Companion;
    }
.end annotation


# static fields
.field private static final CONTENT_DESCRIPTION:Ljava/lang/String; = "contentDescription"

.field public static final Companion:Lcom/netflix/model/leafs/ProfileIconImpl$Companion;

.field private static final ID:Ljava/lang/String; = "id"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final UUID:Ljava/lang/String; = "uuid"


# instance fields
.field private contentDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentDescription"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/model/leafs/ProfileIconImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/ProfileIconImpl$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/model/leafs/ProfileIconImpl;->Companion:Lcom/netflix/model/leafs/ProfileIconImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    return-void
.end method

.method public static final asList(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;
    .locals 1
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

    sget-object v0, Lcom/netflix/model/leafs/ProfileIconImpl;->Companion:Lcom/netflix/model/leafs/ProfileIconImpl$Companion;

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/ProfileIconImpl$Companion;->asList(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/netflix/model/leafs/ProfileIconImpl;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netflix/model/leafs/ProfileIconImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/model/leafs/ProfileIconImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/netflix/model/leafs/ProfileIconImpl;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    const-string v0, "jsonElem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 56
    sget-object v0, Lcom/netflix/model/leafs/ProfileIconImpl;->Companion:Lcom/netflix/model/leafs/ProfileIconImpl$Companion;

    check-cast v0, Lo/MessagePdu;

    .line 58
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    if-nez v1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4be95e3d

    const-string v4, "value"

    if-eq v2, v3, :cond_5

    const/16 v3, 0xd1b

    if-eq v2, v3, :cond_4

    const v3, 0x1c56f

    if-eq v2, v3, :cond_3

    const v3, 0x36f3bb

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "uuid"

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/BatteryProperty;->b(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/ProfileIconImpl;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "url"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/BatteryProperty;->b(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/ProfileIconImpl;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "id"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/BatteryProperty;->b(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/ProfileIconImpl;->setId(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "contentDescription"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/BatteryProperty;->b(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/ProfileIconImpl;->setContentDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/netflix/model/leafs/ProfileIconImpl;->contentDescription:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/netflix/model/leafs/ProfileIconImpl;->id:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/netflix/model/leafs/ProfileIconImpl;->url:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/netflix/model/leafs/ProfileIconImpl;->uuid:Ljava/lang/String;

    return-void
.end method
