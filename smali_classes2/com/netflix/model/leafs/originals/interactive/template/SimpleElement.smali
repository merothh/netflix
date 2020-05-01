.class public abstract Lcom/netflix/model/leafs/originals/interactive/template/SimpleElement;
.super Lcom/netflix/model/leafs/originals/interactive/template/Element;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/template/Element;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/template/SimpleElement;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/template/$AutoValue_SimpleElement$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/template/$AutoValue_SimpleElement$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method
