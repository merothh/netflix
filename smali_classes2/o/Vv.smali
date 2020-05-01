.class public final Lo/Vv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Vv$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/Vv$TaskDescription;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field

.field private final i:F

.field private final j:Lo/Ve;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Vv$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Vv$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Vv;->a:Lo/Vv$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lo/Ve;F)V
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Vv;->j:Lo/Ve;

    iput p2, p0, Lo/Vv;->i:F

    return-void
.end method

.method public static synthetic b(Lo/Vv;ZILandroid/view/animation/Animation$AnimationListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 105
    check-cast p3, Landroid/view/animation/Animation$AnimationListener;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/Vv;->e(ZILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private final c(Ljava/util/Map;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/util/Map;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/template/Element;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;>;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    .line 41
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2, p3}, Lo/Vv;->c(Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 44
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final c(Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/template/Element;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lo/Vv;->a:Lo/Vv$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->visualStateTransitions()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;->animationTemplateId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 61
    sget-object v3, Lo/Vv;->a:Lo/Vv$TaskDescription;

    check-cast v3, Lo/MessagePdu;

    .line 62
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->elementChildList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Ljava/lang/Iterable;

    .line 227
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    if-eqz v1, :cond_2

    .line 67
    invoke-direct {p0, p1, v1, p3}, Lo/Vv;->c(Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 72
    :cond_3
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final d(Ljava/util/Map;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;>;",
            "Landroid/view/animation/Animation$AnimationListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 163
    new-instance v2, Lo/UY;

    invoke-direct {v2}, Lo/UY;-><init>()V

    const/4 v3, 0x0

    .line 165
    move-object v4, v3

    check-cast v4, Landroid/view/animation/AnimationSet;

    .line 269
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v6, -0x1

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 167
    iget-object v9, v0, Lo/Vv;->j:Lo/Ve;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lo/Ve;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 168
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 170
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 270
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v19, 0x0

    move-wide/from16 v11, v19

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v21, v11

    check-cast v21, Ljava/util/Map$Entry;

    .line 173
    move-object v11, v3

    check-cast v11, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;

    .line 174
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    .line 271
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v23, v11

    move-wide/from16 v24, v19

    move-wide/from16 v26, v24

    :cond_1
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v28, v11

    check-cast v28, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;

    .line 175
    sget-object v11, Lo/Vi;->b:Lo/Vi;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Ljava/lang/String;

    iget v15, v0, Lo/Vv;->i:F

    const-wide/16 v16, 0x0

    move-object v12, v9

    move-object/from16 v13, v28

    move-object/from16 v18, v23

    invoke-virtual/range {v11 .. v18}, Lo/Vi;->a(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;Ljava/lang/String;FJLcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;)Landroid/view/animation/Animation;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 176
    invoke-virtual {v11}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v12

    add-long v12, v12, v26

    invoke-virtual {v11, v12, v13}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 177
    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 178
    invoke-virtual {v11}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v12

    invoke-virtual {v11}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v14

    add-long/2addr v12, v14

    cmp-long v11, v12, v24

    if-lez v11, :cond_2

    move-wide/from16 v24, v12

    :cond_2
    move-wide/from16 v26, v12

    move-object/from16 v23, v28

    goto :goto_2

    :cond_3
    move-wide/from16 v11, v24

    goto :goto_1

    .line 188
    :cond_4
    invoke-virtual {v10}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v8

    const-string v13, "aSet.animations"

    invoke-static {v8, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    const/4 v13, 0x1

    xor-int/2addr v8, v13

    if-eqz v8, :cond_0

    cmp-long v8, v11, v6

    if-lez v8, :cond_5

    .line 190
    sget-object v4, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v4, Lo/MessagePdu;

    move-object v4, v10

    move-wide v6, v11

    .line 194
    :cond_5
    invoke-virtual {v10, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 195
    invoke-virtual {v2, v9, v10}, Lo/UY;->d(Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    .line 200
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 202
    :cond_7
    invoke-virtual {v2}, Lo/UY;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 203
    sget-object v2, Lo/Vv;->a:Lo/Vv$TaskDescription;

    check-cast v2, Lo/MessagePdu;

    if-eqz v1, :cond_9

    .line 204
    invoke-interface {v1, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 206
    :cond_8
    invoke-virtual {v2}, Lo/UY;->d()V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 5

    const-string v0, "animationListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lo/Vv;->a:Lo/Vv$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    iget-object v1, p0, Lo/Vv;->d:Ljava/util/Map;

    if-nez v1, :cond_0

    const-string v2, "timerAnimations"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const-string v2, "dismissTimeoutFallbackTutorial"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 135
    :cond_1
    iget-object v1, p0, Lo/Vv;->b:Ljava/util/Map;

    if-nez v1, :cond_2

    const-string v3, "backgroundAnimations"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 136
    :cond_3
    iget-object v1, p0, Lo/Vv;->e:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    const-string v2, "choiceAnimations"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x0

    .line 262
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_5

    invoke-static {}, Lo/akz;->c()V

    :cond_5
    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_6

    const-string v2, "dismissNonSelectedImmediate"

    .line 137
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_6
    move v2, v4

    goto :goto_0

    .line 139
    :cond_7
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lo/Vv;->d(Ljava/util/Map;Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public final b(Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;",
            "Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visualTransitions"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementAnimations"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;->stateMap()Ljava/util/Map;

    move-result-object p2

    const-string v0, "visualTransitions.stateMap()"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->background()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    invoke-direct {p0, p2, v0, p3}, Lo/Vv;->c(Ljava/util/Map;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lo/Vv;->b:Ljava/util/Map;

    .line 25
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->timer()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    invoke-direct {p0, p2, v0, p3}, Lo/Vv;->c(Ljava/util/Map;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lo/Vv;->d:Ljava/util/Map;

    .line 26
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->notification()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    invoke-direct {p0, p2, v0, p3}, Lo/Vv;->c(Ljava/util/Map;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lo/Vv;->c:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Vv;->e:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->choices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    .line 215
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;

    const-string v1, "choiceAnimations"

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lo/Vv;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_1
    iget-object v2, p0, Lo/Vv;->e:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    invoke-direct {p0, p2, v0, p3}, Lo/Vv;->c(Ljava/util/Map;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final b(ZIZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .line 89
    sget-object v0, Lo/Vv;->a:Lo/Vv$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "choiceAnimations"

    const-string v2, "backgroundAnimations"

    const-string v3, "timerAnimations"

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    .line 92
    iget-object p1, p0, Lo/Vv;->d:Ljava/util/Map;

    if-nez p1, :cond_0

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const-string p3, "dismissSelectedLazy"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 93
    :cond_1
    iget-object p1, p0, Lo/Vv;->b:Ljava/util/Map;

    if-nez p1, :cond_2

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 94
    :cond_3
    iget-object p1, p0, Lo/Vv;->e:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_e

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_e

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 96
    :cond_5
    iget-object p1, p0, Lo/Vv;->d:Ljava/util/Map;

    if-nez p1, :cond_6

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    const-string p3, "dismissTimeout"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 97
    :cond_7
    iget-object p1, p0, Lo/Vv;->b:Ljava/util/Map;

    if-nez p1, :cond_8

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_8
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 98
    :cond_9
    iget-object p1, p0, Lo/Vv;->e:Ljava/util/ArrayList;

    if-nez p1, :cond_a

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_a
    check-cast p1, Ljava/lang/Iterable;

    const/4 p3, 0x0

    .line 243
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    if-gez p3, :cond_b

    invoke-static {}, Lo/akz;->c()V

    :cond_b
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_d

    if-ne p3, p2, :cond_c

    const-string p3, "dismissNonFocusedSelectedTimeout"

    goto :goto_1

    :cond_c
    const-string p3, "dismissNonSelectedTimeout"

    .line 99
    :goto_1
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-eqz p3, :cond_d

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_d
    move p3, v2

    goto :goto_0

    .line 102
    :cond_e
    :goto_2
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0, p4}, Lo/Vv;->d(Ljava/util/Map;Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public final b(ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 143
    sget-object v0, Lo/Vv;->a:Lo/Vv$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    const-string v0, "notificationAnimations"

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lo/Vv;->c:Ljava/util/Map;

    if-nez p1, :cond_0

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const-string v0, "init"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 146
    invoke-direct {p0, p1, p2}, Lo/Vv;->d(Ljava/util/Map;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 150
    :cond_1
    iget-object p1, p0, Lo/Vv;->c:Ljava/util/Map;

    if-nez p1, :cond_2

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    const-string v1, "hide"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lo/Vv;->c:Ljava/util/Map;

    if-nez p1, :cond_4

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    const-string v0, "dismissTimeout"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    :goto_0
    if-eqz p1, :cond_5

    .line 151
    invoke-direct {p0, p1, p2}, Lo/Vv;->d(Ljava/util/Map;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final d(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 6

    .line 78
    sget-object v0, Lo/Vv;->a:Lo/Vv$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    iget-object v1, p0, Lo/Vv;->d:Ljava/util/Map;

    if-nez v1, :cond_0

    const-string v2, "timerAnimations"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const-string v2, "init"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 81
    :cond_1
    iget-object v1, p0, Lo/Vv;->b:Ljava/util/Map;

    if-nez v1, :cond_2

    const-string v3, "backgroundAnimations"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 82
    :cond_3
    iget-object v1, p0, Lo/Vv;->e:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    const-string v3, "choiceAnimations"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    check-cast v1, Ljava/lang/Iterable;

    const/4 v3, 0x0

    .line 235
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_5

    invoke-static {}, Lo/akz;->c()V

    :cond_5
    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 83
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_6

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_6
    move v3, v5

    goto :goto_0

    .line 85
    :cond_7
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lo/Vv;->d(Ljava/util/Map;Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public final d(ZILandroid/view/animation/Animation$AnimationListener;)V
    .locals 5

    const-string v0, "listener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lo/Vv;->a:Lo/Vv$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "choiceAnimations"

    const/4 v2, 0x0

    const-string v3, "backgroundAnimations"

    const-string v4, "timerAnimations"

    if-eqz p1, :cond_8

    .line 116
    iget-object p1, p0, Lo/Vv;->d:Ljava/util/Map;

    if-nez p1, :cond_0

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const-string v4, "selectedLazy"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 117
    :cond_1
    iget-object p1, p0, Lo/Vv;->b:Ljava/util/Map;

    if-nez p1, :cond_2

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 118
    :cond_3
    iget-object p1, p0, Lo/Vv;->e:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    check-cast p1, Ljava/lang/Iterable;

    .line 251
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    if-gez v2, :cond_5

    invoke-static {}, Lo/akz;->c()V

    :cond_5
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_7

    if-ne v2, p2, :cond_6

    move-object v2, v4

    goto :goto_1

    :cond_6
    const-string v2, "dismissNonSelectedLazy"

    .line 119
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    move v2, v3

    goto :goto_0

    .line 122
    :cond_8
    iget-object p1, p0, Lo/Vv;->d:Ljava/util/Map;

    if-nez p1, :cond_9

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_9
    const-string v4, "dismissImmediate"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_a

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 123
    :cond_a
    iget-object p1, p0, Lo/Vv;->b:Ljava/util/Map;

    if-nez p1, :cond_b

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_b
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 124
    :cond_c
    iget-object p1, p0, Lo/Vv;->e:Ljava/util/ArrayList;

    if-nez p1, :cond_d

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_d
    check-cast p1, Ljava/lang/Iterable;

    .line 254
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    if-gez v2, :cond_e

    invoke-static {}, Lo/akz;->c()V

    :cond_e
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_10

    if-ne v2, p2, :cond_f

    const-string v2, "dismissSelectedImmediate"

    goto :goto_3

    :cond_f
    const-string v2, "dismissNonSelectedImmediate"

    .line 125
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_10
    move v2, v3

    goto :goto_2

    .line 128
    :cond_11
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0, p3}, Lo/Vv;->d(Ljava/util/Map;Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public final e(ZILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    iget-object v1, p0, Lo/Vv;->e:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const-string v2, "choiceAnimations"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const-string p1, "focused"

    goto :goto_0

    :cond_1
    const-string p1, "unfocused"

    :goto_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 108
    :cond_2
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0, p3}, Lo/Vv;->d(Ljava/util/Map;Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
