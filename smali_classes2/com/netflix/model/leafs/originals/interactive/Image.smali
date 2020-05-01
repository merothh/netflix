.class public abstract Lcom/netflix/model/leafs/originals/interactive/Image;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/netflix/model/leafs/originals/interactive/Image;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Image$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Image$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Image$GsonTypeAdapter;->setDefaultHeight(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Image$GsonTypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Image$GsonTypeAdapter;->setDefaultWidth(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Image$GsonTypeAdapter;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Image$GsonTypeAdapter;->setDefaultScale(Ljava/lang/Float;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Image$GsonTypeAdapter;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Image$GsonTypeAdapter;->setDefaultId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Image$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract height()Ljava/lang/Integer;
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public abstract scale()Ljava/lang/Float;
.end method

.method public abstract sourceRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;
.end method

.method public abstract url()Ljava/lang/String;
.end method

.method public abstract width()Ljava/lang/Integer;
.end method
