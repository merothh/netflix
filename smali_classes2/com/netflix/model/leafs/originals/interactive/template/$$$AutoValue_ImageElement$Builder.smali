.class final Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;
.super Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private image:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private styleId:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private visualStateTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;",
            ">;"
        }
    .end annotation
.end field

.field private visualStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;-><init>()V

    .line 102
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->id:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->type:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->styleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->styleId:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->visualStateTransitions()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->visualStateTransitions:Ljava/util/Map;

    .line 106
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->visualStates()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->visualStates:Ljava/util/Map;

    .line 107
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->image()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->image:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$1;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;-><init>(Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;
    .locals 8

    .line 141
    new-instance v7, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_ImageElement;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->styleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->visualStateTransitions:Ljava/util/Map;

    iget-object v5, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->visualStates:Ljava/util/Map;

    iget-object v6, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->image:Ljava/util/Map;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_ImageElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v7
.end method

.method public setId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setImage(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
    .locals 0
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

    .line 136
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->image:Ljava/util/Map;

    return-object p0
.end method

.method public setStyleId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->styleId:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setVisualStateTransitions(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
    .locals 0
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

    .line 126
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->visualStateTransitions:Ljava/util/Map;

    return-object p0
.end method

.method public setVisualStates(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
    .locals 0
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

    .line 131
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;->visualStates:Ljava/util/Map;

    return-object p0
.end method
