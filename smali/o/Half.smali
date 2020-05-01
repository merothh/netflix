.class public final Lo/Half;
.super Lo/TextClassificationContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Half$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/Half$StateListAnimator;

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lo/TextClassifierImpl;

.field private final b:Lo/TextClassificationManager;

.field private final d:Lcom/netflix/android/moneyball/FlowMode;

.field private final e:Lo/ParagraphStyle;

.field private final f:Lo/NotificationRankingUpdate;

.field private final g:Lo/Deprecated$ActionBar;

.field private final h:Lo/SuggestionService;

.field private final i:Lo/DrawableMarginSpan;

.field private final j:Lo/InputBinding;

.field private final k:Lo/SentenceSuggestionsInfo;

.field private final m:Lo/BackgroundColorSpan;

.field private final n:Lo/ScaleXSpan;

.field private final o:Lo/HideReturnsTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/Half$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Half$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Half;->c:Lo/Half$StateListAnimator;

    const-string v0, "phoneNumber"

    const-string v1, "countryCode"

    const-string v2, "availableCountries"

    .line 54
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/Half;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/ParagraphStyle;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/SuggestionService;Lo/BackgroundColorSpan;Lo/HideReturnsTransformationMethod;Lo/ScaleXSpan;Lo/Voice;Lo/SentenceSuggestionsInfo;)V
    .locals 16
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    const-string v15, "signupErrorReporter"

    invoke-static {v1, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "touViewModelInitializer"

    invoke-static {v2, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "signupNetworkManager"

    invoke-static {v3, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "signupLogger"

    invoke-static {v4, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "stringProvider"

    invoke-static {v5, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "viewModelProviderFactory"

    invoke-static {v6, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "stepsViewModelInitializer"

    invoke-static {v7, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "changePlanViewModelInitializer"

    invoke-static {v8, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "errorMessageViewModelInitializer"

    invoke-static {v9, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "startMembershipButtonViewModelInitializer"

    invoke-static {v10, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "giftCodeAppliedViewModelInitializer"

    invoke-static {v11, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "upgradeOnUsViewModelInitializer"

    invoke-static {v12, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "formFieldViewModelConverterFactory"

    invoke-static {v13, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "mopLogos"

    invoke-static {v14, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {v0, v1, v13}, Lo/TextClassificationContext;-><init>(Lo/SystemTextClassifier;Lo/Voice;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lo/Half;->d:Lcom/netflix/android/moneyball/FlowMode;

    iput-object v2, v0, Lo/Half;->e:Lo/ParagraphStyle;

    iput-object v3, v0, Lo/Half;->a:Lo/TextClassifierImpl;

    iput-object v4, v0, Lo/Half;->b:Lo/TextClassificationManager;

    iput-object v5, v0, Lo/Half;->j:Lo/InputBinding;

    iput-object v6, v0, Lo/Half;->g:Lo/Deprecated$ActionBar;

    iput-object v7, v0, Lo/Half;->i:Lo/DrawableMarginSpan;

    iput-object v8, v0, Lo/Half;->f:Lo/NotificationRankingUpdate;

    iput-object v9, v0, Lo/Half;->h:Lo/SuggestionService;

    iput-object v10, v0, Lo/Half;->m:Lo/BackgroundColorSpan;

    iput-object v11, v0, Lo/Half;->o:Lo/HideReturnsTransformationMethod;

    iput-object v12, v0, Lo/Half;->n:Lo/ScaleXSpan;

    iput-object v14, v0, Lo/Half;->k:Lo/SentenceSuggestionsInfo;

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/Triple;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Lo/FastImmutableArraySet;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;",
            "Lcom/netflix/android/moneyball/GetField;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 60
    iget-object v0, v6, Lo/Half;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v2, "dcbOption"

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    const-string v1, "SignupNativeDataManipulationError"

    const-string v2, "SignupNativeFieldError"

    if-eqz v0, :cond_4

    .line 61
    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "paymentLogoUrls"

    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    .line 133
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v7

    :goto_1
    if-nez v3, :cond_2

    .line 137
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_2
    move-object v3, v7

    goto :goto_3

    .line 140
    :cond_2
    instance-of v9, v3, Ljava/util/List;

    if-nez v9, :cond_3

    .line 141
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 145
    :cond_3
    :goto_3
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_4

    goto :goto_4

    .line 62
    :cond_4
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v3

    :goto_4
    check-cast v3, Ljava/lang/Iterable;

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 155
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 154
    check-cast v5, Ljava/lang/String;

    .line 64
    iget-object v8, v6, Lo/Half;->k:Lo/SentenceSuggestionsInfo;

    invoke-virtual/range {p0 .. p0}, Lo/Half;->j()Lo/SystemTextClassifier;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lo/SentenceSuggestionsInfo;->a(Lo/SystemTextClassifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 154
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 157
    :cond_6
    move-object v9, v4

    check-cast v9, Ljava/util/List;

    const-string v3, "changePaymentAction"

    if-eqz v0, :cond_9

    .line 67
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v6

    check-cast v5, Lo/TextClassificationSessionId;

    .line 159
    invoke-interface {v4, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 160
    move-object v5, v7

    check-cast v5, Lorg/json/JSONObject;

    if-nez v4, :cond_7

    :goto_6
    move-object v4, v7

    goto :goto_7

    .line 166
    :cond_7
    instance-of v5, v4, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v5, :cond_8

    goto :goto_6

    .line 171
    :cond_8
    :goto_7
    check-cast v4, Lcom/netflix/android/moneyball/fields/ActionField;

    if-eqz v4, :cond_9

    move-object/from16 v16, v4

    goto :goto_a

    .line 67
    :cond_9
    iget-object v4, v6, Lo/Half;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_c

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v6

    check-cast v5, Lo/TextClassificationSessionId;

    .line 173
    invoke-interface {v4, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    .line 174
    move-object v4, v7

    check-cast v4, Lorg/json/JSONObject;

    if-nez v3, :cond_a

    :goto_8
    move-object v3, v7

    goto :goto_9

    .line 180
    :cond_a
    instance-of v4, v3, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v4, :cond_b

    goto :goto_8

    .line 185
    :cond_b
    :goto_9
    check-cast v3, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v16, v3

    goto :goto_a

    :cond_c
    move-object/from16 v16, v7

    :goto_a
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v16, :cond_e

    .line 73
    iget-object v5, v6, Lo/Half;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_d
    move-object v5, v7

    :goto_b
    const-string v8, "simplifiedMobileSignUp"

    invoke-static {v5, v8}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_e

    const/4 v14, 0x1

    goto :goto_c

    :cond_e
    const/4 v14, 0x0

    .line 80
    :goto_c
    iget-object v5, v6, Lo/Half;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_12

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v6

    check-cast v8, Lo/TextClassificationSessionId;

    const-string v10, "recognizedFormerMember"

    .line 77
    move-object v11, v7

    check-cast v11, Lorg/json/JSONObject;

    .line 186
    invoke-interface {v5, v10}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_d

    :cond_f
    move-object v5, v7

    :goto_d
    if-nez v5, :cond_10

    .line 190
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v2, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_e
    move-object v5, v7

    goto :goto_f

    .line 193
    :cond_10
    instance-of v12, v5, Ljava/lang/Boolean;

    if-nez v12, :cond_11

    .line 194
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v1, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_e

    .line 198
    :cond_11
    :goto_f
    check-cast v5, Ljava/lang/Boolean;

    goto :goto_10

    :cond_12
    move-object v5, v7

    :goto_10
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v8}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 82
    iget-object v5, v6, Lo/Half;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_16

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v6

    check-cast v8, Lo/TextClassificationSessionId;

    .line 199
    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    const-string v8, "isGlobeOnly"

    .line 200
    invoke-interface {v5, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_11

    :cond_13
    move-object v5, v7

    :goto_11
    if-nez v5, :cond_14

    :goto_12
    move-object v5, v7

    goto :goto_13

    .line 207
    :cond_14
    instance-of v8, v5, Ljava/lang/Boolean;

    if-nez v8, :cond_15

    goto :goto_12

    .line 212
    :cond_15
    :goto_13
    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v10, v3

    goto :goto_14

    :cond_16
    const/4 v10, 0x0

    .line 84
    :goto_14
    iget-object v3, v6, Lo/Half;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_17
    move-object v3, v7

    :goto_15
    const-string v5, "editdcbOptionMode"

    invoke-static {v3, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 85
    iget-object v3, v6, Lo/Half;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_1b

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v6

    check-cast v5, Lo/TextClassificationSessionId;

    .line 213
    move-object v5, v7

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "partnerDisplayName"

    .line 214
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_16

    :cond_18
    move-object v3, v7

    :goto_16
    if-nez v3, :cond_19

    :goto_17
    move-object v3, v7

    goto :goto_18

    .line 221
    :cond_19
    instance-of v5, v3, Ljava/lang/String;

    if-nez v5, :cond_1a

    goto :goto_17

    .line 226
    :cond_1a
    :goto_18
    check-cast v3, Ljava/lang/String;

    move-object v12, v3

    goto :goto_19

    :cond_1b
    move-object v12, v7

    :goto_19
    if-eqz v0, :cond_1e

    .line 87
    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v6

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v8, "dcbStartAction"

    .line 227
    invoke-interface {v3, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    .line 228
    move-object v15, v7

    check-cast v15, Lorg/json/JSONObject;

    if-nez v3, :cond_1c

    .line 231
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v2, v8, v15}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1a
    move-object v3, v7

    goto :goto_1b

    .line 234
    :cond_1c
    instance-of v4, v3, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v4, :cond_1d

    .line 235
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v1, v8, v15}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1a

    .line 239
    :cond_1d
    :goto_1b
    check-cast v3, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v15, v3

    goto :goto_1c

    :cond_1e
    move-object v15, v7

    :goto_1c
    if-eqz v0, :cond_22

    .line 89
    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    .line 240
    move-object v4, v7

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "paymentChoiceMode"

    .line 241
    invoke-interface {v3, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1d

    :cond_1f
    move-object v3, v7

    :goto_1d
    if-nez v3, :cond_20

    :goto_1e
    move-object v3, v7

    goto :goto_1f

    .line 248
    :cond_20
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_21

    goto :goto_1e

    .line 253
    :cond_21
    :goto_1f
    check-cast v3, Ljava/lang/String;

    goto :goto_20

    :cond_22
    move-object v3, v7

    .line 93
    :goto_20
    iget-object v4, v6, Lo/Half;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v4, :cond_26

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v6

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v8, "hasFreeTrial"

    move-object/from16 v21, v0

    .line 90
    move-object v0, v7

    check-cast v0, Lorg/json/JSONObject;

    .line 254
    invoke-interface {v4, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_21

    :cond_23
    move-object v4, v7

    :goto_21
    if-nez v4, :cond_24

    .line 258
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v8, v0}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_22
    move-object v4, v7

    goto :goto_23

    .line 261
    :cond_24
    instance-of v2, v4, Ljava/lang/Boolean;

    if-nez v2, :cond_25

    .line 262
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v1, v8, v0}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_22

    .line 266
    :cond_25
    :goto_23
    move-object v0, v4

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_24

    :cond_26
    move-object/from16 v21, v0

    move-object v0, v7

    :goto_24
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    .line 94
    iget-object v0, v6, Lo/Half;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_27

    invoke-virtual {v6, v0}, Lo/Half;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_25

    :cond_27
    move-object v0, v7

    :goto_25
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_28

    move-object v0, v7

    :cond_28
    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 95
    iget-object v0, v6, Lo/Half;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v0, :cond_2b

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v1, v6

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v1, "androidAppHash"

    .line 268
    invoke-interface {v0, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    .line 269
    move-object v1, v7

    check-cast v1, Lorg/json/JSONObject;

    if-nez v0, :cond_29

    goto :goto_26

    .line 275
    :cond_29
    instance-of v1, v0, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v1, :cond_2a

    goto :goto_26

    :cond_2a
    move-object v7, v0

    .line 280
    :goto_26
    check-cast v7, Lcom/netflix/android/moneyball/fields/StringField;

    :cond_2b
    move-object/from16 v20, v7

    check-cast v20, Lcom/netflix/android/moneyball/fields/Field;

    .line 76
    new-instance v0, Lo/FastImmutableArraySet;

    move-object v8, v0

    move-object/from16 v17, v3

    invoke-direct/range {v8 .. v20}, Lo/FastImmutableArraySet;-><init>(Ljava/util/List;ZZLjava/lang/String;ZZLcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/android/moneyball/fields/Field;)V

    .line 98
    move-object/from16 v1, v21

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    sget-object v2, Lo/Half;->l:Ljava/util/List;

    invoke-virtual {v6, v1, v2}, Lo/Half;->a(Lcom/netflix/android/moneyball/GetField;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 75
    new-instance v2, Lkotlin/Triple;

    move-object/from16 v7, v21

    invoke-direct {v2, v0, v1, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final e(Landroidx/fragment/app/Fragment;)Lo/FloatMath;
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const-string v1, "fragment"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v1, v6, Lo/Half;->g:Lo/Deprecated$ActionBar;

    invoke-static {v0, v1}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object v0

    const-class v1, Lo/DisplayMetrics;

    invoke-virtual {v0, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v0

    check-cast v13, Lo/DisplayMetrics;

    .line 105
    new-instance v0, Lo/GenerateLinksLogger;

    iget-object v1, v6, Lo/Half;->b:Lo/TextClassificationManager;

    sget-object v2, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentViewModelInitializer$createDCBPaymentViewModel$startMembershipRequestLogger$1;->a:Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentViewModelInitializer$createDCBPaymentViewModel$startMembershipRequestLogger$1;

    check-cast v2, Lo/alB;

    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentViewModelInitializer$createDCBPaymentViewModel$startMembershipRequestLogger$2;->a:Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentViewModelInitializer$createDCBPaymentViewModel$startMembershipRequestLogger$2;

    check-cast v3, Lo/alB;

    invoke-direct {v0, v1, v2, v3}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    .line 106
    new-instance v1, Lo/GenerateLinksLogger;

    iget-object v8, v6, Lo/Half;->b:Lo/TextClassificationManager;

    sget-object v2, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentViewModelInitializer$createDCBPaymentViewModel$changePlanRequestLogger$1;->c:Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentViewModelInitializer$createDCBPaymentViewModel$changePlanRequestLogger$1;

    move-object v10, v2

    check-cast v10, Lo/alB;

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 107
    new-instance v2, Lo/GenerateLinksLogger;

    iget-object v15, v6, Lo/Half;->b:Lo/TextClassificationManager;

    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentViewModelInitializer$createDCBPaymentViewModel$changePaymentRequestLogger$1;->c:Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentViewModelInitializer$createDCBPaymentViewModel$changePaymentRequestLogger$1;

    move-object/from16 v17, v3

    check-cast v17, Lo/alB;

    const/16 v16, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v19}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lo/Half;->c()Lkotlin/Triple;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Triple;->c()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Lo/FastImmutableArraySet;

    invoke-virtual {v3}, Lkotlin/Triple;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3}, Lkotlin/Triple;->j()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    .line 110
    new-instance v23, Lo/FloatMath;

    .line 111
    iget-object v8, v6, Lo/Half;->a:Lo/TextClassifierImpl;

    .line 112
    iget-object v9, v6, Lo/Half;->j:Lo/InputBinding;

    .line 113
    iget-object v5, v6, Lo/Half;->i:Lo/DrawableMarginSpan;

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v5, v11, v7, v10}, Lo/DrawableMarginSpan;->c(Lo/DrawableMarginSpan;ZILjava/lang/Object;)Lo/DynamicDrawableSpan;

    move-result-object v11

    .line 114
    iget-object v5, v6, Lo/Half;->h:Lo/SuggestionService;

    invoke-static {v5, v10, v7, v10}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v12

    .line 116
    iget-object v5, v6, Lo/Half;->f:Lo/NotificationRankingUpdate;

    invoke-virtual {v5}, Lo/NotificationRankingUpdate;->c()Lo/NotificationStats;

    move-result-object v14

    .line 117
    iget-object v5, v6, Lo/Half;->e:Lo/ParagraphStyle;

    invoke-virtual {v5, v3}, Lo/ParagraphStyle;->e(Lcom/netflix/android/moneyball/GetField;)Lo/LocaleSpan;

    move-result-object v15

    .line 118
    iget-object v3, v6, Lo/Half;->n:Lo/ScaleXSpan;

    invoke-virtual {v3}, Lo/ScaleXSpan;->e()Lo/RelativeSizeSpan;

    move-result-object v16

    .line 119
    iget-object v3, v6, Lo/Half;->m:Lo/BackgroundColorSpan;

    invoke-virtual {v3}, Lo/BackgroundColorSpan;->b()Lo/AlignmentSpan;

    move-result-object v17

    .line 120
    move-object/from16 v21, v1

    check-cast v21, Lo/TextClassificationSessionFactory;

    .line 121
    move-object/from16 v20, v0

    check-cast v20, Lo/TextClassificationSessionFactory;

    .line 122
    move-object/from16 v22, v2

    check-cast v22, Lo/TextClassificationSessionFactory;

    const-string v1, "dcbVerify"

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v2, v4

    move v4, v5

    move-object v5, v7

    .line 124
    invoke-static/range {v0 .. v5}, Lo/TextClassificationContext;->e(Lo/TextClassificationContext;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 128
    iget-object v1, v6, Lo/Half;->o:Lo/HideReturnsTransformationMethod;

    invoke-virtual {v1}, Lo/HideReturnsTransformationMethod;->a()Lo/DigitsKeyListener;

    move-result-object v18

    move-object/from16 v7, v23

    move-object v10, v11

    move-object v11, v12

    move-object v12, v0

    .line 110
    invoke-direct/range {v7 .. v22}, Lo/FloatMath;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/TextClassifierService;Ljava/util/List;Lo/DisplayMetrics;Lo/NotificationStats;Lo/LocaleSpan;Lo/RelativeSizeSpan;Lo/AlignmentSpan;Lo/DigitsKeyListener;Lo/FastImmutableArraySet;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;)V

    return-object v23
.end method
