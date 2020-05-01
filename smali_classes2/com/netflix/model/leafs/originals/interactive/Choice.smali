.class public abstract Lcom/netflix/model/leafs/originals/interactive/Choice;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;,
        Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    }
.end annotation


# instance fields
.field public isDefaultChoice:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/interactive/Choice;->isDefaultChoice:Z

    return-void
.end method

.method public static builder()Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .locals 1

    .line 70
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Choice$Builder;-><init>()V

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
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice$GsonTypeAdapter;->setDefaultId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice$GsonTypeAdapter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice$GsonTypeAdapter;->setDefaultStartTimeMs(I)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Choice$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract action()Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;
.end method

.method public assetId()Ljava/lang/String;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->image()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "assetId"

    .line 60
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public abstract background()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;
.end method

.method public abstract code()Ljava/lang/String;
.end method

.method public abstract icon()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public abstract image()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;
.end method

.method public abstract optionType()Ljava/lang/String;
.end method

.method public abstract preconditionId()Ljava/lang/String;
.end method

.method public abstract segmentGroup()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sg"
    .end annotation
.end method

.method public abstract segmentId()Ljava/lang/String;
.end method

.method public abstract startTimeMs()I
.end method

.method public abstract text()Ljava/lang/String;
.end method

.method public abstract toBuilder()Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract trackingInfo()Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;
.end method
