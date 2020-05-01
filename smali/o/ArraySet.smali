.class public final Lo/ArraySet;
.super Lo/TextClassificationContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ArraySet$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/ArraySet$Application;

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final j:Ljava/lang/String; = "confirm"


# instance fields
.field private final a:Lo/Deprecated$ActionBar;

.field private final b:Lo/TextClassifierImpl;

.field private final c:Lo/InputBinding;

.field private final d:Lcom/netflix/android/moneyball/FlowMode;

.field private final h:Lo/InputMethodSession;

.field private final i:Lo/SuggestionService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ArraySet$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ArraySet$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/ArraySet;->e:Lo/ArraySet$Application;

    const-string v0, "confirm"

    .line 48
    sput-object v0, Lo/ArraySet;->j:Ljava/lang/String;

    const-string v0, "securityCode"

    .line 50
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/ArraySet;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Lo/Voice;Lo/InputMethodSession;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFieldViewModelConverterFactory"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formCache"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p2, p7}, Lo/TextClassificationContext;-><init>(Lo/SystemTextClassifier;Lo/Voice;)V

    iput-object p1, p0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/ArraySet;->b:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/ArraySet;->c:Lo/InputBinding;

    iput-object p5, p0, Lo/ArraySet;->a:Lo/Deprecated$ActionBar;

    iput-object p6, p0, Lo/ArraySet;->i:Lo/SuggestionService;

    iput-object p8, p0, Lo/ArraySet;->h:Lo/InputMethodSession;

    return-void
.end method


# virtual methods
.method public final a()Lo/SingleLineTransformationMethod;
    .locals 6

    .line 102
    new-instance v0, Lo/ScrollingMovementMethod;

    .line 103
    iget-object v1, p0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    .line 104
    invoke-virtual {p0}, Lo/ArraySet;->j()Lo/SystemTextClassifier;

    move-result-object v2

    .line 105
    new-instance v3, Lo/TextToSpeechService;

    invoke-direct {v3}, Lo/TextToSpeechService;-><init>()V

    .line 106
    new-instance v4, Lo/InputMethod;

    iget-object v5, p0, Lo/ArraySet;->h:Lo/InputMethodSession;

    invoke-direct {v4, v5}, Lo/InputMethod;-><init>(Lo/InputMethodSession;)V

    .line 102
    invoke-direct {v0, v1, v2, v3, v4}, Lo/ScrollingMovementMethod;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextToSpeechService;Lo/InputMethod;)V

    .line 107
    iget-object v1, p0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    sget-object v2, Lo/ArraySet;->j:Ljava/lang/String;

    iget-object v3, p0, Lo/ArraySet;->h:Lo/InputMethodSession;

    invoke-virtual {v0, v1, v2, v3}, Lo/ScrollingMovementMethod;->d(Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;Lo/InputMethodSession;)Lo/NumberKeyListener;

    move-result-object v0

    .line 108
    new-instance v1, Lo/SingleLineTransformationMethod;

    .line 109
    iget-object v2, p0, Lo/ArraySet;->c:Lo/InputBinding;

    .line 108
    invoke-direct {v1, v2, v0}, Lo/SingleLineTransformationMethod;-><init>(Lo/InputBinding;Lo/NumberKeyListener;)V

    return-object v1
.end method

.method public final b()Lo/AlignmentSpan;
    .locals 4

    .line 93
    new-instance v0, Lo/BackgroundColorSpan;

    .line 94
    iget-object v1, p0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    .line 95
    invoke-virtual {p0}, Lo/ArraySet;->j()Lo/SystemTextClassifier;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lo/ArraySet;->c:Lo/InputBinding;

    .line 93
    invoke-direct {v0, v1, v2, v3}, Lo/BackgroundColorSpan;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    .line 98
    invoke-virtual {v0}, Lo/BackgroundColorSpan;->b()Lo/AlignmentSpan;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lo/RelativeSizeSpan;
    .locals 4

    .line 87
    new-instance v0, Lo/InflateException;

    iget-object v1, p0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    invoke-virtual {p0}, Lo/ArraySet;->j()Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/InflateException;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;)V

    .line 88
    new-instance v1, Lo/ScaleXSpan;

    iget-object v2, p0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    invoke-virtual {p0}, Lo/ArraySet;->j()Lo/SystemTextClassifier;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lo/ScaleXSpan;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InflateException;)V

    invoke-virtual {v1}, Lo/ScaleXSpan;->e()Lo/RelativeSizeSpan;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lkotlin/Pair;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lo/AndroidRuntimeException;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 56
    iget-object v1, v0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "planChoice"

    invoke-virtual {v1, v3}, Lcom/netflix/android/moneyball/FlowMode;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    move-object v14, v1

    check-cast v14, Lcom/netflix/android/moneyball/fields/ChoiceField;

    .line 59
    iget-object v1, v0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_4

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v3, "startMembershipAction"

    .line 155
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    .line 156
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 162
    :cond_2
    instance-of v3, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v3, :cond_3

    goto :goto_1

    .line 167
    :cond_3
    :goto_2
    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v4, v1

    goto :goto_3

    :cond_4
    move-object v4, v2

    .line 60
    :goto_3
    iget-object v1, v0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_7

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v3, "changePlanAction"

    .line 169
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    .line 170
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    if-nez v1, :cond_5

    :goto_4
    move-object v1, v2

    goto :goto_5

    .line 176
    :cond_5
    instance-of v3, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v3, :cond_6

    goto :goto_4

    .line 181
    :cond_6
    :goto_5
    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v5, v1

    goto :goto_6

    :cond_7
    move-object v5, v2

    .line 61
    :goto_6
    iget-object v1, v0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_a

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v3, "editPaymentAction"

    .line 183
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    .line 184
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    if-nez v1, :cond_8

    :goto_7
    move-object v1, v2

    goto :goto_8

    .line 190
    :cond_8
    instance-of v3, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v3, :cond_9

    goto :goto_7

    .line 195
    :cond_9
    :goto_8
    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v6, v1

    goto :goto_9

    :cond_a
    move-object v6, v2

    .line 62
    :goto_9
    iget-object v1, v0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_e

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 196
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "firstName"

    .line 197
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    :cond_b
    move-object v1, v2

    :goto_a
    if-nez v1, :cond_c

    :goto_b
    move-object v1, v2

    goto :goto_c

    .line 204
    :cond_c
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_d

    goto :goto_b

    .line 209
    :cond_d
    :goto_c
    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    goto :goto_d

    :cond_e
    move-object v8, v2

    .line 63
    :goto_d
    iget-object v1, v0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_12

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 210
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "lastName"

    .line 211
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    :cond_f
    move-object v1, v2

    :goto_e
    if-nez v1, :cond_10

    :goto_f
    move-object v1, v2

    goto :goto_10

    .line 218
    :cond_10
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_11

    goto :goto_f

    .line 223
    :cond_11
    :goto_10
    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    goto :goto_11

    :cond_12
    move-object v9, v2

    .line 64
    :goto_11
    iget-object v1, v0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_16

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 224
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "email"

    .line 225
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_12

    :cond_13
    move-object v1, v2

    :goto_12
    if-nez v1, :cond_14

    :goto_13
    move-object v1, v2

    goto :goto_14

    .line 232
    :cond_14
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_15

    goto :goto_13

    .line 237
    :cond_15
    :goto_14
    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    goto :goto_15

    :cond_16
    move-object v10, v2

    .line 65
    :goto_15
    iget-object v1, v0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1a

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 238
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "hasFreeTrial"

    .line 239
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_16

    :cond_17
    move-object v1, v2

    :goto_16
    if-nez v1, :cond_18

    :goto_17
    move-object v1, v2

    goto :goto_18

    .line 246
    :cond_18
    instance-of v3, v1, Ljava/lang/Boolean;

    if-nez v3, :cond_19

    goto :goto_17

    .line 251
    :cond_19
    :goto_18
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_19

    :cond_1a
    move-object v1, v2

    :goto_19
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 66
    iget-object v1, v0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1b

    const-string v7, "securityCode"

    invoke-virtual {v1, v7}, Lcom/netflix/android/moneyball/FlowMode;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    goto :goto_1a

    :cond_1b
    move-object v1, v2

    :goto_1a
    if-eqz v1, :cond_1c

    const/4 v12, 0x1

    goto :goto_1b

    :cond_1c
    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 67
    :goto_1b
    iget-object v1, v0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_20

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    .line 252
    move-object v7, v2

    check-cast v7, Lorg/json/JSONObject;

    const-string v7, "userMessage"

    .line 253
    invoke-interface {v1, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1c

    :cond_1d
    move-object v1, v2

    :goto_1c
    if-nez v1, :cond_1e

    :goto_1d
    move-object v1, v2

    goto :goto_1e

    .line 260
    :cond_1e
    instance-of v7, v1, Ljava/lang/String;

    if-nez v7, :cond_1f

    goto :goto_1d

    .line 265
    :cond_1f
    :goto_1e
    check-cast v1, Ljava/lang/String;

    move-object v13, v1

    goto :goto_1f

    :cond_20
    move-object v13, v2

    :goto_1f
    if-eqz v14, :cond_24

    .line 69
    invoke-virtual {v14}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOption()Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    if-eqz v1, :cond_24

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    .line 266
    move-object v7, v2

    check-cast v7, Lorg/json/JSONObject;

    const-string v7, "offerId"

    .line 267
    invoke-interface {v1, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_20

    :cond_21
    move-object v1, v2

    :goto_20
    if-nez v1, :cond_22

    :goto_21
    move-object v1, v2

    goto :goto_22

    .line 274
    :cond_22
    instance-of v7, v1, Ljava/lang/String;

    if-nez v7, :cond_23

    goto :goto_21

    .line 279
    :cond_23
    :goto_22
    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    goto :goto_23

    :cond_24
    move-object v15, v2

    :goto_23
    if-eqz v14, :cond_28

    .line 70
    invoke-virtual {v14}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOption()Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    if-eqz v1, :cond_28

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    move-object v7, v2

    check-cast v7, Lorg/json/JSONObject;

    const-string v7, "uouPlanId"

    .line 280
    invoke-interface {v1, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_24

    :cond_25
    move-object v1, v2

    :goto_24
    if-nez v1, :cond_26

    :goto_25
    move-object v1, v2

    goto :goto_26

    .line 287
    :cond_26
    instance-of v7, v1, Ljava/lang/String;

    if-nez v7, :cond_27

    goto :goto_25

    .line 292
    :cond_27
    :goto_26
    check-cast v1, Ljava/lang/String;

    move-object/from16 v16, v1

    goto :goto_27

    :cond_28
    move-object/from16 v16, v2

    .line 71
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lo/ArraySet;->c()Lo/RelativeSizeSpan;

    move-result-object v17

    .line 72
    invoke-virtual/range {p0 .. p0}, Lo/ArraySet;->b()Lo/AlignmentSpan;

    move-result-object v18

    .line 73
    invoke-virtual/range {p0 .. p0}, Lo/ArraySet;->a()Lo/SingleLineTransformationMethod;

    move-result-object v19

    .line 74
    invoke-virtual/range {p0 .. p0}, Lo/ArraySet;->e()Lo/LocaleSpan;

    move-result-object v20

    .line 75
    invoke-virtual/range {p0 .. p0}, Lo/ArraySet;->f()Lo/NotificationStats;

    move-result-object v21

    .line 76
    invoke-virtual/range {p0 .. p0}, Lo/ArraySet;->i()Lo/OemLockManager;

    move-result-object v22

    .line 79
    iget-object v1, v0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_2c

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v7, v0

    check-cast v7, Lo/TextClassificationSessionId;

    const-string v3, "recognizedFormerMember"

    .line 77
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    .line 293
    invoke-interface {v1, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_28

    :cond_29
    move-object v1, v2

    :goto_28
    if-nez v1, :cond_2a

    .line 297
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    const-string v7, "SignupNativeFieldError"

    invoke-virtual {v1, v7, v3, v0}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v1, v2

    goto :goto_29

    .line 300
    :cond_2a
    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_2b

    .line 301
    invoke-static {v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    const-string v2, "SignupNativeDataManipulationError"

    invoke-virtual {v1, v2, v3, v0}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    .line 305
    :cond_2b
    :goto_29
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    const/4 v0, 0x1

    goto :goto_2a

    :cond_2c
    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_2a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 58
    new-instance v0, Lo/AndroidRuntimeException;

    move-object v3, v0

    invoke-direct/range {v3 .. v22}, Lo/AndroidRuntimeException;-><init>(Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/netflix/android/moneyball/fields/ChoiceField;Ljava/lang/String;Ljava/lang/String;Lo/RelativeSizeSpan;Lo/AlignmentSpan;Lo/SingleLineTransformationMethod;Lo/LocaleSpan;Lo/NotificationStats;Lo/OemLockManager;)V

    move-object/from16 v1, p0

    .line 82
    iget-object v2, v1, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    sget-object v3, Lo/ArraySet;->f:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lo/ArraySet;->a(Lcom/netflix/android/moneyball/GetField;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 57
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final d(Landroidx/fragment/app/Fragment;)Lo/ArrayMap;
    .locals 11

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lo/ArraySet;->a:Lo/Deprecated$ActionBar;

    invoke-static {p1, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p1

    const-class v0, Lo/AndroidException;

    invoke-virtual {p1, v0}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lo/AndroidException;

    .line 139
    invoke-virtual {p0}, Lo/ArraySet;->d()Lkotlin/Pair;

    .line 141
    invoke-virtual {p0}, Lo/ArraySet;->d()Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/util/List;

    .line 142
    new-instance p1, Lo/ArrayMap;

    .line 143
    iget-object v2, p0, Lo/ArraySet;->c:Lo/InputBinding;

    const-string v6, "confirm"

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p0

    .line 146
    invoke-static/range {v5 .. v10}, Lo/TextClassificationContext;->e(Lo/TextClassificationContext;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 147
    iget-object v6, p0, Lo/ArraySet;->b:Lo/TextClassifierImpl;

    .line 148
    iget-object v0, p0, Lo/ArraySet;->i:Lo/SuggestionService;

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static {v0, v1, v7, v1}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v7

    move-object v1, p1

    .line 142
    invoke-direct/range {v1 .. v7}, Lo/ArrayMap;-><init>(Lo/InputBinding;Lo/AndroidRuntimeException;Lo/AndroidException;Ljava/util/List;Lo/TextClassifierImpl;Lo/TextClassifierService;)V

    return-object p1
.end method

.method public final e()Lo/LocaleSpan;
    .locals 4

    .line 115
    new-instance v0, Lo/ParagraphStyle;

    .line 116
    iget-object v1, p0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    .line 117
    invoke-virtual {p0}, Lo/ArraySet;->j()Lo/SystemTextClassifier;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lo/ArraySet;->c:Lo/InputBinding;

    .line 115
    invoke-direct {v0, v1, v2, v3}, Lo/ParagraphStyle;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    .line 119
    iget-object v1, p0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    invoke-virtual {v0, v1}, Lo/ParagraphStyle;->e(Lcom/netflix/android/moneyball/GetField;)Lo/LocaleSpan;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lo/NotificationStats;
    .locals 4

    .line 123
    new-instance v0, Lo/NotificationRankingUpdate;

    .line 124
    iget-object v1, p0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    .line 125
    invoke-virtual {p0}, Lo/ArraySet;->j()Lo/SystemTextClassifier;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lo/ArraySet;->c:Lo/InputBinding;

    .line 123
    invoke-direct {v0, v1, v2, v3}, Lo/NotificationRankingUpdate;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    .line 127
    invoke-virtual {v0}, Lo/NotificationRankingUpdate;->c()Lo/NotificationStats;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lo/OemLockManager;
    .locals 3

    .line 131
    new-instance v0, Lo/TileService;

    .line 132
    iget-object v1, p0, Lo/ArraySet;->d:Lcom/netflix/android/moneyball/FlowMode;

    .line 133
    invoke-virtual {p0}, Lo/ArraySet;->j()Lo/SystemTextClassifier;

    move-result-object v2

    .line 131
    invoke-direct {v0, v1, v2}, Lo/TileService;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;)V

    .line 134
    invoke-virtual {v0}, Lo/TileService;->b()Lo/OemLockManager;

    move-result-object v0

    return-object v0
.end method
