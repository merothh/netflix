.class public final Lo/StrictJarManifest;
.super Lo/TextClassificationContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/StrictJarManifest$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/StrictJarManifest$StateListAnimator;

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

.field private static final o:Ljava/util/List;
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
.field private final a:Lcom/netflix/android/moneyball/FlowMode;

.field private final b:Lo/TextClassifierImpl;

.field private final c:Lo/InputBinding;

.field private final e:Lo/TextClassificationManager;

.field private final f:Lo/DataDigester;

.field private final g:Lo/DrawableMarginSpan;

.field private final h:Lo/Deprecated$ActionBar;

.field private final i:Lo/TextLinksParams;

.field private final j:Lo/SuggestionService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/StrictJarManifest$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/StrictJarManifest$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/StrictJarManifest;->d:Lo/StrictJarManifest$StateListAnimator;

    const-string v0, "smsCode"

    .line 43
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/StrictJarManifest;->o:Ljava/util/List;

    const-string v0, "signupOtpCode"

    .line 46
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/StrictJarManifest;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/SuggestionService;Lo/Voice;Lo/TextLinksParams;Lo/DataDigester;)V
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

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFieldViewModelConverterFactory"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsRetrieverManager"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otpCodeResentBannerViewModelInitializer"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p2, p9}, Lo/TextClassificationContext;-><init>(Lo/SystemTextClassifier;Lo/Voice;)V

    iput-object p1, p0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/StrictJarManifest;->b:Lo/TextClassifierImpl;

    iput-object p4, p0, Lo/StrictJarManifest;->e:Lo/TextClassificationManager;

    iput-object p5, p0, Lo/StrictJarManifest;->c:Lo/InputBinding;

    iput-object p6, p0, Lo/StrictJarManifest;->h:Lo/Deprecated$ActionBar;

    iput-object p7, p0, Lo/StrictJarManifest;->g:Lo/DrawableMarginSpan;

    iput-object p8, p0, Lo/StrictJarManifest;->j:Lo/SuggestionService;

    iput-object p10, p0, Lo/StrictJarManifest;->i:Lo/TextLinksParams;

    iput-object p11, p0, Lo/StrictJarManifest;->f:Lo/DataDigester;

    return-void
.end method

.method private final c()Ljava/lang/String;
    .locals 6

    .line 86
    iget-object v0, p0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lo/StrictJarManifest;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    move-object v2, p0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v3, "billingFrequency"

    move-object v4, v1

    check-cast v4, Lorg/json/JSONObject;

    .line 260
    invoke-interface {v0, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 264
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v2, "SignupNativeFieldError"

    invoke-virtual {v0, v2, v3, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 267
    :cond_1
    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_2

    .line 268
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v0

    const-string v2, "SignupNativeDataManipulationError"

    invoke-virtual {v0, v2, v3, v4}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 272
    :goto_1
    check-cast v1, Ljava/lang/String;

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final a()Lkotlin/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lo/MemoryMappedFileDataSource;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 52
    iget-object v1, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "enterOTPCodeMode"

    invoke-static {v1, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_3

    iget-object v1, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v5, "enterOTPCodeWithTou"

    invoke-static {v1, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 53
    :goto_3
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_7

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    move-object v6, v2

    check-cast v6, Lorg/json/JSONObject;

    const-string v6, "termsOfUseText"

    .line 113
    invoke-interface {v5, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v2

    :goto_4
    if-nez v5, :cond_5

    :goto_5
    move-object v5, v2

    goto :goto_6

    .line 120
    :cond_5
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_6

    goto :goto_5

    .line 125
    :cond_6
    :goto_6
    check-cast v5, Ljava/lang/String;

    move-object/from16 v16, v5

    goto :goto_7

    :cond_7
    move-object/from16 v16, v2

    .line 60
    :goto_7
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    const-string v6, "SignupNativeDataManipulationError"

    const-string v7, "SignupNativeFieldError"

    if-eqz v5, :cond_b

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v8, v0

    check-cast v8, Lo/TextClassificationSessionId;

    const-string v9, "recognizedFormerMember"

    .line 57
    move-object v10, v2

    check-cast v10, Lorg/json/JSONObject;

    .line 126
    invoke-interface {v5, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_8

    :cond_8
    move-object v5, v2

    :goto_8
    if-nez v5, :cond_9

    .line 130
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v7, v9, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_9
    move-object v5, v2

    goto :goto_a

    .line 133
    :cond_9
    instance-of v11, v5, Ljava/lang/Boolean;

    if-nez v11, :cond_a

    .line 134
    invoke-static {v8}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v6, v9, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_9

    .line 138
    :cond_a
    :goto_a
    check-cast v5, Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object v5, v2

    :goto_b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v8}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 64
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_f

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v9, v0

    check-cast v9, Lo/TextClassificationSessionId;

    const-string v10, "hasFreeTrial"

    .line 61
    move-object v11, v2

    check-cast v11, Lorg/json/JSONObject;

    .line 139
    invoke-interface {v5, v10}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_c

    :cond_c
    move-object v5, v2

    :goto_c
    if-nez v5, :cond_d

    .line 143
    invoke-static {v9}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v7, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_d
    move-object v5, v2

    goto :goto_e

    .line 146
    :cond_d
    instance-of v12, v5, Ljava/lang/Boolean;

    if-nez v12, :cond_e

    .line 147
    invoke-static {v9}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v6, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_d

    .line 151
    :cond_e
    :goto_e
    check-cast v5, Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object v5, v2

    :goto_f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 65
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    const-string v9, ""

    if-eqz v5, :cond_13

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v10, v0

    check-cast v10, Lo/TextClassificationSessionId;

    const-string v11, "phoneNumber"

    move-object v12, v2

    check-cast v12, Lorg/json/JSONObject;

    .line 152
    invoke-interface {v5, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_10

    :cond_10
    move-object v5, v2

    :goto_10
    if-nez v5, :cond_11

    .line 156
    invoke-static {v10}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v7, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_11
    move-object v5, v2

    goto :goto_12

    .line 159
    :cond_11
    instance-of v13, v5, Ljava/lang/String;

    if-nez v13, :cond_12

    .line 160
    invoke-static {v10}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v6, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_11

    .line 164
    :cond_12
    :goto_12
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_13

    move-object v10, v5

    goto :goto_13

    :cond_13
    move-object v10, v9

    .line 67
    :goto_13
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_17

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v11, v0

    check-cast v11, Lo/TextClassificationSessionId;

    const-string v12, "countryCode"

    move-object v13, v2

    check-cast v13, Lorg/json/JSONObject;

    .line 165
    invoke-interface {v5, v12}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_14

    :cond_14
    move-object v5, v2

    :goto_14
    if-nez v5, :cond_15

    .line 169
    invoke-static {v11}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v7, v12, v13}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_15
    move-object v5, v2

    goto :goto_16

    .line 172
    :cond_15
    instance-of v14, v5, Ljava/lang/String;

    if-nez v14, :cond_16

    .line 173
    invoke-static {v11}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v6, v12, v13}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_15

    .line 177
    :cond_16
    :goto_16
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_17

    move-object v9, v5

    .line 69
    :cond_17
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_1b

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v11, v0

    check-cast v11, Lo/TextClassificationSessionId;

    .line 178
    move-object v11, v2

    check-cast v11, Lorg/json/JSONObject;

    const-string v11, "isGlobeOnly"

    .line 179
    invoke-interface {v5, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_17

    :cond_18
    move-object v5, v2

    :goto_17
    if-nez v5, :cond_19

    :goto_18
    move-object v5, v2

    goto :goto_19

    .line 186
    :cond_19
    instance-of v11, v5, Ljava/lang/Boolean;

    if-nez v11, :cond_1a

    goto :goto_18

    .line 191
    :cond_1a
    :goto_19
    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 71
    :cond_1b
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_1e

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v11, v0

    check-cast v11, Lo/TextClassificationSessionId;

    const-string v12, "nextAction"

    .line 192
    invoke-interface {v5, v12}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    .line 193
    move-object v13, v2

    check-cast v13, Lorg/json/JSONObject;

    if-nez v5, :cond_1c

    .line 196
    invoke-static {v11}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v7, v12, v13}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1a
    move-object v5, v2

    goto :goto_1b

    .line 199
    :cond_1c
    instance-of v14, v5, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v14, :cond_1d

    .line 200
    invoke-static {v11}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v6, v12, v13}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1a

    .line 204
    :cond_1d
    :goto_1b
    check-cast v5, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v11, v5

    goto :goto_1c

    :cond_1e
    move-object v11, v2

    .line 72
    :goto_1c
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_21

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v12, v0

    check-cast v12, Lo/TextClassificationSessionId;

    const-string v12, "backAction"

    .line 206
    invoke-interface {v5, v12}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    .line 207
    move-object v12, v2

    check-cast v12, Lorg/json/JSONObject;

    if-nez v5, :cond_1f

    :goto_1d
    move-object v5, v2

    goto :goto_1e

    .line 213
    :cond_1f
    instance-of v12, v5, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v12, :cond_20

    goto :goto_1d

    .line 218
    :cond_20
    :goto_1e
    check-cast v5, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v12, v5

    goto :goto_1f

    :cond_21
    move-object v12, v2

    .line 73
    :goto_1f
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_24

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v13, v0

    check-cast v13, Lo/TextClassificationSessionId;

    const-string v14, "resendCodeAction"

    .line 219
    invoke-interface {v5, v14}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    .line 220
    move-object v15, v2

    check-cast v15, Lorg/json/JSONObject;

    if-nez v5, :cond_22

    .line 223
    invoke-static {v13}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v7, v14, v15}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_20
    move-object v5, v2

    goto :goto_21

    .line 226
    :cond_22
    instance-of v7, v5, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v7, :cond_23

    .line 227
    invoke-static {v13}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v5

    invoke-virtual {v5, v6, v14, v15}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_20

    .line 231
    :cond_23
    :goto_21
    check-cast v5, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object v13, v5

    goto :goto_22

    :cond_24
    move-object v13, v2

    .line 75
    :goto_22
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_27

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v6, "androidAppHash"

    .line 233
    invoke-interface {v5, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    .line 234
    move-object v6, v2

    check-cast v6, Lorg/json/JSONObject;

    if-nez v5, :cond_25

    :goto_23
    move-object v5, v2

    goto :goto_24

    .line 240
    :cond_25
    instance-of v6, v5, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v6, :cond_26

    goto :goto_23

    .line 245
    :cond_26
    :goto_24
    check-cast v5, Lcom/netflix/android/moneyball/fields/StringField;

    goto :goto_25

    :cond_27
    move-object v5, v2

    :goto_25
    move-object v15, v5

    check-cast v15, Lcom/netflix/android/moneyball/fields/Field;

    .line 77
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_2b

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    .line 246
    move-object v6, v2

    check-cast v6, Lorg/json/JSONObject;

    const-string v6, "termsOfUseMinimumVerificationAge"

    .line 247
    invoke-interface {v5, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v5

    if-eqz v5, :cond_28

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_26

    :cond_28
    move-object v5, v2

    :goto_26
    if-nez v5, :cond_29

    :goto_27
    move-object v5, v2

    goto :goto_28

    .line 254
    :cond_29
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_2a

    goto :goto_27

    .line 259
    :cond_2a
    :goto_28
    check-cast v5, Ljava/lang/String;

    move-object/from16 v17, v5

    goto :goto_29

    :cond_2b
    move-object/from16 v17, v2

    :goto_29
    if-eqz v16, :cond_2c

    .line 78
    iget-object v5, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v5, :cond_2c

    invoke-virtual {v0, v5}, Lo/StrictJarManifest;->b(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    goto :goto_2a

    :cond_2c
    move-object/from16 v18, v2

    :goto_2a
    if-eqz v16, :cond_2d

    .line 79
    invoke-direct/range {p0 .. p0}, Lo/StrictJarManifest;->c()Ljava/lang/String;

    move-result-object v2

    :cond_2d
    move-object/from16 v19, v2

    .line 56
    new-instance v2, Lo/MemoryMappedFileDataSource;

    move-object v5, v2

    move v6, v8

    move v7, v4

    move-object v8, v10

    move v10, v3

    move v14, v1

    invoke-direct/range {v5 .. v19}, Lo/MemoryMappedFileDataSource;-><init>(ZZLjava/lang/String;Ljava/lang/String;ZLcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;ZLcom/netflix/android/moneyball/fields/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v3, v0, Lo/StrictJarManifest;->a:Lcom/netflix/android/moneyball/FlowMode;

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    if-eqz v1, :cond_2e

    sget-object v1, Lo/StrictJarManifest;->l:Ljava/util/List;

    goto :goto_2b

    :cond_2e
    sget-object v1, Lo/StrictJarManifest;->o:Ljava/util/List;

    :goto_2b
    invoke-virtual {v0, v3, v1}, Lo/StrictJarManifest;->a(Lcom/netflix/android/moneyball/GetField;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 55
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final d(Landroidx/fragment/app/Fragment;)Lo/SignatureNotFoundException;
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const-string v1, "fragment"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v1, v6, Lo/StrictJarManifest;->h:Lo/Deprecated$ActionBar;

    invoke-static {v0, v1}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object v0

    const-class v1, Lo/VerbatimX509Certificate;

    invoke-virtual {v0, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v0

    check-cast v13, Lo/VerbatimX509Certificate;

    .line 91
    new-instance v0, Lo/GenerateLinksLogger;

    iget-object v1, v6, Lo/StrictJarManifest;->e:Lo/TextClassificationManager;

    sget-object v2, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryViewModelInitializer$createOTPEntryViewModel$startMembershipRequestLogger$1;->d:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryViewModelInitializer$createOTPEntryViewModel$startMembershipRequestLogger$1;

    check-cast v2, Lo/alB;

    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryViewModelInitializer$createOTPEntryViewModel$startMembershipRequestLogger$2;->a:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryViewModelInitializer$createOTPEntryViewModel$startMembershipRequestLogger$2;

    check-cast v3, Lo/alB;

    invoke-direct {v0, v1, v2, v3}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    .line 92
    new-instance v7, Lo/GenerateLinksLogger;

    iget-object v1, v6, Lo/StrictJarManifest;->e:Lo/TextClassificationManager;

    sget-object v2, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryViewModelInitializer$createOTPEntryViewModel$editPaymentRequestLogger$1;->e:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryViewModelInitializer$createOTPEntryViewModel$editPaymentRequestLogger$1;

    check-cast v2, Lo/alB;

    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryViewModelInitializer$createOTPEntryViewModel$editPaymentRequestLogger$2;->c:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryViewModelInitializer$createOTPEntryViewModel$editPaymentRequestLogger$2;

    check-cast v3, Lo/alB;

    invoke-direct {v7, v1, v2, v3}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lo/StrictJarManifest;->a()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lo/MemoryMappedFileDataSource;

    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 96
    new-instance v20, Lo/SignatureNotFoundException;

    .line 97
    iget-object v8, v6, Lo/StrictJarManifest;->c:Lo/InputBinding;

    .line 98
    iget-object v9, v6, Lo/StrictJarManifest;->i:Lo/TextLinksParams;

    .line 99
    iget-object v10, v6, Lo/StrictJarManifest;->b:Lo/TextClassifierImpl;

    .line 100
    move-object/from16 v18, v0

    check-cast v18, Lo/TextClassificationSessionFactory;

    .line 101
    iget-object v0, v6, Lo/StrictJarManifest;->g:Lo/DrawableMarginSpan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/DrawableMarginSpan;->e(Z)Lo/DynamicDrawableSpan;

    move-result-object v12

    const-string v1, "dcbVerify"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 104
    invoke-static/range {v0 .. v5}, Lo/TextClassificationContext;->e(Lo/TextClassificationContext;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 105
    iget-object v0, v6, Lo/StrictJarManifest;->j:Lo/SuggestionService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v16

    .line 106
    iget-object v0, v6, Lo/StrictJarManifest;->f:Lo/DataDigester;

    invoke-virtual {v0}, Lo/DataDigester;->e()Lo/ByteBufferFactory;

    move-result-object v17

    .line 108
    move-object/from16 v19, v7

    check-cast v19, Lo/TextClassificationSessionFactory;

    move-object/from16 v7, v20

    move-object/from16 v11, v18

    .line 96
    invoke-direct/range {v7 .. v19}, Lo/SignatureNotFoundException;-><init>(Lo/InputBinding;Lo/TextLinksParams;Lo/TextClassifierImpl;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/VerbatimX509Certificate;Lo/MemoryMappedFileDataSource;Ljava/util/List;Lo/TextClassifierService;Lo/ByteBufferFactory;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;)V

    return-object v20
.end method
