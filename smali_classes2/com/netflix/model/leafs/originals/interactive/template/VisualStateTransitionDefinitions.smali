.class public abstract Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$States;,
        Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
    .locals 1

    .line 74
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/template/$$AutoValue_VisualStateTransitionDefinitions$Builder;-><init>()V

    return-object v0
.end method

.method private getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dismissImmediate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "dismissTimeoutFallbackTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "dismissTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "dismissNonSelectedImmediate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "dismissNonSelectedTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "dismissSelectedLazy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "unfocused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_7
    const-string v0, "dismissSelectedImmediate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "init"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_9
    const-string v0, "hide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_a
    const-string v0, "dismissNonSelectedTimeoutFallbackTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_b
    const-string v0, "dismissNonSelectedLazy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_c
    const-string v0, "dismissSelectedTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_d
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_e
    const-string v0, "dismissNonFocusedSelectedTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_f
    const-string v0, "selectedLazy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 170
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no definition for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Interactive definition animation undefined"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_2

    .line 167
    :pswitch_0
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->unfocused()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 164
    :pswitch_1
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->selectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 161
    :pswitch_2
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->hide()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 158
    :pswitch_3
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->init()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 155
    :pswitch_4
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->focused()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 152
    :pswitch_5
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissTimeoutFallbackTutorial()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 149
    :pswitch_6
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 146
    :pswitch_7
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 143
    :pswitch_8
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissSelectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 140
    :pswitch_9
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissSelectedImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 137
    :pswitch_a
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissNonSelectedTimeoutFallbackTutorial()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 134
    :pswitch_b
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissNonSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 131
    :pswitch_c
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissNonSelectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 128
    :pswitch_d
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissNonSelectedImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 125
    :pswitch_e
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissNonFocusedSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    goto :goto_2

    .line 122
    :pswitch_f
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->dismissImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_1

    goto :goto_3

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;->transitionId()Ljava/lang/String;

    move-result-object v1

    :goto_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6896cb51 -> :sswitch_f
        -0x2b25e66e -> :sswitch_e
        -0x29307489 -> :sswitch_d
        -0x2485c1a4 -> :sswitch_c
        -0xb9637ce -> :sswitch_b
        -0x34b59d -> :sswitch_a
        0x30dd42 -> :sswitch_9
        0x316510 -> :sswitch_8
        0x25d755ec -> :sswitch_7
        0x3cd78ebe -> :sswitch_6
        0x557ebc59 -> :sswitch_5
        0x5611f7e3 -> :sswitch_4
        0x5966c9b3 -> :sswitch_3
        0x747a2377 -> :sswitch_2
        0x78b1cdf7 -> :sswitch_1
        0x7e726047 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/template/$AutoValue_VisualStateTransitionDefinitions$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/template/$AutoValue_VisualStateTransitionDefinitions$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method abstract dismissImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract dismissNonFocusedSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract dismissNonSelectedImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract dismissNonSelectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract dismissNonSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract dismissNonSelectedTimeoutFallbackTutorial()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract dismissSelectedImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract dismissSelectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract dismissSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract dismissTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract dismissTimeoutFallbackTutorial()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract focused()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract hide()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract init()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method abstract selectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method

.method public stateMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "init"

    .line 179
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hide"

    .line 180
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismissImmediate"

    .line 181
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismissNonFocusedSelectedTimeout"

    .line 182
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismissNonSelectedImmediate"

    .line 183
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismissNonSelectedLazy"

    .line 184
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismissNonSelectedTimeout"

    .line 185
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismissNonSelectedTimeoutFallbackTutorial"

    .line 186
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismissSelectedImmediate"

    .line 187
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismissSelectedLazy"

    .line 188
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismissSelectedTimeout"

    .line 189
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismissTimeout"

    .line 190
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismissTimeoutFallbackTutorial"

    .line 191
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "focused"

    .line 192
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "selectedLazy"

    .line 193
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unfocused"

    .line 194
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->getDefinitionForTransition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unfocused"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public abstract toBuilder()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions$Builder;
.end method

.method abstract unfocused()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;
.end method
