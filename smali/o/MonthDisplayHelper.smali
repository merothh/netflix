.class public final Lo/MonthDisplayHelper;
.super Lo/TextClassificationContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MonthDisplayHelper$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/MonthDisplayHelper$ActionBar;

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/List;
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

.field private final b:Lo/TextClassificationManager;

.field private final c:Lo/TextClassifierImpl;

.field private final e:Lo/ParagraphStyle;

.field private final f:Lo/SuggestionService;

.field private final g:Lo/NotificationRankingUpdate;

.field private final h:Lo/DrawableMarginSpan;

.field private final i:Lo/Deprecated$ActionBar;

.field private final j:Lo/InputBinding;

.field private final m:Lo/BackgroundColorSpan;

.field private final o:Lo/HideReturnsTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lo/MonthDisplayHelper$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/MonthDisplayHelper$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/MonthDisplayHelper;->d:Lo/MonthDisplayHelper$ActionBar;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/util/List;

    const-string v2, "coDebitBankChoice"

    .line 49
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "coDebitAccountNumber"

    .line 50
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "coDebitAccountType"

    .line 51
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "coDebitFirstName"

    .line 52
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "coDebitLastName"

    .line 53
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "coDebitCustomerIdentification"

    .line 54
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 48
    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lo/MonthDisplayHelper;->n:Ljava/util/List;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/util/List;

    const-string v2, "firstName"

    .line 57
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "lastName"

    .line 58
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "deDebitBirthDate"

    .line 59
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "deDebitBirthMonth"

    .line 60
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "deDebitBirthYear"

    .line 61
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "deDebitStreet"

    .line 62
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "deDebitPostalCode"

    .line 63
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "deDebitCity"

    .line 64
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const-string v0, "deDebitAccountNumber"

    .line 65
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 56
    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/MonthDisplayHelper;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/ParagraphStyle;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/SuggestionService;Lo/BackgroundColorSpan;Lo/HideReturnsTransformationMethod;Lo/Voice;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touViewModelInitializer"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupLogger"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModelInitializer"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanViewModelInitializer"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipButtonViewModelInitializer"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "giftCodeAppliedViewModelInitializer"

    invoke-static {p12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFieldViewModelConverterFactory"

    invoke-static {p13, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p2, p13}, Lo/TextClassificationContext;-><init>(Lo/SystemTextClassifier;Lo/Voice;)V

    iput-object p1, p0, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    iput-object p3, p0, Lo/MonthDisplayHelper;->e:Lo/ParagraphStyle;

    iput-object p4, p0, Lo/MonthDisplayHelper;->c:Lo/TextClassifierImpl;

    iput-object p5, p0, Lo/MonthDisplayHelper;->b:Lo/TextClassificationManager;

    iput-object p6, p0, Lo/MonthDisplayHelper;->j:Lo/InputBinding;

    iput-object p7, p0, Lo/MonthDisplayHelper;->i:Lo/Deprecated$ActionBar;

    iput-object p8, p0, Lo/MonthDisplayHelper;->h:Lo/DrawableMarginSpan;

    iput-object p9, p0, Lo/MonthDisplayHelper;->g:Lo/NotificationRankingUpdate;

    iput-object p10, p0, Lo/MonthDisplayHelper;->f:Lo/SuggestionService;

    iput-object p11, p0, Lo/MonthDisplayHelper;->m:Lo/BackgroundColorSpan;

    iput-object p12, p0, Lo/MonthDisplayHelper;->o:Lo/HideReturnsTransformationMethod;

    return-void
.end method

.method private final c(Lcom/netflix/android/moneyball/FlowMode;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 194
    check-cast p1, Lcom/netflix/android/moneyball/GetField;

    move-object v1, p0

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v1, "paymentChoice"

    .line 499
    invoke-interface {p1, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    .line 500
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 506
    :cond_0
    instance-of v1, p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v1, :cond_1

    goto :goto_0

    .line 511
    :cond_1
    :goto_1
    check-cast p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOptions()Ljava/util/List;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1
.end method


# virtual methods
.method public final a()Lkotlin/Triple;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Lo/MutableBoolean;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;",
            "Lcom/netflix/android/moneyball/GetField;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 133
    iget-object v0, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v2, "deDebitOption"

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v7

    .line 134
    :goto_0
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1

    invoke-virtual {v6, v1}, Lo/MonthDisplayHelper;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v7

    :goto_1
    if-eqz v1, :cond_5

    .line 135
    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    .line 348
    move-object v2, v7

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "billingFrequency"

    .line 349
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v7

    :goto_2
    if-nez v1, :cond_3

    :goto_3
    move-object v1, v7

    goto :goto_4

    .line 356
    :cond_3
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_3

    .line 361
    :cond_4
    :goto_4
    check-cast v1, Ljava/lang/String;

    move-object/from16 v24, v1

    goto :goto_5

    :cond_5
    move-object/from16 v24, v7

    :goto_5
    if-eqz v0, :cond_9

    .line 138
    move-object v1, v0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    .line 362
    move-object v2, v7

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "userMessage"

    .line 363
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v7

    :goto_6
    if-nez v1, :cond_7

    :goto_7
    move-object v1, v7

    goto :goto_8

    .line 370
    :cond_7
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_7

    .line 375
    :cond_8
    :goto_8
    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    goto :goto_9

    :cond_9
    move-object v9, v7

    .line 142
    :goto_9
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    const-string v2, "SignupNativeDataManipulationError"

    const-string v3, "SignupNativeFieldError"

    if-eqz v1, :cond_d

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "recognizedFormerMember"

    .line 139
    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    .line 376
    invoke-interface {v1, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    :cond_a
    move-object v1, v7

    :goto_a
    if-nez v1, :cond_b

    .line 380
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v3, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_b
    move-object v1, v7

    goto :goto_c

    .line 383
    :cond_b
    instance-of v10, v1, Ljava/lang/Boolean;

    if-nez v10, :cond_c

    .line 384
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_b

    .line 388
    :cond_c
    :goto_c
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object v1, v7

    :goto_d
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 143
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_11

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v6

    check-cast v5, Lo/TextClassificationSessionId;

    .line 389
    move-object v5, v7

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "hasValidMop"

    .line 390
    invoke-interface {v1, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    :cond_e
    move-object v1, v7

    :goto_e
    if-nez v1, :cond_f

    :goto_f
    move-object v1, v7

    goto :goto_10

    .line 397
    :cond_f
    instance-of v5, v1, Ljava/lang/Boolean;

    if-nez v5, :cond_10

    goto :goto_f

    .line 402
    :cond_10
    :goto_10
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_11

    :cond_11
    move-object v1, v7

    :goto_11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 147
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_15

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v6

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v8, "hasFreeTrial"

    .line 144
    move-object v11, v7

    check-cast v11, Lorg/json/JSONObject;

    .line 403
    invoke-interface {v1, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_12

    :cond_12
    move-object v1, v7

    :goto_12
    if-nez v1, :cond_13

    .line 407
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v3, v8, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_13
    move-object v1, v7

    goto :goto_14

    .line 410
    :cond_13
    instance-of v13, v1, Ljava/lang/Boolean;

    if-nez v13, :cond_14

    .line 411
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v8, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_13

    .line 415
    :cond_14
    :goto_14
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_15

    :cond_15
    move-object v1, v7

    :goto_15
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 148
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_18

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "paymentChoice"

    .line 416
    invoke-interface {v1, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    .line 417
    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    if-nez v1, :cond_16

    .line 420
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v3, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_16
    move-object v1, v7

    goto :goto_17

    .line 423
    :cond_16
    instance-of v13, v1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v13, :cond_17

    .line 424
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_16

    .line 428
    :cond_17
    :goto_17
    check-cast v1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-object v13, v1

    goto :goto_18

    :cond_18
    move-object v13, v7

    .line 150
    :goto_18
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_19
    move-object v1, v7

    :goto_19
    const-string v4, "editdeDebitOptionMode"

    invoke-static {v1, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    .line 151
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_1a
    move-object v1, v7

    :goto_1a
    const-string v4, "editPayment"

    invoke-static {v1, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v0, :cond_1e

    .line 152
    move-object v1, v0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    .line 429
    move-object v4, v7

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "paymentChoiceMode"

    .line 430
    invoke-interface {v1, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1b

    :cond_1b
    move-object v1, v7

    :goto_1b
    if-nez v1, :cond_1c

    :goto_1c
    move-object v1, v7

    goto :goto_1d

    .line 437
    :cond_1c
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_1d

    goto :goto_1c

    .line 442
    :cond_1d
    :goto_1d
    check-cast v1, Ljava/lang/String;

    move-object/from16 v17, v1

    goto :goto_1e

    :cond_1e
    move-object/from16 v17, v7

    .line 153
    :goto_1e
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1f

    invoke-direct {v6, v1}, Lo/MonthDisplayHelper;->c(Lcom/netflix/android/moneyball/FlowMode;)I

    move-result v1

    move/from16 v18, v1

    goto :goto_1f

    :cond_1f
    const/4 v1, 0x0

    const/16 v18, 0x0

    .line 154
    :goto_1f
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_23

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    .line 443
    move-object v4, v7

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "termsOfUseText"

    .line 444
    invoke-interface {v1, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_20

    :cond_20
    move-object v1, v7

    :goto_20
    if-nez v1, :cond_21

    :goto_21
    move-object v1, v7

    goto :goto_22

    .line 451
    :cond_21
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_22

    goto :goto_21

    .line 456
    :cond_22
    :goto_22
    check-cast v1, Ljava/lang/String;

    move-object/from16 v19, v1

    goto :goto_23

    :cond_23
    move-object/from16 v19, v7

    .line 155
    :goto_23
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_27

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    .line 457
    move-object v4, v7

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "termsOfUseMinimumVerificationAge"

    .line 458
    invoke-interface {v1, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_24

    :cond_24
    move-object v1, v7

    :goto_24
    if-nez v1, :cond_25

    :goto_25
    move-object v1, v7

    goto :goto_26

    .line 465
    :cond_25
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_26

    goto :goto_25

    .line 470
    :cond_26
    :goto_26
    check-cast v1, Ljava/lang/String;

    move-object/from16 v20, v1

    goto :goto_27

    :cond_27
    move-object/from16 v20, v7

    .line 156
    :goto_27
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_28

    invoke-virtual {v6, v1}, Lo/MonthDisplayHelper;->b(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_28

    :cond_28
    move-object/from16 v21, v7

    :goto_28
    if-eqz v0, :cond_2b

    .line 157
    move-object v1, v0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "nextAction"

    .line 471
    invoke-interface {v1, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    .line 472
    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    if-nez v1, :cond_29

    .line 475
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v3, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_29
    move-object v1, v7

    goto :goto_2a

    .line 478
    :cond_29
    instance-of v3, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v3, :cond_2a

    .line 479
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_29

    .line 483
    :cond_2a
    :goto_2a
    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v22, v1

    goto :goto_2b

    :cond_2b
    move-object/from16 v22, v7

    .line 161
    :goto_2b
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_2e

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "changePaymentAction"

    .line 485
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    .line 486
    move-object v2, v7

    check-cast v2, Lorg/json/JSONObject;

    if-nez v1, :cond_2c

    goto :goto_2c

    .line 492
    :cond_2c
    instance-of v2, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_2d

    goto :goto_2c

    :cond_2d
    move-object v7, v1

    .line 497
    :goto_2c
    check-cast v7, Lcom/netflix/android/moneyball/fields/ActionField;

    :cond_2e
    move-object/from16 v23, v7

    .line 137
    new-instance v1, Lo/MutableBoolean;

    move-object v8, v1

    move-object v14, v0

    invoke-direct/range {v8 .. v24}, Lo/MutableBoolean;-><init>(Ljava/lang/String;ZZZLcom/netflix/android/moneyball/fields/ChoiceField;Lcom/netflix/android/moneyball/fields/OptionField;ZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;)V

    .line 164
    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    sget-object v3, Lo/MonthDisplayHelper;->k:Ljava/util/List;

    invoke-virtual {v6, v2, v3}, Lo/MonthDisplayHelper;->a(Lcom/netflix/android/moneyball/GetField;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 136
    new-instance v3, Lkotlin/Triple;

    invoke-direct {v3, v1, v2, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final c()Lkotlin/Triple;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Lo/MutableBoolean;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;",
            "Lcom/netflix/android/moneyball/GetField;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 71
    iget-object v0, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v2, "coDebitOption"

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v7

    .line 72
    :goto_0
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_1

    invoke-virtual {v6, v1}, Lo/MonthDisplayHelper;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v7

    :goto_1
    if-eqz v1, :cond_5

    .line 73
    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    .line 199
    move-object v2, v7

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "billingFrequency"

    .line 200
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v7

    :goto_2
    if-nez v1, :cond_3

    :goto_3
    move-object v1, v7

    goto :goto_4

    .line 207
    :cond_3
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_3

    .line 212
    :cond_4
    :goto_4
    check-cast v1, Ljava/lang/String;

    move-object/from16 v24, v1

    goto :goto_5

    :cond_5
    move-object/from16 v24, v7

    :goto_5
    const-string v1, "SignupNativeDataManipulationError"

    const-string v2, "SignupNativeFieldError"

    if-eqz v0, :cond_9

    .line 76
    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "userMessage"

    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    .line 213
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object v3, v7

    :goto_6
    if-nez v3, :cond_7

    .line 217
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_7
    move-object v3, v7

    goto :goto_8

    .line 220
    :cond_7
    instance-of v9, v3, Ljava/lang/String;

    if-nez v9, :cond_8

    .line 221
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_7

    .line 225
    :cond_8
    :goto_8
    check-cast v3, Ljava/lang/String;

    move-object v9, v3

    goto :goto_9

    :cond_9
    move-object v9, v7

    .line 80
    :goto_9
    iget-object v3, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_d

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "recognizedFormerMember"

    .line 77
    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    .line 226
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_a

    :cond_a
    move-object v3, v7

    :goto_a
    if-nez v3, :cond_b

    .line 230
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_b
    move-object v3, v7

    goto :goto_c

    .line 233
    :cond_b
    instance-of v10, v3, Ljava/lang/Boolean;

    if-nez v10, :cond_c

    .line 234
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_b

    .line 238
    :cond_c
    :goto_c
    check-cast v3, Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object v3, v7

    :goto_d
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 81
    iget-object v3, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_11

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v6

    check-cast v5, Lo/TextClassificationSessionId;

    .line 239
    move-object v5, v7

    check-cast v5, Lorg/json/JSONObject;

    const-string v5, "hasValidMop"

    .line 240
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_e

    :cond_e
    move-object v3, v7

    :goto_e
    if-nez v3, :cond_f

    :goto_f
    move-object v3, v7

    goto :goto_10

    .line 247
    :cond_f
    instance-of v5, v3, Ljava/lang/Boolean;

    if-nez v5, :cond_10

    goto :goto_f

    .line 252
    :cond_10
    :goto_10
    check-cast v3, Ljava/lang/Boolean;

    goto :goto_11

    :cond_11
    move-object v3, v7

    :goto_11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 85
    iget-object v3, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_15

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v5, v6

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v8, "hasFreeTrial"

    .line 82
    move-object v11, v7

    check-cast v11, Lorg/json/JSONObject;

    .line 253
    invoke-interface {v3, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_12

    :cond_12
    move-object v3, v7

    :goto_12
    if-nez v3, :cond_13

    .line 257
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v2, v8, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_13
    move-object v3, v7

    goto :goto_14

    .line 260
    :cond_13
    instance-of v13, v3, Ljava/lang/Boolean;

    if-nez v13, :cond_14

    .line 261
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v1, v8, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_13

    .line 265
    :cond_14
    :goto_14
    check-cast v3, Ljava/lang/Boolean;

    goto :goto_15

    :cond_15
    move-object v3, v7

    :goto_15
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 86
    iget-object v3, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_18

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "paymentChoice"

    .line 266
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    .line 267
    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    if-nez v3, :cond_16

    .line 270
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_16
    move-object v3, v7

    goto :goto_17

    .line 273
    :cond_16
    instance-of v13, v3, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v13, :cond_17

    .line 274
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_16

    .line 278
    :cond_17
    :goto_17
    check-cast v3, Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-object v13, v3

    goto :goto_18

    :cond_18
    move-object v13, v7

    .line 88
    :goto_18
    iget-object v3, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_19
    move-object v3, v7

    :goto_19
    const-string v4, "editcoDebitOptionMode"

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    .line 89
    iget-object v3, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_1a
    move-object v3, v7

    :goto_1a
    const-string v4, "editPayment"

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v0, :cond_1e

    .line 90
    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    .line 279
    move-object v4, v7

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "paymentChoiceMode"

    .line 280
    invoke-interface {v3, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1b

    :cond_1b
    move-object v3, v7

    :goto_1b
    if-nez v3, :cond_1c

    :goto_1c
    move-object v3, v7

    goto :goto_1d

    .line 287
    :cond_1c
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_1d

    goto :goto_1c

    .line 292
    :cond_1d
    :goto_1d
    check-cast v3, Ljava/lang/String;

    move-object/from16 v17, v3

    goto :goto_1e

    :cond_1e
    move-object/from16 v17, v7

    .line 91
    :goto_1e
    iget-object v3, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_1f

    invoke-direct {v6, v3}, Lo/MonthDisplayHelper;->c(Lcom/netflix/android/moneyball/FlowMode;)I

    move-result v3

    move/from16 v18, v3

    goto :goto_1f

    :cond_1f
    const/4 v3, 0x0

    const/16 v18, 0x0

    :goto_1f
    if-eqz v0, :cond_23

    .line 92
    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    .line 293
    move-object v4, v7

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "termsOfUseText"

    .line 294
    invoke-interface {v3, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_20

    :cond_20
    move-object v3, v7

    :goto_20
    if-nez v3, :cond_21

    :goto_21
    move-object v3, v7

    goto :goto_22

    .line 301
    :cond_21
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_22

    goto :goto_21

    .line 306
    :cond_22
    :goto_22
    check-cast v3, Ljava/lang/String;

    move-object/from16 v19, v3

    goto :goto_23

    :cond_23
    move-object/from16 v19, v7

    .line 93
    :goto_23
    iget-object v3, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_27

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    .line 307
    move-object v4, v7

    check-cast v4, Lorg/json/JSONObject;

    const-string v4, "termsOfUseMinimumVerificationAge"

    .line 308
    invoke-interface {v3, v4}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_24

    :cond_24
    move-object v3, v7

    :goto_24
    if-nez v3, :cond_25

    :goto_25
    move-object v3, v7

    goto :goto_26

    .line 315
    :cond_25
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_26

    goto :goto_25

    .line 320
    :cond_26
    :goto_26
    check-cast v3, Ljava/lang/String;

    move-object/from16 v20, v3

    goto :goto_27

    :cond_27
    move-object/from16 v20, v7

    .line 94
    :goto_27
    iget-object v3, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_28

    invoke-virtual {v6, v3}, Lo/MonthDisplayHelper;->b(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_28

    :cond_28
    move-object/from16 v21, v7

    :goto_28
    if-eqz v0, :cond_2b

    .line 95
    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v4, v6

    check-cast v4, Lo/TextClassificationSessionId;

    const-string v5, "nextAction"

    .line 321
    invoke-interface {v3, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    .line 322
    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    if-nez v3, :cond_29

    .line 325
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_29
    move-object v3, v7

    goto :goto_2a

    .line 328
    :cond_29
    instance-of v2, v3, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_2a

    .line 329
    invoke-static {v4}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_29

    .line 333
    :cond_2a
    :goto_2a
    move-object v1, v3

    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v22, v1

    goto :goto_2b

    :cond_2b
    move-object/from16 v22, v7

    .line 99
    :goto_2b
    iget-object v1, v6, Lo/MonthDisplayHelper;->a:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_2e

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v6

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "changePaymentAction"

    .line 335
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    .line 336
    move-object v2, v7

    check-cast v2, Lorg/json/JSONObject;

    if-nez v1, :cond_2c

    goto :goto_2c

    .line 342
    :cond_2c
    instance-of v2, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_2d

    goto :goto_2c

    :cond_2d
    move-object v7, v1

    .line 347
    :goto_2c
    check-cast v7, Lcom/netflix/android/moneyball/fields/ActionField;

    :cond_2e
    move-object/from16 v23, v7

    .line 75
    new-instance v1, Lo/MutableBoolean;

    move-object v8, v1

    move-object v14, v0

    invoke-direct/range {v8 .. v24}, Lo/MutableBoolean;-><init>(Ljava/lang/String;ZZZLcom/netflix/android/moneyball/fields/ChoiceField;Lcom/netflix/android/moneyball/fields/OptionField;ZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;)V

    .line 102
    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    sget-object v3, Lo/MonthDisplayHelper;->n:Ljava/util/List;

    invoke-virtual {v6, v2, v3}, Lo/MonthDisplayHelper;->a(Lcom/netflix/android/moneyball/GetField;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 74
    new-instance v3, Lkotlin/Triple;

    invoke-direct {v3, v1, v2, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final c(Landroidx/fragment/app/Fragment;)Lo/LongArray;
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const-string v1, "fragment"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v1, v6, Lo/MonthDisplayHelper;->i:Lo/Deprecated$ActionBar;

    invoke-static {v0, v1}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object v0

    const-class v1, Lo/MalformedJsonException;

    invoke-virtual {v0, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v0

    check-cast v12, Lo/MalformedJsonException;

    .line 109
    new-instance v7, Lo/GenerateLinksLogger;

    iget-object v1, v6, Lo/MonthDisplayHelper;->b:Lo/TextClassificationManager;

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitCOViewModel$changePlanRequestLogger$1;->d:Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitCOViewModel$changePlanRequestLogger$1;

    move-object v3, v0

    check-cast v3, Lo/alB;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 110
    new-instance v8, Lo/GenerateLinksLogger;

    iget-object v14, v6, Lo/MonthDisplayHelper;->b:Lo/TextClassificationManager;

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitCOViewModel$changePaymentRequestLogger$1;->d:Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitCOViewModel$changePaymentRequestLogger$1;

    move-object/from16 v16, v0

    check-cast v16, Lo/alB;

    const/4 v15, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object v13, v8

    invoke-direct/range {v13 .. v18}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 111
    new-instance v9, Lo/GenerateLinksLogger;

    iget-object v0, v6, Lo/MonthDisplayHelper;->b:Lo/TextClassificationManager;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitCOViewModel$startMembershipRequestLogger$1;->a:Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitCOViewModel$startMembershipRequestLogger$1;

    check-cast v1, Lo/alB;

    sget-object v2, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitCOViewModel$startMembershipRequestLogger$2;->c:Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitCOViewModel$startMembershipRequestLogger$2;

    check-cast v2, Lo/alB;

    invoke-direct {v9, v0, v1, v2}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lo/MonthDisplayHelper;->c()Lkotlin/Triple;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Triple;->c()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lo/MutableBoolean;

    invoke-virtual {v0}, Lkotlin/Triple;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Triple;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    .line 113
    new-instance v22, Lo/LongArray;

    .line 114
    iget-object v10, v6, Lo/MonthDisplayHelper;->c:Lo/TextClassifierImpl;

    .line 115
    iget-object v11, v6, Lo/MonthDisplayHelper;->j:Lo/InputBinding;

    .line 116
    move-object v14, v7

    check-cast v14, Lo/TextClassificationSessionFactory;

    .line 117
    iget-object v1, v6, Lo/MonthDisplayHelper;->h:Lo/DrawableMarginSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lo/DrawableMarginSpan;->e(Z)Lo/DynamicDrawableSpan;

    move-result-object v15

    .line 120
    iget-object v1, v6, Lo/MonthDisplayHelper;->g:Lo/NotificationRankingUpdate;

    invoke-virtual {v1}, Lo/NotificationRankingUpdate;->c()Lo/NotificationStats;

    move-result-object v16

    .line 121
    iget-object v1, v6, Lo/MonthDisplayHelper;->e:Lo/ParagraphStyle;

    invoke-virtual {v1, v0}, Lo/ParagraphStyle;->e(Lcom/netflix/android/moneyball/GetField;)Lo/LocaleSpan;

    move-result-object v17

    const-string v1, "paymentDebit"

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    .line 122
    invoke-static/range {v0 .. v5}, Lo/TextClassificationContext;->e(Lo/TextClassificationContext;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 123
    move-object v1, v9

    check-cast v1, Lo/TextClassificationSessionFactory;

    .line 124
    move-object/from16 v18, v8

    check-cast v18, Lo/TextClassificationSessionFactory;

    .line 125
    iget-object v2, v6, Lo/MonthDisplayHelper;->f:Lo/SuggestionService;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v19

    .line 126
    iget-object v2, v6, Lo/MonthDisplayHelper;->o:Lo/HideReturnsTransformationMethod;

    invoke-virtual {v2}, Lo/HideReturnsTransformationMethod;->a()Lo/DigitsKeyListener;

    move-result-object v20

    .line 127
    iget-object v2, v6, Lo/MonthDisplayHelper;->m:Lo/BackgroundColorSpan;

    invoke-virtual {v2}, Lo/BackgroundColorSpan;->b()Lo/AlignmentSpan;

    move-result-object v21

    move-object/from16 v7, v22

    move-object v8, v10

    move-object v9, v11

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 113
    invoke-direct/range {v7 .. v21}, Lo/LongArray;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/MalformedJsonException;Lo/MutableBoolean;Lo/NotificationStats;Lo/LocaleSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;)V

    return-object v22
.end method

.method public final e(Landroidx/fragment/app/Fragment;)Lo/LongSparseLongArray;
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const-string v1, "fragment"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v1, v6, Lo/MonthDisplayHelper;->i:Lo/Deprecated$ActionBar;

    invoke-static {v0, v1}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object v0

    const-class v1, Lo/MalformedJsonException;

    invoke-virtual {v0, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v0

    check-cast v12, Lo/MalformedJsonException;

    .line 171
    new-instance v7, Lo/GenerateLinksLogger;

    iget-object v1, v6, Lo/MonthDisplayHelper;->b:Lo/TextClassificationManager;

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$changePlanRequestLogger$1;->d:Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$changePlanRequestLogger$1;

    move-object v3, v0

    check-cast v3, Lo/alB;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 172
    new-instance v8, Lo/GenerateLinksLogger;

    iget-object v14, v6, Lo/MonthDisplayHelper;->b:Lo/TextClassificationManager;

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$changePaymentRequestLogger$1;->c:Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$changePaymentRequestLogger$1;

    move-object/from16 v16, v0

    check-cast v16, Lo/alB;

    const/4 v15, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object v13, v8

    invoke-direct/range {v13 .. v18}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 173
    new-instance v9, Lo/GenerateLinksLogger;

    iget-object v0, v6, Lo/MonthDisplayHelper;->b:Lo/TextClassificationManager;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$startMembershipRequestLogger$1;->b:Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$startMembershipRequestLogger$1;

    check-cast v1, Lo/alB;

    sget-object v2, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$startMembershipRequestLogger$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitViewModelInitializer$createDirectDebitDEViewModel$startMembershipRequestLogger$2;

    check-cast v2, Lo/alB;

    invoke-direct {v9, v0, v1, v2}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lo/MonthDisplayHelper;->a()Lkotlin/Triple;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Triple;->c()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lo/MutableBoolean;

    invoke-virtual {v0}, Lkotlin/Triple;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Triple;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/moneyball/GetField;

    .line 175
    new-instance v22, Lo/LongSparseLongArray;

    .line 176
    iget-object v10, v6, Lo/MonthDisplayHelper;->c:Lo/TextClassifierImpl;

    .line 177
    iget-object v11, v6, Lo/MonthDisplayHelper;->j:Lo/InputBinding;

    .line 178
    move-object v14, v7

    check-cast v14, Lo/TextClassificationSessionFactory;

    .line 179
    iget-object v1, v6, Lo/MonthDisplayHelper;->h:Lo/DrawableMarginSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lo/DrawableMarginSpan;->e(Z)Lo/DynamicDrawableSpan;

    move-result-object v15

    .line 182
    iget-object v1, v6, Lo/MonthDisplayHelper;->g:Lo/NotificationRankingUpdate;

    invoke-virtual {v1}, Lo/NotificationRankingUpdate;->c()Lo/NotificationStats;

    move-result-object v16

    .line 183
    iget-object v1, v6, Lo/MonthDisplayHelper;->e:Lo/ParagraphStyle;

    invoke-virtual {v1, v0}, Lo/ParagraphStyle;->e(Lcom/netflix/android/moneyball/GetField;)Lo/LocaleSpan;

    move-result-object v17

    const-string v1, "paymentDebit"

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    .line 184
    invoke-static/range {v0 .. v5}, Lo/TextClassificationContext;->e(Lo/TextClassificationContext;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 185
    move-object v1, v9

    check-cast v1, Lo/TextClassificationSessionFactory;

    .line 186
    move-object/from16 v18, v8

    check-cast v18, Lo/TextClassificationSessionFactory;

    .line 187
    iget-object v2, v6, Lo/MonthDisplayHelper;->f:Lo/SuggestionService;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v19

    .line 188
    iget-object v2, v6, Lo/MonthDisplayHelper;->o:Lo/HideReturnsTransformationMethod;

    invoke-virtual {v2}, Lo/HideReturnsTransformationMethod;->a()Lo/DigitsKeyListener;

    move-result-object v20

    .line 189
    iget-object v2, v6, Lo/MonthDisplayHelper;->m:Lo/BackgroundColorSpan;

    invoke-virtual {v2}, Lo/BackgroundColorSpan;->b()Lo/AlignmentSpan;

    move-result-object v21

    move-object/from16 v7, v22

    move-object v8, v10

    move-object v9, v11

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 175
    invoke-direct/range {v7 .. v21}, Lo/LongSparseLongArray;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/MalformedJsonException;Lo/MutableBoolean;Lo/NotificationStats;Lo/LocaleSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;)V

    return-object v22
.end method
