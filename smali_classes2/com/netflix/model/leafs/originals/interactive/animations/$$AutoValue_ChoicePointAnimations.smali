.class abstract Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;
.super Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;
.source ""


# instance fields
.field private final hide:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final hideSelected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final show:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;-><init>()V

    if-eqz p1, :cond_1

    .line 25
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->show:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 29
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->hide:Ljava/util/Map;

    .line 30
    iput-object p3, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->hideSelected:Ljava/util/Map;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null hide"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null show"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 64
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    .line 65
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->show:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;->show()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->hide:Ljava/util/Map;

    .line 66
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;->hide()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->hideSelected:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;->hideSelected()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;->hideSelected()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->show:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 78
    iget-object v2, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->hide:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 80
    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->hideSelected:Ljava/util/Map;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public hide()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->hide:Ljava/util/Map;

    return-object v0
.end method

.method public hideSelected()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->hideSelected:Ljava/util/Map;

    return-object v0
.end method

.method public show()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->show:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChoicePointAnimations{show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->show:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->hide:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hideSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/animations/$$AutoValue_ChoicePointAnimations;->hideSelected:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
