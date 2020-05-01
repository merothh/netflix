.class final Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;
.super Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private dismissImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private dismissNonFocusedSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private dismissNonSelectedImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private dismissNonSelectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private dismissNonSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private dismissNonSelectedTimeoutFallbackTutorial:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private dismissSelectedImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private dismissSelectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private dismissSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private dismissTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private dismissTimeoutFallbackTutorial:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private focused:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private hide:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private init:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private selectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

.field private unfocused:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;)V
    .locals 1

    .line 285
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;-><init>()V

    .line 286
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 287
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissNonFocusedSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonFocusedSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 288
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissNonSelectedImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 289
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissNonSelectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 290
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissNonSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 291
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissNonSelectedTimeoutFallbackTutorial()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedTimeoutFallbackTutorial:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 292
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissSelectedImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissSelectedImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 293
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissSelectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissSelectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 294
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 295
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 296
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissTimeoutFallbackTutorial()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissTimeoutFallbackTutorial:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 297
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->focused()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->focused:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 298
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->init()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->init:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 299
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->hide()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->hide:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 300
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->selectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->selectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    .line 301
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->unfocused()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->unfocused:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$1;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;-><init>(Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;
    .locals 20

    move-object/from16 v0, p0

    .line 385
    new-instance v18, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v3, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonFocusedSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v4, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v5, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v6, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v7, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedTimeoutFallbackTutorial:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v8, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissSelectedImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v9, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissSelectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v10, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v11, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v12, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissTimeoutFallbackTutorial:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v13, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->focused:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v14, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->init:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    iget-object v15, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->hide:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->selectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->unfocused:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;-><init>(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)V

    return-object v18
.end method

.method dismissImmediate(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method dismissNonFocusedSelectedTimeout(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonFocusedSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method dismissNonSelectedImmediate(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method dismissNonSelectedLazy(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method dismissNonSelectedTimeout(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method dismissNonSelectedTimeoutFallbackTutorial(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissNonSelectedTimeoutFallbackTutorial:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method dismissSelectedImmediate(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissSelectedImmediate:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method dismissSelectedLazy(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissSelectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method dismissSelectedTimeout(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissSelectedTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method dismissTimeout(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissTimeout:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method dismissTimeoutFallbackTutorial(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->dismissTimeoutFallbackTutorial:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method focused(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->focused:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method hide(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->hide:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method init(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->init:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method selectedLazy(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->selectedLazy:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method

.method unfocused(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;->unfocused:Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    return-object p0
.end method
