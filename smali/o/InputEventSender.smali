.class public final Lo/InputEventSender;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final a:Lo/TextClassifierImpl;

.field private final b:Lo/InputBinding;

.field private final c:Lo/Deprecated$ActionBar;

.field private final d:Lo/TextClassificationManager;

.field private final e:Lcom/netflix/android/moneyball/FlowMode;

.field private final f:Lo/ScaleXSpan;

.field private final g:Lo/SuggestionService;

.field private final h:Lo/DrawableMarginSpan;

.field private final i:Lo/InflateException;

.field private final j:Lo/RemoteAnimationAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/ScaleXSpan;Lo/SuggestionService;Lo/InflateException;Lo/RemoteAnimationAdapter;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupLogger"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModelInitializer"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeOnUsViewModelInitializer"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planOptionViewModelInitializer"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planCardViewModelInitializer"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p2}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p1, p0, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/InputEventSender;->a:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/InputEventSender;->d:Lo/TextClassificationManager;

    iput-object p5, p0, Lo/InputEventSender;->b:Lo/InputBinding;

    iput-object p6, p0, Lo/InputEventSender;->c:Lo/Deprecated$ActionBar;

    iput-object p7, p0, Lo/InputEventSender;->h:Lo/DrawableMarginSpan;

    iput-object p8, p0, Lo/InputEventSender;->f:Lo/ScaleXSpan;

    iput-object p9, p0, Lo/InputEventSender;->g:Lo/SuggestionService;

    iput-object p10, p0, Lo/InputEventSender;->i:Lo/InflateException;

    iput-object p11, p0, Lo/InputEventSender;->j:Lo/RemoteAnimationAdapter;

    return-void
.end method

.method private final c(Lo/InputEventReceiver;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Lo/InputEventReceiver;->b()Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p1}, Lo/InputEventReceiver;->b()Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public static final synthetic c(Lo/InputEventSender;Lo/InputEventReceiver;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lo/InputEventSender;->c(Lo/InputEventReceiver;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lo/InputEventSender;ZILjava/lang/Object;)Lo/RenderNodeAnimator;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 193
    :cond_0
    invoke-virtual {p0, p1}, Lo/InputEventSender;->c(Z)Lo/RenderNodeAnimator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/GestureDetector;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 79
    iget-object v1, v0, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    const-string v2, "SignupNativeDataManipulationError"

    const-string v3, "SignupNativeFieldError"

    const-string v4, ","

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v7, "fields"

    const-string v8, "rows"

    .line 82
    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    .line 80
    invoke-static {v7}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 361
    invoke-static {v1, v7}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 362
    move-object v8, v7

    check-cast v8, Ljava/lang/Iterable;

    move-object v9, v4

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 365
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v3, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    move-object v1, v5

    goto :goto_1

    .line 368
    :cond_0
    instance-of v9, v1, Ljava/util/List;

    if-nez v9, :cond_1

    .line 369
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 373
    :cond_1
    :goto_1
    check-cast v1, Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v1, v5

    .line 85
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_12

    .line 88
    check-cast v1, Ljava/lang/Iterable;

    .line 374
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 91
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v12, v8

    check-cast v12, Ljava/util/Map;

    .line 92
    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    const-string v9, "moneyballField"

    invoke-static {v9}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 376
    invoke-static {v7, v9}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    .line 377
    move-object v13, v9

    check-cast v13, Ljava/lang/Iterable;

    move-object v14, v4

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const/16 v21, 0x0

    invoke-static/range {v13 .. v21}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-object v9, v5

    check-cast v9, Lorg/json/JSONObject;

    if-nez v10, :cond_3

    :goto_4
    move-object v10, v5

    goto :goto_5

    .line 383
    :cond_3
    instance-of v11, v10, Ljava/lang/String;

    if-nez v11, :cond_4

    goto :goto_4

    .line 92
    :cond_4
    :goto_5
    check-cast v10, Ljava/lang/String;

    const-string v11, "label"

    const-string v13, "string"

    const-string v14, "messages"

    .line 97
    filled-new-array {v14, v11, v13}, [Ljava/lang/String;

    move-result-object v15

    .line 94
    invoke-static {v15}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 389
    invoke-static {v7, v15}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    .line 390
    move-object/from16 v17, v15

    check-cast v17, Ljava/lang/Iterable;

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3e

    const/16 v25, 0x0

    invoke-static/range {v17 .. v25}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    if-nez v5, :cond_5

    .line 393
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v3, v15, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_6
    const/4 v5, 0x0

    goto :goto_7

    .line 396
    :cond_5
    instance-of v0, v5, Ljava/lang/String;

    if-nez v0, :cond_6

    .line 397
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v2, v15, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_6

    .line 93
    :cond_6
    :goto_7
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    const-string v5, "stringData"

    .line 104
    filled-new-array {v14, v11, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-static {v5}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 402
    invoke-static {v7, v5}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    .line 403
    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/Iterable;

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3e

    const/16 v25, 0x0

    invoke-static/range {v17 .. v25}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    if-nez v8, :cond_7

    :goto_8
    const/4 v8, 0x0

    goto :goto_9

    .line 409
    :cond_7
    instance-of v5, v8, Ljava/util/Map;

    if-nez v5, :cond_8

    goto :goto_8

    .line 100
    :cond_8
    :goto_9
    check-cast v8, Ljava/util/Map;

    const/4 v5, 0x2

    if-eqz v8, :cond_c

    .line 415
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v9

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v15, Ljava/util/Collection;

    .line 416
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 109
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v20, v1

    new-array v1, v5, [Ljava/lang/String;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v18, v1, v19

    const-string v18, "value"

    const/16 v17, 0x1

    aput-object v18, v1, v17

    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 419
    invoke-static {v8, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    .line 420
    move-object/from16 v21, v1

    check-cast v21, Ljava/lang/Iterable;

    move-object/from16 v22, v4

    check-cast v22, Ljava/lang/CharSequence;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3e

    const/16 v29, 0x0

    invoke-static/range {v21 .. v29}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    if-nez v5, :cond_9

    :goto_b
    const/4 v5, 0x0

    goto :goto_c

    .line 426
    :cond_9
    instance-of v1, v5, Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_b

    .line 109
    :cond_a
    :goto_c
    invoke-interface {v12, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lo/akj;->a:Lo/akj;

    invoke-interface {v15, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v20

    const/4 v5, 0x2

    goto :goto_a

    :cond_b
    move-object/from16 v20, v1

    .line 432
    check-cast v15, Ljava/util/List;

    goto :goto_d

    :cond_c
    move-object/from16 v20, v1

    :goto_d
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v14, v5, v8

    const-string v8, "Weekly"

    .line 114
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "(this as java.lang.String).toLowerCase()"

    invoke-static {v8, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x1

    aput-object v8, v5, v11

    const/4 v8, 0x2

    aput-object v13, v5, v8

    .line 112
    invoke-static {v5}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 434
    invoke-static {v7, v5}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    .line 435
    move-object/from16 v21, v5

    check-cast v21, Ljava/lang/Iterable;

    move-object/from16 v22, v4

    check-cast v22, Ljava/lang/CharSequence;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3e

    const/16 v29, 0x0

    invoke-static/range {v21 .. v29}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    if-nez v8, :cond_d

    :goto_e
    const/4 v8, 0x0

    goto :goto_f

    .line 441
    :cond_d
    instance-of v5, v8, Ljava/lang/String;

    if-nez v5, :cond_e

    goto :goto_e

    .line 111
    :cond_e
    :goto_f
    move-object v5, v8

    check-cast v5, Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v14, v1, v8

    const-string v8, "Monthly"

    .line 121
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    aput-object v8, v1, v9

    const/4 v8, 0x2

    aput-object v13, v1, v8

    .line 119
    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 448
    invoke-static {v7, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    .line 449
    move-object/from16 v21, v1

    check-cast v21, Ljava/lang/Iterable;

    move-object/from16 v22, v4

    check-cast v22, Ljava/lang/CharSequence;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3e

    const/16 v29, 0x0

    invoke-static/range {v21 .. v29}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    if-nez v7, :cond_f

    :goto_10
    const/4 v7, 0x0

    goto :goto_11

    .line 455
    :cond_f
    instance-of v1, v7, Ljava/lang/String;

    if-nez v1, :cond_10

    goto :goto_10

    .line 118
    :cond_10
    :goto_11
    move-object v14, v7

    check-cast v14, Ljava/lang/String;

    .line 125
    new-instance v1, Lo/GestureDetector;

    move-object v9, v1

    move-object v11, v0

    move-object v13, v5

    invoke-direct/range {v9 .. v14}, Lo/GestureDetector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    goto/16 :goto_3

    .line 134
    :cond_11
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 136
    :cond_12
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 137
    invoke-virtual/range {p0 .. p0}, Lo/InputEventSender;->j()Lo/SystemTextClassifier;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "SignupNativeFieldError"

    const-string v9, "planChoice"

    invoke-static/range {v7 .. v12}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    .line 140
    :cond_13
    check-cast v6, Ljava/util/List;

    return-object v6
.end method

.method public final b(Landroidx/fragment/app/Fragment;)Lo/RoundScrollbarRenderer;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fragment"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v2, v0, Lo/InputEventSender;->c:Lo/Deprecated$ActionBar;

    invoke-static {v1, v2}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object v1

    const-class v2, Lo/InputEventConsistencyVerifier;

    invoke-virtual {v1, v2}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v1

    const-string v2, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lo/InputEventConsistencyVerifier;

    .line 172
    invoke-virtual/range {p0 .. p0}, Lo/InputEventSender;->c()Lo/InputEventReceiver;

    move-result-object v5

    .line 173
    new-instance v1, Lo/GenerateLinksLogger;

    iget-object v8, v0, Lo/InputEventSender;->d:Lo/TextClassificationManager;

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModelInitializer$createPlanSelectionViewModel_Ab22912$planSelectionRequestLogger$1;

    invoke-direct {v2, v0, v5}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModelInitializer$createPlanSelectionViewModel_Ab22912$planSelectionRequestLogger$1;-><init>(Lo/InputEventSender;Lo/InputEventReceiver;)V

    move-object v9, v2

    check-cast v9, Lo/alB;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 175
    new-instance v2, Lo/RoundScrollbarRenderer;

    .line 176
    iget-object v4, v0, Lo/InputEventSender;->b:Lo/InputBinding;

    .line 179
    iget-object v3, v0, Lo/InputEventSender;->i:Lo/InflateException;

    invoke-virtual {v3}, Lo/InflateException;->c()Ljava/util/List;

    move-result-object v7

    .line 180
    iget-object v3, v0, Lo/InputEventSender;->f:Lo/ScaleXSpan;

    invoke-virtual {v3}, Lo/ScaleXSpan;->e()Lo/RelativeSizeSpan;

    move-result-object v8

    .line 181
    iget-object v3, v0, Lo/InputEventSender;->j:Lo/RemoteAnimationAdapter;

    invoke-virtual {v3}, Lo/RemoteAnimationAdapter;->e()Ljava/util/List;

    move-result-object v9

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 182
    invoke-static {v0, v10, v3, v11}, Lo/InputEventSender;->c(Lo/InputEventSender;ZILjava/lang/Object;)Lo/RenderNodeAnimator;

    move-result-object v12

    .line 183
    invoke-virtual/range {p0 .. p0}, Lo/InputEventSender;->b()Ljava/util/List;

    move-result-object v13

    .line 184
    check-cast v1, Lo/TextClassificationSessionFactory;

    .line 185
    iget-object v14, v0, Lo/InputEventSender;->h:Lo/DrawableMarginSpan;

    invoke-virtual {v14, v10}, Lo/DrawableMarginSpan;->e(Z)Lo/DynamicDrawableSpan;

    move-result-object v14

    .line 186
    iget-object v15, v0, Lo/InputEventSender;->a:Lo/TextClassifierImpl;

    .line 187
    iget-object v10, v0, Lo/InputEventSender;->g:Lo/SuggestionService;

    invoke-static {v10, v11, v3, v11}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v16

    .line 188
    invoke-virtual/range {p0 .. p0}, Lo/InputEventSender;->j()Lo/SystemTextClassifier;

    move-result-object v17

    move-object v3, v2

    move-object v10, v12

    move-object v11, v13

    move-object v12, v1

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 175
    invoke-direct/range {v3 .. v16}, Lo/RoundScrollbarRenderer;-><init>(Lo/InputBinding;Lo/InputEventReceiver;Lo/InputEventConsistencyVerifier;Ljava/util/List;Lo/RelativeSizeSpan;Ljava/util/List;Lo/RenderNodeAnimator;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/SystemTextClassifier;)V

    return-object v2
.end method

.method public final c(Landroidx/fragment/app/Fragment;)Lo/InputChannel;
    .locals 13

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lo/InputEventSender;->c:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/InputEventConsistencyVerifier;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lo/InputEventConsistencyVerifier;

    .line 151
    invoke-virtual {p0}, Lo/InputEventSender;->c()Lo/InputEventReceiver;

    move-result-object v3

    .line 153
    new-instance p1, Lo/GenerateLinksLogger;

    iget-object v6, p0, Lo/InputEventSender;->d:Lo/TextClassificationManager;

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModelInitializer$createPlanSelectionViewModel$planSelectionRequestLogger$1;

    invoke-direct {v0, p0, v3}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModelInitializer$createPlanSelectionViewModel$planSelectionRequestLogger$1;-><init>(Lo/InputEventSender;Lo/InputEventReceiver;)V

    move-object v7, v0

    check-cast v7, Lo/alB;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 155
    new-instance v0, Lo/InputChannel;

    .line 156
    iget-object v2, p0, Lo/InputEventSender;->b:Lo/InputBinding;

    .line 159
    iget-object v1, p0, Lo/InputEventSender;->i:Lo/InflateException;

    invoke-virtual {v1}, Lo/InflateException;->c()Ljava/util/List;

    move-result-object v5

    .line 160
    iget-object v1, p0, Lo/InputEventSender;->f:Lo/ScaleXSpan;

    invoke-virtual {v1}, Lo/ScaleXSpan;->e()Lo/RelativeSizeSpan;

    move-result-object v6

    .line 161
    invoke-virtual {p0}, Lo/InputEventSender;->b()Ljava/util/List;

    move-result-object v7

    .line 162
    move-object v8, p1

    check-cast v8, Lo/TextClassificationSessionFactory;

    .line 163
    iget-object p1, p0, Lo/InputEventSender;->h:Lo/DrawableMarginSpan;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lo/DrawableMarginSpan;->e(Z)Lo/DynamicDrawableSpan;

    move-result-object v9

    .line 164
    iget-object v10, p0, Lo/InputEventSender;->a:Lo/TextClassifierImpl;

    .line 165
    iget-object p1, p0, Lo/InputEventSender;->g:Lo/SuggestionService;

    const/4 v1, 0x0

    const/4 v11, 0x1

    invoke-static {p1, v1, v11, v1}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v11

    .line 166
    invoke-virtual {p0}, Lo/InputEventSender;->j()Lo/SystemTextClassifier;

    move-result-object v12

    move-object v1, v0

    .line 155
    invoke-direct/range {v1 .. v12}, Lo/InputChannel;-><init>(Lo/InputBinding;Lo/InputEventReceiver;Lo/InputEventConsistencyVerifier;Ljava/util/List;Lo/RelativeSizeSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/SystemTextClassifier;)V

    return-object v0
.end method

.method public final c()Lo/InputEventReceiver;
    .locals 30

    move-object/from16 v6, p0

    .line 42
    iget-object v0, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    const-string v7, "SignupNativeDataManipulationError"

    const-string v8, "SignupNativeFieldError"

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v2, "recognizedFormerMember"

    move-object v3, v9

    check-cast v3, Lorg/json/JSONObject;

    .line 213
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v9

    :goto_0
    if-nez v0, :cond_1

    .line 217
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v8, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v0, v9

    goto :goto_2

    .line 220
    :cond_1
    instance-of v4, v0, Ljava/lang/Boolean;

    if-nez v4, :cond_2

    .line 221
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 225
    :cond_2
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v0, v9

    :goto_3
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 43
    iget-object v0, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_7

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v2, "hasFreeTrial"

    move-object v3, v9

    check-cast v3, Lorg/json/JSONObject;

    .line 226
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v9

    :goto_4
    if-nez v0, :cond_5

    .line 230
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v8, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_5
    move-object v0, v9

    goto :goto_6

    .line 233
    :cond_5
    instance-of v4, v0, Ljava/lang/Boolean;

    if-nez v4, :cond_6

    .line 234
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 238
    :cond_6
    :goto_6
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object v0, v9

    :goto_7
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    .line 44
    iget-object v0, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_a

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v2, "planChoice"

    .line 239
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 240
    move-object v3, v9

    check-cast v3, Lorg/json/JSONObject;

    if-nez v0, :cond_8

    .line 243
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v8, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_8
    move-object v0, v9

    goto :goto_9

    .line 246
    :cond_8
    instance-of v4, v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v4, :cond_9

    .line 247
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_8

    .line 251
    :cond_9
    :goto_9
    check-cast v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-object v13, v0

    goto :goto_a

    :cond_a
    move-object v13, v9

    .line 49
    :goto_a
    iget-object v0, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_e

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    .line 252
    move-object v1, v9

    check-cast v1, Lorg/json/JSONObject;

    const-string v1, "planDuration"

    .line 253
    invoke-interface {v0, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    :cond_b
    move-object v0, v9

    :goto_b
    if-nez v0, :cond_c

    :goto_c
    move-object v0, v9

    goto :goto_d

    .line 260
    :cond_c
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_d

    goto :goto_c

    .line 265
    :cond_d
    :goto_d
    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    goto :goto_e

    :cond_e
    move-object v14, v9

    .line 50
    :goto_e
    iget-object v0, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_f

    invoke-virtual {v6, v0, v15}, Lo/InputEventSender;->a(Lcom/netflix/android/moneyball/FlowMode;Z)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_f

    :cond_f
    move-object/from16 v16, v9

    .line 51
    :goto_f
    iget-object v0, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_14

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v2, "firstName"

    move-object v3, v9

    check-cast v3, Lorg/json/JSONObject;

    .line 266
    invoke-interface {v0, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    :cond_10
    move-object v0, v9

    :goto_10
    if-nez v0, :cond_12

    if-eqz v12, :cond_11

    .line 270
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v8, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_11
    :goto_11
    move-object v0, v9

    goto :goto_12

    .line 273
    :cond_12
    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_13

    if-eqz v12, :cond_11

    .line 274
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_11

    .line 278
    :cond_13
    :goto_12
    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_13

    :cond_14
    move-object/from16 v17, v9

    .line 55
    :goto_13
    iget-object v0, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_17

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v2, "fields"

    const-string v3, "rows"

    .line 58
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 279
    invoke-static {v0, v2}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 280
    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/Iterable;

    const-string v2, ","

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3e

    const/16 v26, 0x0

    invoke-static/range {v18 .. v26}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v9

    check-cast v3, Lorg/json/JSONObject;

    if-nez v0, :cond_15

    .line 283
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v8, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_14
    move-object v0, v9

    goto :goto_15

    .line 286
    :cond_15
    instance-of v4, v0, Ljava/util/List;

    if-nez v4, :cond_16

    .line 287
    invoke-static {v1}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_14

    .line 291
    :cond_16
    :goto_15
    check-cast v0, Ljava/util/List;

    move-object/from16 v18, v0

    goto :goto_16

    :cond_17
    move-object/from16 v18, v9

    .line 62
    :goto_16
    iget-object v0, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_18
    move-object v0, v9

    :goto_17
    const-string v1, "planSelection"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    .line 63
    iget-object v1, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_19

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v2, "textDisclaimer"

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_19
    move-object v0, v9

    .line 64
    :goto_18
    iget-object v1, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1a

    const-string v2, "headerTitleMessage"

    invoke-virtual {v6, v1, v2, v10}, Lo/InputEventSender;->c(Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_19

    :cond_1a
    move-object/from16 v20, v9

    .line 65
    :goto_19
    iget-object v1, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1b

    const-string v2, "headerSubtitleMessage"

    invoke-virtual {v6, v1, v2, v10}, Lo/InputEventSender;->c(Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_1a

    :cond_1b
    move-object/from16 v21, v9

    .line 66
    :goto_1a
    iget-object v1, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_1c
    move-object v1, v9

    :goto_1b
    const-string v2, "editPlanSelection"

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v22

    .line 67
    iget-object v1, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1f

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v3, "planSelectionAction"

    .line 292
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    .line 293
    move-object v4, v9

    check-cast v4, Lorg/json/JSONObject;

    if-nez v1, :cond_1d

    .line 296
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v8, v3, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1c
    move-object v1, v9

    goto :goto_1d

    .line 299
    :cond_1d
    instance-of v5, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v5, :cond_1e

    .line 300
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v7, v3, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1c

    .line 304
    :cond_1e
    :goto_1d
    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v23, v1

    goto :goto_1e

    :cond_1f
    move-object/from16 v23, v9

    .line 69
    :goto_1e
    iget-object v1, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_23

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    .line 305
    move-object v2, v9

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "hasEligibleOffer"

    .line 306
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1f

    :cond_20
    move-object v1, v9

    :goto_1f
    if-nez v1, :cond_21

    :goto_20
    move-object v1, v9

    goto :goto_21

    .line 313
    :cond_21
    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_22

    goto :goto_20

    .line 318
    :cond_22
    :goto_21
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_22

    :cond_23
    move-object v1, v9

    :goto_22
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v25

    .line 70
    iget-object v1, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_27

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    .line 319
    move-object v2, v9

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "offerType"

    .line 320
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_23

    :cond_24
    move-object v1, v9

    :goto_23
    if-nez v1, :cond_25

    :goto_24
    move-object v1, v9

    goto :goto_25

    .line 327
    :cond_25
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_26

    goto :goto_24

    .line 332
    :cond_26
    :goto_25
    check-cast v1, Ljava/lang/String;

    move-object/from16 v26, v1

    goto :goto_26

    :cond_27
    move-object/from16 v26, v9

    .line 71
    :goto_26
    iget-object v1, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_2b

    invoke-virtual {v6, v1}, Lo/InputEventSender;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    if-eqz v1, :cond_2b

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    .line 333
    move-object v2, v9

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "offerPrice"

    .line 334
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_27

    :cond_28
    move-object v1, v9

    :goto_27
    if-nez v1, :cond_29

    :goto_28
    move-object v1, v9

    goto :goto_29

    .line 341
    :cond_29
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_2a

    goto :goto_28

    .line 346
    :cond_2a
    :goto_29
    check-cast v1, Ljava/lang/String;

    move-object/from16 v27, v1

    goto :goto_2a

    :cond_2b
    move-object/from16 v27, v9

    :goto_2a
    if-eqz v13, :cond_2c

    .line 72
    invoke-virtual {v13}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2b

    :cond_2c
    move-object v1, v9

    :goto_2b
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_2d

    move-object v1, v9

    :cond_2d
    move-object/from16 v28, v1

    check-cast v28, Ljava/lang/String;

    .line 73
    iget-object v1, v6, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_30

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "sawAllPlans"

    .line 348
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    .line 349
    move-object v2, v9

    check-cast v2, Lorg/json/JSONObject;

    if-nez v1, :cond_2e

    goto :goto_2c

    .line 355
    :cond_2e
    instance-of v2, v1, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez v2, :cond_2f

    goto :goto_2c

    :cond_2f
    move-object v9, v1

    .line 360
    :goto_2c
    check-cast v9, Lcom/netflix/android/moneyball/fields/BooleanField;

    :cond_30
    move-object/from16 v29, v9

    .line 46
    new-instance v1, Lo/InputEventReceiver;

    move-object v11, v1

    move v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v0

    move/from16 v24, v2

    invoke-direct/range {v11 .. v29}, Lo/InputEventReceiver;-><init>(ZLcom/netflix/android/moneyball/fields/ChoiceField;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/android/moneyball/fields/ActionField;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/BooleanField;)V

    return-object v1
.end method

.method public final c(Z)Lo/RenderNodeAnimator;
    .locals 11

    .line 195
    iget-object p1, p0, Lo/InputEventSender;->e:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v1, p0

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v1, "adaptiveFields"

    const-string v2, "minimizingTiers"

    const-string v3, "minimizedView"

    .line 199
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 462
    invoke-static {p1, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 463
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, ","

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 469
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_1

    goto :goto_0

    .line 474
    :cond_1
    :goto_1
    check-cast p1, Ljava/util/Map;

    goto :goto_2

    :cond_2
    move-object p1, v0

    .line 204
    :goto_2
    new-instance v1, Lo/RenderNodeAnimator;

    if-eqz p1, :cond_3

    const-string v2, "showAllPlans"

    .line 205
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v0

    :goto_3
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_4

    const-string v3, "seeMoreAffordance"

    .line 206
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v0

    :goto_4
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_5

    move-object v3, v0

    :cond_5
    check-cast v3, Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string v4, "colorSchema"

    .line 207
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v0

    :goto_5
    instance-of v5, v4, Ljava/util/List;

    if-nez v5, :cond_7

    move-object v4, v0

    :cond_7
    check-cast v4, Ljava/util/List;

    if-eqz p1, :cond_8

    const-string v5, "allPlansColorSchema"

    .line 208
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_8
    move-object p1, v0

    :goto_6
    instance-of v5, p1, Ljava/util/List;

    if-nez v5, :cond_9

    move-object p1, v0

    :cond_9
    check-cast p1, Ljava/util/List;

    .line 204
    invoke-direct {v1, v2, v3, v4, p1}, Lo/RenderNodeAnimator;-><init>(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method
