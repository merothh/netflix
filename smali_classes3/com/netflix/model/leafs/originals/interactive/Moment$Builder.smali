.class public abstract Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract action(Lcom/netflix/model/leafs/originals/interactive/Action;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract assetManifest(Lcom/netflix/model/leafs/originals/interactive/AssetManifest;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract build()Lcom/netflix/model/leafs/originals/interactive/Moment;
.end method

.method public abstract choices(Ljava/util/List;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;"
        }
    .end annotation
.end method

.method public abstract config(Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract defaultChoiceIndex(Ljava/lang/Integer;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract endMs(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract ftueText(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract id(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract impressionData(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract isFallbackTutorial(Z)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract layoutType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract momentType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract nextSegmentId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract precondition(Lcom/netflix/model/leafs/originals/interactive/condition/Condition;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract startMs(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract text(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract timeoutSegment(Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract trackingInfo(Lcom/netflix/model/leafs/originals/interactive/TrackingInfo;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract uiDisplayMS(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method

.method public abstract uiHideMS(Ljava/lang/Long;)Lcom/netflix/model/leafs/originals/interactive/Moment$Builder;
.end method
