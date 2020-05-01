.class public final Lcom/netflix/model/leafs/ListOfProfileIconsImpl;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/agj;
.implements Lo/DocumentsProvider;
.implements Lo/AC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/ListOfProfileIconsImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/model/leafs/ListOfProfileIconsImpl$Companion;

.field private static final ROW_ICONS:Ljava/lang/String; = "icons"

.field private static final ROW_IMAGE_URL:Ljava/lang/String; = "rowImageUrl"

.field private static final ROW_TITLE:Ljava/lang/String; = "rowTitle"


# instance fields
.field private profileIcons:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/AO;",
            ">;"
        }
    .end annotation
.end field

.field private rowImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rowImageUrl"
    .end annotation
.end field

.field private rowTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rowTitle"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/model/leafs/ListOfProfileIconsImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/ListOfProfileIconsImpl$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->Companion:Lcom/netflix/model/leafs/ListOfProfileIconsImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    return-void
.end method


# virtual methods
.method public getProfileIcons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lo/AO;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->profileIcons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRowImageUrl()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->rowImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRowTitle()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->rowTitle:Ljava/lang/String;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    const-string v0, "jsonElem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 36
    sget-object v0, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->Companion:Lcom/netflix/model/leafs/ListOfProfileIconsImpl$Companion;

    check-cast v0, Lo/MessagePdu;

    .line 38
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

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

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x9e2f9f2

    const-string v4, "value"

    if-eq v2, v3, :cond_4

    const v3, 0x1fb909e

    if-eq v2, v3, :cond_3

    const v3, 0x5f6531a

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "icons"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/model/leafs/ProfileIconImpl;->Companion:Lcom/netflix/model/leafs/ProfileIconImpl$Companion;

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/model/leafs/ProfileIconImpl$Companion;->asList(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->setProfileIcons(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    const-string v2, "rowTitle"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/BatteryProperty;->b(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->setRowTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "rowImageUrl"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/BatteryProperty;->b(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->setRowImageUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setProfileIcons(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/AO;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->profileIcons:Ljava/util/ArrayList;

    return-void
.end method

.method public setRowImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->rowImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setRowTitle(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->rowTitle:Ljava/lang/String;

    return-void
.end method
