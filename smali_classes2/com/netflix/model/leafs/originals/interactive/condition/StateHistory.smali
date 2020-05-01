.class public abstract Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory$Builder;
    }
.end annotation


# instance fields
.field public sessionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonPrimitive;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->sessionState:Ljava/util/HashMap;

    return-void
.end method

.method public static create(Lcom/netflix/model/leafs/originals/interactive/condition/State;Lcom/netflix/model/leafs/originals/interactive/condition/State;)Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;
    .locals 1

    .line 34
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;

    invoke-direct {v0, p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;-><init>(Lcom/netflix/model/leafs/originals/interactive/condition/State;Lcom/netflix/model/leafs/originals/interactive/condition/State;)V

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
            "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    new-instance p0, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/State;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->setDefaultGlobal(Lcom/netflix/model/leafs/originals/interactive/condition/State;)Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;

    move-result-object p0

    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/State;-><init>()V

    .line 46
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;->setDefaultPersistent(Lcom/netflix/model/leafs/originals/interactive/condition/State;)Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public builder()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory$Builder;
    .locals 2

    .line 54
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory$Builder;-><init>(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory$1;)V

    return-object v0
.end method

.method public abstract global()Lcom/netflix/model/leafs/originals/interactive/condition/State;
.end method

.method public isNotEmpty()Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->global()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;
.end method

.method public toJson()Lcom/google/gson/JsonObject;
    .locals 3

    .line 38
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/condition/State;->toJson()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "persistent"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 40
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->global()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/condition/State;->toJson()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "global"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method
