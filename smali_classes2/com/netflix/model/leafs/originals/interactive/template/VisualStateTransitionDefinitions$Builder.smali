.class public abstract Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;
.end method

.method abstract dismissImmediate(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract dismissNonFocusedSelectedTimeout(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract dismissNonSelectedImmediate(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract dismissNonSelectedLazy(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract dismissNonSelectedTimeout(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract dismissNonSelectedTimeoutFallbackTutorial(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract dismissSelectedImmediate(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract dismissSelectedLazy(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract dismissSelectedTimeout(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract dismissTimeout(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract dismissTimeoutFallbackTutorial(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract focused(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract hide(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract init(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract selectedLazy(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract unfocused(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method
