.class public abstract Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/Choice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/netflix/model/leafs/originals/interactive/Choice;
.end method

.method public abstract setAction(Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setBackground(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setCode(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setIcon(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setImage(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;"
        }
    .end annotation
.end method

.method public abstract setImpressionData(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setOptionType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setPreconditionId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setSegmentGroup(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setSegmentId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setStartTimeMs(I)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setText(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method

.method public abstract setTrackingInfo(Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;)Lcom/netflix/model/leafs/originals/interactive/Choice$Builder;
.end method
