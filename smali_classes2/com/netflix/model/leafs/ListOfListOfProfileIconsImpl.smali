.class public final Lcom/netflix/model/leafs/ListOfListOfProfileIconsImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DocumentsProvider;
.implements Lo/ContactsInternal;
.implements Lo/AD;


# instance fields
.field private final listOfListOfProfileIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/AC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/ListOfListOfProfileIconsImpl;->listOfListOfProfileIcons:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getListOfListOfProfileIcons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lo/AC;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfListOfProfileIconsImpl;->listOfListOfProfileIcons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 4

    const-string v0, "jsonElem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/netflix/model/leafs/ListOfListOfProfileIconsImpl;->getListOfListOfProfileIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    sget-object v0, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->Companion:Lcom/netflix/model/leafs/ListOfProfileIconsImpl$Companion;

    check-cast v0, Lo/MessagePdu;

    .line 28
    instance-of v0, p1, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_0

    .line 30
    check-cast p1, Ljava/lang/Iterable;

    .line 69
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 31
    new-instance v1, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;

    invoke-direct {v1}, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;-><init>()V

    const-string v2, "it"

    .line 32
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/netflix/model/leafs/ListOfProfileIconsImpl;->populate(Lcom/google/gson/JsonElement;)V

    .line 33
    invoke-virtual {p0}, Lcom/netflix/model/leafs/ListOfListOfProfileIconsImpl;->getListOfListOfProfileIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_0
    instance-of v0, p1, Lcom/google/gson/JsonObject;

    const-string v1, "jsonElem: "

    if-eqz v0, :cond_2

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v2, "_sentinel"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "value"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string v0, "child"

    .line 39
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/ListOfListOfProfileIconsImpl;->populate(Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 41
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 44
    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v1, "ListOfListOfProfileIconsImpl: passed argument is not a sentinel."

    .line 43
    invoke-interface {p1, v0, v1}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v1, "ListOfListOfProfileIconsImpl: passed argument is not an array nor sentinel."

    .line 51
    invoke-interface {p1, v0, v1}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
