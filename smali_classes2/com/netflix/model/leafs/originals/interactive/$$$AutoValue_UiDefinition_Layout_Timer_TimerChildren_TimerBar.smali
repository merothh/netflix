.class abstract Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;
.super Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar;
.source ""


# instance fields
.field private final assetId:Ljava/lang/String;

.field private final children:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;

.field private final id:Ljava/lang/String;

.field private final styleId:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final visualStateTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;",
            ">;"
        }
    .end annotation
.end field

.field private final visualStates:Ljava/util/Map;
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
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->id:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->type:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->styleId:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->visualStateTransitions:Ljava/util/Map;

    .line 39
    iput-object p5, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->visualStates:Ljava/util/Map;

    .line 40
    iput-object p6, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->assetId:Ljava/lang/String;

    if-eqz p7, :cond_0

    .line 44
    iput-object p7, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->children:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null children"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public assetId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->assetId:Ljava/lang/String;

    return-object v0
.end method

.method public children()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->children:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->id:Ljava/lang/String;

    return-object v0
.end method

.method public styleId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->styleId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimerBar{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", styleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->styleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", visualStateTransitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->visualStateTransitions:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visualStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->visualStates:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->children:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->type:Ljava/lang/String;

    return-object v0
.end method

.method public visualStateTransitions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->visualStateTransitions:Ljava/util/Map;

    return-object v0
.end method

.method public visualStates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->visualStates:Ljava/util/Map;

    return-object v0
.end method