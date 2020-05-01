.class public abstract Lo/sI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sI$TaskDescription;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lo/sI;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Lo/sm$TaskDescription;

    invoke-direct {v0, p0}, Lo/sm$TaskDescription;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "midxOffset"
    .end annotation
.end method

.method public abstract b()Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "midxSize"
    .end annotation
.end method

.method public abstract d()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end method

.method public abstract e()Lo/sI$TaskDescription;
.end method
