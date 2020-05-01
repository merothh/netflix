.class public abstract Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;
.end method

.method public abstract setId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
.end method

.method public abstract setImage(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;"
        }
    .end annotation
.end method

.method public abstract setStyleId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
.end method

.method public abstract setType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
.end method

.method public abstract setVisualStateTransitions(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;"
        }
    .end annotation
.end method

.method public abstract setVisualStates(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;",
            ">;)",
            "Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;"
        }
    .end annotation
.end method
