.class public final Lo/ContainerHelpers;
.super Lo/TextClassificationContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ContainerHelpers$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/ContainerHelpers$ActionBar;

.field private static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final r:Ljava/util/List;
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
.field private final b:Lo/TextClassificationManager;

.field private final c:Lo/TextClassifierImpl;

.field private final d:Lcom/netflix/android/moneyball/FlowMode;

.field private final e:Lo/ParagraphStyle;

.field private final f:Lo/Deprecated$ActionBar;

.field private final g:Lo/InputBinding;

.field private final h:Lo/DrawableMarginSpan;

.field private final i:Lo/NotificationRankingUpdate;

.field private final j:Lo/SuggestionService;

.field private final k:Ljava/lang/String;

.field private final l:Lo/ScaleXSpan;

.field private final m:Lo/BackgroundColorSpan;

.field private final n:Lo/ScrollingMovementMethod;

.field private final o:Lo/HideReturnsTransformationMethod;

.field private final s:Lo/SentenceSuggestionsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lo/ContainerHelpers$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ContainerHelpers$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/ContainerHelpers;->a:Lo/ContainerHelpers$ActionBar;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/util/List;

    const-string v1, "firstName"

    .line 58
    invoke-static {v1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "lastName"

    .line 59
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const-string v4, "creditZipcode"

    .line 60
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v0, v6

    const-string v4, "creditCardNumber"

    const-string v7, "creditMaskedCardNumber"

    .line 61
    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v0, v7

    const-string v4, "creditExpirationMonth"

    const-string v8, "creditExpirationYear"

    .line 62
    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v0, v8

    const-string v4, "creditCardSecurityCode"

    .line 63
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v0, v9

    const-string v4, "name"

    .line 64
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x6

    aput-object v4, v0, v10

    const-string v4, "birthDate"

    .line 65
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v11, 0x7

    aput-object v4, v0, v11

    const-string v4, "birthMonth"

    .line 66
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v11, 0x8

    aput-object v4, v0, v11

    const-string v4, "birthYear"

    .line 67
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v11, 0x9

    aput-object v4, v0, v11

    const-string v4, "cardProcessingType"

    .line 68
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v11, 0xa

    aput-object v4, v0, v11

    .line 58
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/ContainerHelpers;->r:Ljava/util/List;

    new-array v0, v10, [Ljava/util/List;

    .line 71
    invoke-static {v1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v3

    .line 72
    invoke-static {v2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "debitZipcode"

    .line 73
    invoke-static {v1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "debitCardNumber"

    const-string v2, "maskedDebitCardNumber"

    .line 74
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "debitCardExpirationMonth"

    const-string v2, "debitCardExpirationYear"

    .line 75
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "debitCardSecurityCode"

    .line 76
    invoke-static {v1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v9

    .line 70
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/ContainerHelpers;->p:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/ParagraphStyle;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/SuggestionService;Lo/BackgroundColorSpan;Lo/HideReturnsTransformationMethod;Lo/ScaleXSpan;Lo/ScrollingMovementMethod;Lo/Voice;Ljava/lang/String;Lo/SentenceSuggestionsInfo;)V
    .locals 16
    .param p16    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "webViewBaseUrl"
        .end annotation
    .end param
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

    move-object/from16 v15, p16

    const-string v0, "signupErrorReporter"

    invoke-static {v1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touViewModelInitializer"

    invoke-static {v2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {v3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupLogger"

    invoke-static {v4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {v5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelProviderFactory"

    invoke-static {v6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModelInitializer"

    invoke-static {v7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanViewModelInitializer"

    invoke-static {v8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModelInitializer"

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipButtonViewModelInitializer"

    invoke-static {v10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "giftCodeAppliedViewModelInitializer"

    invoke-static {v11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeOnUsViewModelInitializer"

    invoke-static {v12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "koreaCheckBoxesViewModelInitializer"

    invoke-static {v13, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFieldViewModelConverterFactory"

    invoke-static {v14, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewBaseUrl"

    invoke-static {v15, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mopLogos"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 55
    invoke-direct {v0, v1, v14}, Lo/TextClassificationContext;-><init>(Lo/SystemTextClassifier;Lo/Voice;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    iput-object v2, v0, Lo/ContainerHelpers;->e:Lo/ParagraphStyle;

    iput-object v3, v0, Lo/ContainerHelpers;->c:Lo/TextClassifierImpl;

    iput-object v4, v0, Lo/ContainerHelpers;->b:Lo/TextClassificationManager;

    iput-object v5, v0, Lo/ContainerHelpers;->g:Lo/InputBinding;

    iput-object v6, v0, Lo/ContainerHelpers;->f:Lo/Deprecated$ActionBar;

    iput-object v7, v0, Lo/ContainerHelpers;->h:Lo/DrawableMarginSpan;

    iput-object v8, v0, Lo/ContainerHelpers;->i:Lo/NotificationRankingUpdate;

    iput-object v9, v0, Lo/ContainerHelpers;->j:Lo/SuggestionService;

    iput-object v10, v0, Lo/ContainerHelpers;->m:Lo/BackgroundColorSpan;

    iput-object v11, v0, Lo/ContainerHelpers;->o:Lo/HideReturnsTransformationMethod;

    iput-object v12, v0, Lo/ContainerHelpers;->l:Lo/ScaleXSpan;

    iput-object v13, v0, Lo/ContainerHelpers;->n:Lo/ScrollingMovementMethod;

    move-object/from16 v1, p16

    iput-object v1, v0, Lo/ContainerHelpers;->k:Ljava/lang/String;

    iput-object v15, v0, Lo/ContainerHelpers;->s:Lo/SentenceSuggestionsInfo;

    return-void
.end method

.method private final d(Lcom/netflix/android/moneyball/FlowMode;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 224
    check-cast p1, Lcom/netflix/android/moneyball/GetField;

    move-object v1, p0

    check-cast v1, Lo/TextClassificationSessionId;

    const-string v1, "paymentChoice"

    .line 757
    invoke-interface {p1, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    .line 758
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 764
    :cond_0
    instance-of v1, p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez v1, :cond_1

    goto :goto_0

    .line 769
    :cond_1
    :goto_1
    check-cast p1, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOptions()Ljava/util/List;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)Lo/Config;
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const-string v1, "fragment"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v1, v6, Lo/ContainerHelpers;->f:Lo/Deprecated$ActionBar;

    invoke-static {v0, v1}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object v0

    const-class v1, Lo/ByteStringUtils;

    invoke-virtual {v0, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v0

    check-cast v12, Lo/ByteStringUtils;

    .line 150
    new-instance v10, Lo/GenerateLinksLogger;

    iget-object v1, v6, Lo/ContainerHelpers;->b:Lo/TextClassificationManager;

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createCreditOptionViewModel$changePlanRequestLogger$1;->e:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createCreditOptionViewModel$changePlanRequestLogger$1;

    move-object v3, v0

    check-cast v3, Lo/alB;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 151
    new-instance v19, Lo/GenerateLinksLogger;

    iget-object v14, v6, Lo/ContainerHelpers;->b:Lo/TextClassificationManager;

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createCreditOptionViewModel$changePaymentRequestLogger$1;->e:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createCreditOptionViewModel$changePaymentRequestLogger$1;

    move-object/from16 v16, v0

    check-cast v16, Lo/alB;

    const/4 v15, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v13, v19

    invoke-direct/range {v13 .. v18}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 152
    new-instance v15, Lo/GenerateLinksLogger;

    iget-object v0, v6, Lo/ContainerHelpers;->b:Lo/TextClassificationManager;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createCreditOptionViewModel$startMembershipRequestLogger$1;->d:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createCreditOptionViewModel$startMembershipRequestLogger$1;

    check-cast v1, Lo/alB;

    sget-object v2, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createCreditOptionViewModel$startMembershipRequestLogger$2;->c:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createCreditOptionViewModel$startMembershipRequestLogger$2;

    check-cast v2, Lo/alB;

    invoke-direct {v15, v0, v1, v2}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    .line 153
    iget-object v0, v6, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v2, "creditOption"

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v14

    .line 154
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/ContainerHelpers;->c()Lkotlin/Triple;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Triple;->c()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lo/Config$Activity;

    invoke-virtual {v1}, Lkotlin/Triple;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1}, Lkotlin/Triple;->j()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    .line 155
    new-instance v26, Lo/Config;

    move-object/from16 v7, v26

    .line 156
    iget-object v8, v6, Lo/ContainerHelpers;->c:Lo/TextClassifierImpl;

    .line 157
    iget-object v9, v6, Lo/ContainerHelpers;->g:Lo/InputBinding;

    .line 158
    check-cast v10, Lo/TextClassificationSessionFactory;

    .line 159
    iget-object v1, v6, Lo/ContainerHelpers;->h:Lo/DrawableMarginSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lo/DrawableMarginSpan;->e(Z)Lo/DynamicDrawableSpan;

    move-result-object v11

    .line 161
    invoke-virtual {v6, v0}, Lo/ContainerHelpers;->c(Lcom/netflix/android/moneyball/fields/OptionField;)Lo/Base64OutputStream;

    move-result-object v13

    .line 162
    iget-object v0, v6, Lo/ContainerHelpers;->i:Lo/NotificationRankingUpdate;

    invoke-virtual {v0}, Lo/NotificationRankingUpdate;->c()Lo/NotificationStats;

    move-result-object v0

    move-object v4, v14

    move-object v14, v0

    .line 163
    iget-object v0, v6, Lo/ContainerHelpers;->e:Lo/ParagraphStyle;

    invoke-virtual {v0, v5}, Lo/ParagraphStyle;->e(Lcom/netflix/android/moneyball/GetField;)Lo/LocaleSpan;

    move-result-object v0

    move-object/from16 v18, v15

    move-object v15, v0

    .line 164
    iget-object v0, v6, Lo/ContainerHelpers;->l:Lo/ScaleXSpan;

    invoke-virtual {v0}, Lo/ScaleXSpan;->e()Lo/RelativeSizeSpan;

    move-result-object v16

    const/4 v3, 0x0

    const/16 v17, 0x4

    const/16 v20, 0x0

    const-string v1, "paymentCredit"

    move-object/from16 v0, p0

    move/from16 v4, v17

    move-object/from16 p1, v7

    move-object v7, v5

    move-object/from16 v5, v20

    .line 165
    invoke-static/range {v0 .. v5}, Lo/TextClassificationContext;->e(Lo/TextClassificationContext;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 166
    check-cast v18, Lo/TextClassificationSessionFactory;

    .line 167
    check-cast v19, Lo/TextClassificationSessionFactory;

    .line 168
    iget-object v0, v6, Lo/ContainerHelpers;->j:Lo/SuggestionService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v20

    .line 169
    iget-object v0, v6, Lo/ContainerHelpers;->o:Lo/HideReturnsTransformationMethod;

    invoke-virtual {v0}, Lo/HideReturnsTransformationMethod;->a()Lo/DigitsKeyListener;

    move-result-object v21

    .line 170
    iget-object v0, v6, Lo/ContainerHelpers;->m:Lo/BackgroundColorSpan;

    invoke-virtual {v0}, Lo/BackgroundColorSpan;->b()Lo/AlignmentSpan;

    move-result-object v22

    .line 171
    new-instance v0, Lo/SingleLineTransformationMethod;

    move-object/from16 v23, v0

    iget-object v1, v6, Lo/ContainerHelpers;->g:Lo/InputBinding;

    iget-object v3, v6, Lo/ContainerHelpers;->n:Lo/ScrollingMovementMethod;

    const-string v4, "paymentCredit"

    invoke-virtual {v3, v7, v4, v2}, Lo/ScrollingMovementMethod;->d(Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;Lo/InputMethodSession;)Lo/NumberKeyListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/SingleLineTransformationMethod;-><init>(Lo/InputBinding;Lo/NumberKeyListener;)V

    .line 173
    iget-object v0, v6, Lo/ContainerHelpers;->k:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v7, p1

    .line 155
    invoke-direct/range {v7 .. v25}, Lo/Config;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/ByteStringUtils;Lo/Base64OutputStream;Lo/NotificationStats;Lo/LocaleSpan;Lo/RelativeSizeSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;Lo/SingleLineTransformationMethod;Lo/Config$Activity;Ljava/lang/String;)V

    return-object v26
.end method

.method public final c()Lkotlin/Triple;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Lo/Config$Activity;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;",
            "Lcom/netflix/android/moneyball/GetField;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v4, "creditOption"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "SignupNativeDataManipulationError"

    const-string v3, "SignupNativeFieldError"

    if-eqz v0, :cond_3

    .line 136
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "creditData"

    .line 600
    invoke-interface {v4, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 601
    move-object v7, v1

    check-cast v7, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 604
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v4, v1

    goto :goto_2

    .line 607
    :cond_1
    instance-of v8, v4, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v8, :cond_2

    .line 608
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 612
    :cond_2
    :goto_2
    check-cast v4, Lcom/netflix/android/moneyball/fields/StringField;

    move-object v6, v4

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    if-eqz v0, :cond_6

    .line 137
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v7, "creditCardNumber"

    .line 613
    invoke-interface {v4, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 614
    move-object v8, v1

    check-cast v8, Lorg/json/JSONObject;

    if-nez v4, :cond_4

    .line 617
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v3, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_4
    move-object v4, v1

    goto :goto_5

    .line 620
    :cond_4
    instance-of v9, v4, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v9, :cond_5

    .line 621
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v2, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    .line 625
    :cond_5
    :goto_5
    check-cast v4, Lcom/netflix/android/moneyball/fields/StringField;

    move-object v7, v4

    goto :goto_6

    :cond_6
    move-object v7, v1

    :goto_6
    if-eqz v0, :cond_9

    .line 138
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v5, "creditZipcode"

    .line 626
    invoke-interface {v4, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 627
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    if-nez v4, :cond_7

    :goto_7
    move-object v4, v1

    goto :goto_8

    .line 633
    :cond_7
    instance-of v5, v4, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v5, :cond_8

    goto :goto_7

    .line 638
    :cond_8
    :goto_8
    check-cast v4, Lcom/netflix/android/moneyball/fields/StringField;

    move-object v8, v4

    goto :goto_9

    :cond_9
    move-object v8, v1

    :goto_9
    if-eqz v0, :cond_c

    .line 139
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v5, "creditCardSecurityCode"

    .line 639
    invoke-interface {v4, v5}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 640
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    if-nez v4, :cond_a

    :goto_a
    move-object v4, v1

    goto :goto_b

    .line 646
    :cond_a
    instance-of v5, v4, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v5, :cond_b

    goto :goto_a

    .line 651
    :cond_b
    :goto_b
    check-cast v4, Lcom/netflix/android/moneyball/fields/StringField;

    move-object v9, v4

    goto :goto_c

    :cond_c
    move-object v9, v1

    :goto_c
    if-eqz v0, :cond_f

    .line 140
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v10, "creditExpirationMonth"

    .line 652
    invoke-interface {v4, v10}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 653
    move-object v11, v1

    check-cast v11, Lorg/json/JSONObject;

    if-nez v4, :cond_d

    .line 656
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v3, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_d
    move-object v4, v1

    goto :goto_e

    .line 659
    :cond_d
    instance-of v12, v4, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez v12, :cond_e

    .line 660
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v2, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_d

    .line 664
    :cond_e
    :goto_e
    check-cast v4, Lcom/netflix/android/moneyball/fields/NumberField;

    move-object v10, v4

    goto :goto_f

    :cond_f
    move-object v10, v1

    :goto_f
    if-eqz v0, :cond_12

    .line 141
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v11, "creditExpirationYear"

    .line 665
    invoke-interface {v4, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 666
    move-object v12, v1

    check-cast v12, Lorg/json/JSONObject;

    if-nez v4, :cond_10

    .line 669
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v3, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_10

    .line 672
    :cond_10
    instance-of v3, v4, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez v3, :cond_11

    .line 673
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v2, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_10

    :cond_11
    move-object v1, v4

    .line 677
    :goto_10
    check-cast v1, Lcom/netflix/android/moneyball/fields/NumberField;

    :cond_12
    move-object v11, v1

    .line 135
    new-instance v1, Lo/Config$Activity;

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lo/Config$Activity;-><init>(Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/NumberField;Lcom/netflix/android/moneyball/fields/NumberField;)V

    .line 143
    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    sget-object v3, Lo/ContainerHelpers;->r:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lo/ContainerHelpers;->a(Lcom/netflix/android/moneyball/GetField;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 134
    new-instance v3, Lkotlin/Triple;

    invoke-direct {v3, v1, v2, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final c(Lcom/netflix/android/moneyball/fields/OptionField;)Lo/Base64OutputStream;
    .locals 47

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 82
    move-object/from16 v2, p1

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 229
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "emvco3dsDeviceDataRequestUrl"

    .line 230
    invoke-interface {v2, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    move-object v2, v1

    goto :goto_2

    .line 237
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    .line 242
    :cond_2
    :goto_2
    check-cast v2, Ljava/lang/String;

    move-object v13, v2

    goto :goto_3

    :cond_3
    move-object v13, v1

    .line 83
    :goto_3
    iget-object v2, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v2, :cond_7

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, v0

    check-cast v3, Lo/TextClassificationSessionId;

    .line 243
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    const-string v3, "currentPaymentOption"

    .line 244
    invoke-interface {v2, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    if-nez v2, :cond_5

    :goto_5
    move-object v2, v1

    goto :goto_6

    .line 251
    :cond_5
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_5

    .line 256
    :cond_6
    :goto_6
    check-cast v2, Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object v2, v1

    .line 84
    :goto_7
    iget-object v3, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    const-string v4, "SignupNativeDataManipulationError"

    const-string v5, "SignupNativeFieldError"

    if-eqz v3, :cond_b

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v7, "hasFreeTrial"

    move-object v8, v1

    check-cast v8, Lorg/json/JSONObject;

    .line 257
    invoke-interface {v3, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_8

    :cond_8
    move-object v3, v1

    :goto_8
    if-nez v3, :cond_9

    .line 261
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v5, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_9
    move-object v3, v1

    goto :goto_a

    .line 264
    :cond_9
    instance-of v9, v3, Ljava/lang/Boolean;

    if-nez v9, :cond_a

    .line 265
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v4, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_9

    .line 269
    :cond_a
    :goto_a
    check-cast v3, Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object v3, v1

    :goto_b
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v3, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 85
    iget-object v3, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v8, 0x0

    if-eqz v3, :cond_c

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    const-string v9, "giftOption"

    invoke-virtual {v0, v3, v9, v8}, Lo/ContainerHelpers;->c(Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;Z)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v3

    move-object v15, v3

    goto :goto_c

    :cond_c
    move-object v15, v1

    .line 86
    :goto_c
    iget-object v3, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_d

    invoke-virtual {v0, v3}, Lo/ContainerHelpers;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v3

    goto :goto_d

    :cond_d
    move-object v3, v1

    :goto_d
    if-eqz v3, :cond_11

    .line 87
    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v9, v0

    check-cast v9, Lo/TextClassificationSessionId;

    .line 270
    move-object v9, v1

    check-cast v9, Lorg/json/JSONObject;

    const-string v9, "billingFrequency"

    .line 271
    invoke-interface {v3, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_e

    :cond_e
    move-object v3, v1

    :goto_e
    if-nez v3, :cond_f

    :goto_f
    move-object v3, v1

    goto :goto_10

    .line 278
    :cond_f
    instance-of v9, v3, Ljava/lang/String;

    if-nez v9, :cond_10

    goto :goto_f

    .line 283
    :cond_10
    :goto_10
    check-cast v3, Ljava/lang/String;

    move-object/from16 v33, v3

    goto :goto_11

    :cond_11
    move-object/from16 v33, v1

    .line 92
    :goto_11
    iget-object v3, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v3, :cond_15

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    move-object v9, v0

    check-cast v9, Lo/TextClassificationSessionId;

    const-string v10, "recognizedFormerMember"

    .line 89
    move-object v11, v1

    check-cast v11, Lorg/json/JSONObject;

    .line 284
    invoke-interface {v3, v10}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_12

    :cond_12
    move-object v3, v1

    :goto_12
    if-nez v3, :cond_13

    .line 288
    invoke-static {v9}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v5, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_13
    move-object v3, v1

    goto :goto_14

    .line 291
    :cond_13
    instance-of v12, v3, Ljava/lang/Boolean;

    if-nez v12, :cond_14

    .line 292
    invoke-static {v9}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v4, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_13

    .line 296
    :cond_14
    :goto_14
    check-cast v3, Ljava/lang/Boolean;

    goto :goto_15

    :cond_15
    move-object v3, v1

    :goto_15
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v3, v9}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz p1, :cond_19

    .line 93
    move-object/from16 v9, p1

    check-cast v9, Lcom/netflix/android/moneyball/GetField;

    move-object v10, v0

    check-cast v10, Lo/TextClassificationSessionId;

    const-string v11, "paymentLabel"

    move-object v12, v1

    check-cast v12, Lorg/json/JSONObject;

    .line 297
    invoke-interface {v9, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v9

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v9

    goto :goto_16

    :cond_16
    move-object v9, v1

    :goto_16
    if-nez v9, :cond_17

    .line 301
    invoke-static {v10}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v9

    invoke-virtual {v9, v5, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_17
    move-object v9, v1

    goto :goto_18

    .line 304
    :cond_17
    instance-of v14, v9, Ljava/lang/String;

    if-nez v14, :cond_18

    .line 305
    invoke-static {v10}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v9

    invoke-virtual {v9, v4, v11, v12}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_17

    .line 309
    :cond_18
    :goto_18
    check-cast v9, Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object v9, v1

    .line 95
    :goto_19
    iget-object v10, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v10, :cond_1d

    check-cast v10, Lcom/netflix/android/moneyball/GetField;

    move-object v11, v0

    check-cast v11, Lo/TextClassificationSessionId;

    .line 310
    move-object v11, v1

    check-cast v11, Lorg/json/JSONObject;

    const-string v11, "hasMopOnFile"

    .line 311
    invoke-interface {v10, v11}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v10

    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v10

    goto :goto_1a

    :cond_1a
    move-object v10, v1

    :goto_1a
    if-nez v10, :cond_1b

    :goto_1b
    move-object v10, v1

    goto :goto_1c

    .line 318
    :cond_1b
    instance-of v11, v10, Ljava/lang/Boolean;

    if-nez v11, :cond_1c

    goto :goto_1b

    .line 323
    :cond_1c
    :goto_1c
    check-cast v10, Ljava/lang/Boolean;

    goto :goto_1d

    :cond_1d
    move-object v10, v1

    :goto_1d
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 96
    iget-object v11, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v11, :cond_21

    check-cast v11, Lcom/netflix/android/moneyball/GetField;

    move-object v12, v0

    check-cast v12, Lo/TextClassificationSessionId;

    .line 324
    move-object v12, v1

    check-cast v12, Lorg/json/JSONObject;

    const-string v12, "hasValidMop"

    .line 325
    invoke-interface {v11, v12}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v11

    if-eqz v11, :cond_1e

    invoke-virtual {v11}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v11

    goto :goto_1e

    :cond_1e
    move-object v11, v1

    :goto_1e
    if-nez v11, :cond_1f

    :goto_1f
    move-object v11, v1

    goto :goto_20

    .line 332
    :cond_1f
    instance-of v12, v11, Ljava/lang/Boolean;

    if-nez v12, :cond_20

    goto :goto_1f

    .line 337
    :cond_20
    :goto_20
    check-cast v11, Ljava/lang/Boolean;

    goto :goto_21

    :cond_21
    move-object v11, v1

    :goto_21
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v11, v12}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 97
    iget-object v12, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v12, :cond_25

    check-cast v12, Lcom/netflix/android/moneyball/GetField;

    move-object v14, v0

    check-cast v14, Lo/TextClassificationSessionId;

    .line 338
    move-object v14, v1

    check-cast v14, Lorg/json/JSONObject;

    const-string v14, "giftCodeMopRequired"

    .line 339
    invoke-interface {v12, v14}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v12

    if-eqz v12, :cond_22

    invoke-virtual {v12}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v12

    goto :goto_22

    :cond_22
    move-object v12, v1

    :goto_22
    if-nez v12, :cond_23

    :goto_23
    move-object v12, v1

    goto :goto_24

    .line 346
    :cond_23
    instance-of v14, v12, Ljava/lang/Boolean;

    if-nez v14, :cond_24

    goto :goto_23

    .line 351
    :cond_24
    :goto_24
    check-cast v12, Ljava/lang/Boolean;

    goto :goto_25

    :cond_25
    move-object v12, v1

    :goto_25
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v12, v14}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 98
    iget-object v14, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v14, :cond_26

    const-string v8, "paymentChoice"

    invoke-virtual {v14, v8}, Lcom/netflix/android/moneyball/FlowMode;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v8

    goto :goto_26

    :cond_26
    move-object v8, v1

    :goto_26
    check-cast v8, Lcom/netflix/android/moneyball/fields/ChoiceField;

    .line 100
    iget-object v14, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v14, :cond_27

    invoke-virtual {v0, v14}, Lo/ContainerHelpers;->b(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;

    move-result-object v14

    goto :goto_27

    :cond_27
    move-object v14, v1

    :goto_27
    if-eqz p1, :cond_2d

    .line 101
    move-object/from16 v6, p1

    check-cast v6, Lcom/netflix/android/moneyball/GetField;

    move-object/from16 v18, v0

    check-cast v18, Lo/TextClassificationSessionId;

    .line 352
    move-object/from16 v18, v1

    check-cast v18, Lorg/json/JSONObject;

    const-string v1, "paymentLogoUrls"

    .line 353
    invoke-interface {v6, v1}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_28

    :cond_28
    const/4 v1, 0x0

    :goto_28
    if-nez v1, :cond_29

    :goto_29
    const/4 v1, 0x0

    goto :goto_2a

    .line 360
    :cond_29
    instance-of v6, v1, Ljava/util/List;

    if-nez v6, :cond_2a

    goto :goto_29

    .line 365
    :cond_2a
    :goto_2a
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2d

    check-cast v1, Ljava/lang/Iterable;

    .line 366
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 375
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v20, v1

    .line 374
    move-object/from16 v1, v18

    check-cast v1, Ljava/lang/String;

    move-object/from16 v18, v14

    .line 101
    iget-object v14, v0, Lo/ContainerHelpers;->s:Lo/SentenceSuggestionsInfo;

    move-object/from16 v21, v8

    invoke-virtual/range {p0 .. p0}, Lo/ContainerHelpers;->j()Lo/SystemTextClassifier;

    move-result-object v8

    invoke-virtual {v14, v8, v1}, Lo/SentenceSuggestionsInfo;->a(Lo/SystemTextClassifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 374
    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2b
    move-object/from16 v14, v18

    move-object/from16 v1, v20

    move-object/from16 v8, v21

    goto :goto_2b

    :cond_2c
    move-object/from16 v21, v8

    move-object/from16 v18, v14

    .line 377
    check-cast v6, Ljava/util/List;

    move-object v14, v6

    goto :goto_2c

    :cond_2d
    move-object/from16 v21, v8

    move-object/from16 v18, v14

    const/4 v14, 0x0

    :goto_2c
    if-eqz p1, :cond_31

    .line 102
    move-object/from16 v1, p1

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v8, "paymentChoiceMode"

    move-object/from16 v20, v14

    const/16 v19, 0x0

    move-object/from16 v14, v19

    check-cast v14, Lorg/json/JSONObject;

    .line 378
    invoke-interface {v1, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2d

    :cond_2e
    const/4 v1, 0x0

    :goto_2d
    if-nez v1, :cond_2f

    .line 382
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v5, v8, v14}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move/from16 v22, v12

    :goto_2e
    const/4 v1, 0x0

    goto :goto_2f

    :cond_2f
    move/from16 v22, v12

    .line 385
    instance-of v12, v1, Ljava/lang/String;

    if-nez v12, :cond_30

    .line 386
    invoke-static {v6}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v4, v8, v14}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2e

    .line 390
    :cond_30
    :goto_2f
    check-cast v1, Ljava/lang/String;

    move-object v12, v1

    goto :goto_30

    :cond_31
    move/from16 v22, v12

    move-object/from16 v20, v14

    const/4 v12, 0x0

    :goto_30
    if-eqz p1, :cond_35

    .line 104
    move-object/from16 v1, p1

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const/4 v8, 0x0

    .line 391
    move-object v6, v8

    check-cast v6, Lorg/json/JSONObject;

    const-string v6, "emvco3dsDeviceDataRequestToken"

    .line 392
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_31

    :cond_32
    const/4 v1, 0x0

    :goto_31
    if-nez v1, :cond_33

    :goto_32
    const/4 v1, 0x0

    goto :goto_33

    .line 399
    :cond_33
    instance-of v6, v1, Ljava/lang/String;

    if-nez v6, :cond_34

    goto :goto_32

    .line 404
    :cond_34
    :goto_33
    check-cast v1, Ljava/lang/String;

    move-object v14, v1

    goto :goto_34

    :cond_35
    const/4 v14, 0x0

    .line 105
    :goto_34
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_38

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v6, "emvco3dsAuthenticationWindowSize"

    .line 406
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    const/4 v6, 0x0

    .line 407
    move-object v8, v6

    check-cast v8, Lorg/json/JSONObject;

    if-nez v1, :cond_36

    :goto_35
    const/4 v1, 0x0

    goto :goto_36

    .line 413
    :cond_36
    instance-of v6, v1, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v6, :cond_37

    goto :goto_35

    .line 418
    :cond_37
    :goto_36
    check-cast v1, Lcom/netflix/android/moneyball/fields/StringField;

    move-object/from16 v23, v1

    goto :goto_37

    :cond_38
    const/16 v23, 0x0

    .line 106
    :goto_37
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_3b

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v6, "emvco3dsAuthenticationResponseURL"

    .line 420
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    const/4 v6, 0x0

    .line 421
    move-object v8, v6

    check-cast v8, Lorg/json/JSONObject;

    if-nez v1, :cond_39

    :goto_38
    const/4 v1, 0x0

    goto :goto_39

    .line 427
    :cond_39
    instance-of v6, v1, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v6, :cond_3a

    goto :goto_38

    .line 432
    :cond_3a
    :goto_39
    check-cast v1, Lcom/netflix/android/moneyball/fields/StringField;

    move-object/from16 v24, v1

    goto :goto_3a

    :cond_3b
    const/16 v24, 0x0

    .line 107
    :goto_3a
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_3e

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v6, "emvco3dsDeviceDataResponseFallback"

    .line 434
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    const/4 v6, 0x0

    .line 435
    move-object v8, v6

    check-cast v8, Lorg/json/JSONObject;

    if-nez v1, :cond_3c

    :goto_3b
    const/4 v1, 0x0

    goto :goto_3c

    .line 441
    :cond_3c
    instance-of v6, v1, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v6, :cond_3d

    goto :goto_3b

    .line 446
    :cond_3d
    :goto_3c
    check-cast v1, Lcom/netflix/android/moneyball/fields/StringField;

    move-object/from16 v25, v1

    goto :goto_3d

    :cond_3e
    const/16 v25, 0x0

    :goto_3d
    if-eqz p1, :cond_41

    .line 108
    move-object/from16 v1, p1

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v6, v0

    check-cast v6, Lo/TextClassificationSessionId;

    const-string v6, "emvco3dsDeviceDataResponseToken"

    .line 448
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    const/4 v6, 0x0

    .line 449
    move-object v8, v6

    check-cast v8, Lorg/json/JSONObject;

    if-nez v1, :cond_3f

    :goto_3e
    const/4 v1, 0x0

    goto :goto_3f

    .line 455
    :cond_3f
    instance-of v6, v1, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v6, :cond_40

    goto :goto_3e

    .line 460
    :cond_40
    :goto_3f
    check-cast v1, Lcom/netflix/android/moneyball/fields/StringField;

    move-object/from16 v26, v1

    goto :goto_40

    :cond_41
    const/16 v26, 0x0

    :goto_40
    if-eqz v13, :cond_42

    const/16 v27, 0x1

    goto :goto_41

    :cond_42
    const/16 v27, 0x0

    :goto_41
    if-eqz p1, :cond_43

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_42

    :cond_43
    const/4 v1, 0x0

    :goto_42
    if-eqz v1, :cond_44

    if-eqz v2, :cond_44

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/16 v28, 0x1

    goto :goto_43

    :cond_44
    const/16 v28, 0x0

    :goto_43
    if-eqz p1, :cond_48

    .line 111
    move-object/from16 v1, p1

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const/4 v6, 0x0

    .line 461
    move-object v2, v6

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "userMessage"

    .line 462
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_44

    :cond_45
    const/4 v1, 0x0

    :goto_44
    if-nez v1, :cond_46

    :goto_45
    const/4 v1, 0x0

    goto :goto_46

    .line 469
    :cond_46
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_47

    goto :goto_45

    .line 474
    :cond_47
    :goto_46
    check-cast v1, Ljava/lang/String;

    move-object/from16 v29, v1

    goto :goto_47

    :cond_48
    const/16 v29, 0x0

    .line 112
    :goto_47
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_49

    invoke-virtual {v0, v1}, Lo/ContainerHelpers;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_48

    :cond_49
    const/4 v1, 0x0

    :goto_48
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_4a

    const/4 v1, 0x0

    :cond_4a
    move-object/from16 v30, v1

    check-cast v30, Ljava/lang/String;

    .line 113
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_4b

    invoke-virtual {v0, v1, v7}, Lo/ContainerHelpers;->a(Lcom/netflix/android/moneyball/FlowMode;Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_49

    :cond_4b
    const/16 v31, 0x0

    .line 114
    :goto_49
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_4e

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "changePaymentAction"

    .line 476
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 477
    move-object v6, v2

    check-cast v6, Lorg/json/JSONObject;

    if-nez v1, :cond_4c

    :goto_4a
    const/4 v1, 0x0

    goto :goto_4b

    .line 483
    :cond_4c
    instance-of v2, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_4d

    goto :goto_4a

    .line 488
    :cond_4d
    :goto_4b
    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v32, v1

    goto :goto_4c

    :cond_4e
    const/16 v32, 0x0

    .line 115
    :goto_4c
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_4f

    invoke-direct {v0, v1}, Lo/ContainerHelpers;->d(Lcom/netflix/android/moneyball/FlowMode;)I

    move-result v1

    move/from16 v34, v1

    goto :goto_4d

    :cond_4f
    const/16 v34, 0x0

    :goto_4d
    if-eqz p1, :cond_52

    .line 116
    move-object/from16 v1, p1

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v6, "nextAction"

    .line 489
    invoke-interface {v1, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    move-object/from16 v35, v14

    const/4 v8, 0x0

    .line 490
    move-object v14, v8

    check-cast v14, Lorg/json/JSONObject;

    if-nez v1, :cond_50

    .line 493
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v14}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_4e
    const/4 v1, 0x0

    goto :goto_4f

    .line 496
    :cond_50
    instance-of v5, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v5, :cond_51

    .line 497
    invoke-static {v2}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-virtual {v1, v4, v6, v14}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4e

    .line 501
    :cond_51
    :goto_4f
    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v36, v1

    goto :goto_50

    :cond_52
    move-object/from16 v35, v14

    const/16 v36, 0x0

    .line 117
    :goto_50
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_55

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const-string v2, "startMembershipAction"

    .line 503
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 504
    move-object v4, v2

    check-cast v4, Lorg/json/JSONObject;

    if-nez v1, :cond_53

    :goto_51
    const/4 v1, 0x0

    goto :goto_52

    .line 510
    :cond_53
    instance-of v2, v1, Lcom/netflix/android/moneyball/fields/ActionField;

    if-nez v2, :cond_54

    goto :goto_51

    .line 515
    :cond_54
    :goto_52
    check-cast v1, Lcom/netflix/android/moneyball/fields/ActionField;

    move-object/from16 v37, v1

    goto :goto_53

    :cond_55
    const/16 v37, 0x0

    :goto_53
    if-eqz v15, :cond_56

    const-string v1, "startMembershipWithGiftOnlyAction"

    .line 119
    invoke-virtual {v15, v1}, Lcom/netflix/android/moneyball/fields/OptionField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    goto :goto_54

    :cond_56
    const/4 v1, 0x0

    :goto_54
    if-eqz v1, :cond_57

    const/16 v16, 0x1

    goto :goto_55

    :cond_57
    const/16 v16, 0x0

    :goto_55
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    if-eqz p1, :cond_5b

    .line 120
    move-object/from16 v1, p1

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const/4 v4, 0x0

    .line 516
    move-object v2, v4

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "termsOfUseText"

    .line 517
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_56

    :cond_58
    const/4 v1, 0x0

    :goto_56
    if-nez v1, :cond_59

    :goto_57
    const/4 v1, 0x0

    goto :goto_58

    .line 524
    :cond_59
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_5a

    goto :goto_57

    .line 529
    :cond_5a
    :goto_58
    check-cast v1, Ljava/lang/String;

    move-object/from16 v39, v1

    goto :goto_59

    :cond_5b
    const/16 v39, 0x0

    .line 121
    :goto_59
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_5f

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const/4 v4, 0x0

    .line 530
    move-object v2, v4

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "termsOfUseMinimumVerificationAge"

    .line 531
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5a

    :cond_5c
    const/4 v1, 0x0

    :goto_5a
    if-nez v1, :cond_5d

    :goto_5b
    const/4 v1, 0x0

    goto :goto_5c

    .line 538
    :cond_5d
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_5e

    goto :goto_5b

    .line 543
    :cond_5e
    :goto_5c
    check-cast v1, Ljava/lang/String;

    move-object/from16 v40, v1

    goto :goto_5d

    :cond_5f
    const/16 v40, 0x0

    .line 122
    :goto_5d
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_60

    invoke-virtual {v0, v1}, Lo/ContainerHelpers;->b(Lcom/netflix/android/moneyball/FlowMode;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v41, v1

    goto :goto_5e

    :cond_60
    const/16 v41, 0x0

    .line 124
    :goto_5e
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_64

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const/4 v4, 0x0

    .line 544
    move-object v2, v4

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "hasEligibleOffer"

    .line 545
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_61

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5f

    :cond_61
    const/4 v1, 0x0

    :goto_5f
    if-nez v1, :cond_62

    :goto_60
    const/4 v1, 0x0

    goto :goto_61

    .line 552
    :cond_62
    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_63

    goto :goto_60

    .line 557
    :cond_63
    :goto_61
    check-cast v1, Ljava/lang/Boolean;

    goto :goto_62

    :cond_64
    const/4 v1, 0x0

    :goto_62
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v42

    .line 125
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_68

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const/4 v4, 0x0

    .line 558
    move-object v2, v4

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "offerType"

    .line 559
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_63

    :cond_65
    const/4 v1, 0x0

    :goto_63
    if-nez v1, :cond_66

    :goto_64
    const/4 v1, 0x0

    goto :goto_65

    .line 566
    :cond_66
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_67

    goto :goto_64

    .line 571
    :cond_67
    :goto_65
    check-cast v1, Ljava/lang/String;

    move-object/from16 v43, v1

    goto :goto_66

    :cond_68
    const/16 v43, 0x0

    .line 126
    :goto_66
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_6c

    invoke-virtual {v0, v1}, Lo/ContainerHelpers;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    if-eqz v1, :cond_6c

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const/4 v4, 0x0

    .line 572
    move-object v2, v4

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "offerPrice"

    .line 573
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_67

    :cond_69
    const/4 v1, 0x0

    :goto_67
    if-nez v1, :cond_6a

    :goto_68
    const/4 v1, 0x0

    goto :goto_69

    .line 580
    :cond_6a
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_6b

    goto :goto_68

    .line 585
    :cond_6b
    :goto_69
    check-cast v1, Ljava/lang/String;

    move-object/from16 v44, v1

    goto :goto_6a

    :cond_6c
    const/16 v44, 0x0

    .line 127
    :goto_6a
    iget-object v1, v0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    if-eqz v1, :cond_70

    invoke-virtual {v0, v1}, Lo/ContainerHelpers;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    if-eqz v1, :cond_70

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    move-object v2, v0

    check-cast v2, Lo/TextClassificationSessionId;

    const/16 v19, 0x0

    .line 586
    move-object/from16 v2, v19

    check-cast v2, Lorg/json/JSONObject;

    const-string v2, "offerEndDate"

    .line 587
    invoke-interface {v1, v2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_6b

    :cond_6d
    move-object/from16 v1, v19

    :goto_6b
    if-nez v1, :cond_6e

    goto :goto_6c

    .line 594
    :cond_6e
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_6f

    goto :goto_6c

    :cond_6f
    move-object/from16 v19, v1

    .line 599
    :goto_6c
    check-cast v19, Ljava/lang/String;

    goto :goto_6d

    :cond_70
    const/16 v19, 0x0

    :goto_6d
    move-object/from16 v45, v19

    .line 88
    new-instance v46, Lo/Base64OutputStream;

    move-object/from16 v1, v46

    move v2, v3

    move-object v3, v9

    move v4, v7

    move v5, v10

    move v6, v11

    move/from16 v7, v22

    move-object/from16 v8, v21

    move-object/from16 v9, p1

    move-object/from16 v10, v18

    move-object/from16 v11, v20

    move-object/from16 v14, v35

    move-object/from16 v35, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v24

    move-object/from16 v17, v25

    move-object/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, v28

    move-object/from16 v21, v29

    move-object/from16 v22, v30

    move-object/from16 v23, v31

    move-object/from16 v24, v32

    move/from16 v25, v34

    move-object/from16 v26, v36

    move-object/from16 v27, v37

    move-object/from16 v28, v35

    move-object/from16 v29, v38

    move-object/from16 v30, v39

    move-object/from16 v31, v40

    move-object/from16 v32, v41

    move/from16 v34, v42

    move-object/from16 v35, v43

    move-object/from16 v36, v44

    move-object/from16 v37, v45

    invoke-direct/range {v1 .. v37}, Lo/Base64OutputStream;-><init>(ZLjava/lang/String;ZZZZLcom/netflix/android/moneyball/fields/ChoiceField;Lcom/netflix/android/moneyball/fields/OptionField;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ActionField;ILcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/ActionField;Lcom/netflix/android/moneyball/fields/OptionField;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v46
.end method

.method public final c(Landroidx/fragment/app/Fragment;)Lo/DayOfMonthCursor;
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const-string v1, "fragment"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v1, v6, Lo/ContainerHelpers;->f:Lo/Deprecated$ActionBar;

    invoke-static {v0, v1}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object v0

    const-class v1, Lo/ByteStringUtils;

    invoke-virtual {v0, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(fr\u2026ifecycleData::class.java)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v0

    check-cast v12, Lo/ByteStringUtils;

    .line 196
    new-instance v10, Lo/GenerateLinksLogger;

    iget-object v1, v6, Lo/ContainerHelpers;->b:Lo/TextClassificationManager;

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createDebitOptionViewModel$changePlanRequestLogger$1;->b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createDebitOptionViewModel$changePlanRequestLogger$1;

    move-object v3, v0

    check-cast v3, Lo/alB;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 197
    new-instance v19, Lo/GenerateLinksLogger;

    iget-object v14, v6, Lo/ContainerHelpers;->b:Lo/TextClassificationManager;

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createDebitOptionViewModel$changePaymentRequestLogger$1;->c:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createDebitOptionViewModel$changePaymentRequestLogger$1;

    move-object/from16 v16, v0

    check-cast v16, Lo/alB;

    const/4 v15, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v13, v19

    invoke-direct/range {v13 .. v18}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V

    .line 198
    new-instance v15, Lo/GenerateLinksLogger;

    iget-object v0, v6, Lo/ContainerHelpers;->b:Lo/TextClassificationManager;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createDebitOptionViewModel$startMembershipRequestLogger$1;->c:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createDebitOptionViewModel$startMembershipRequestLogger$1;

    check-cast v1, Lo/alB;

    sget-object v2, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createDebitOptionViewModel$startMembershipRequestLogger$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModelInitializer$createDebitOptionViewModel$startMembershipRequestLogger$2;

    check-cast v2, Lo/alB;

    invoke-direct {v15, v0, v1, v2}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    .line 199
    iget-object v0, v6, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/netflix/android/moneyball/GetField;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v2, "debitOption"

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v14

    .line 200
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/ContainerHelpers;->d()Lkotlin/Triple;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Triple;->c()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lo/DayOfMonthCursor$ActionBar;

    invoke-virtual {v1}, Lkotlin/Triple;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1}, Lkotlin/Triple;->j()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/netflix/android/moneyball/GetField;

    .line 201
    new-instance v26, Lo/DayOfMonthCursor;

    move-object/from16 v7, v26

    .line 202
    iget-object v8, v6, Lo/ContainerHelpers;->c:Lo/TextClassifierImpl;

    .line 203
    iget-object v9, v6, Lo/ContainerHelpers;->g:Lo/InputBinding;

    .line 204
    check-cast v10, Lo/TextClassificationSessionFactory;

    .line 205
    iget-object v1, v6, Lo/ContainerHelpers;->h:Lo/DrawableMarginSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lo/DrawableMarginSpan;->e(Z)Lo/DynamicDrawableSpan;

    move-result-object v11

    .line 207
    invoke-virtual {v6, v0}, Lo/ContainerHelpers;->c(Lcom/netflix/android/moneyball/fields/OptionField;)Lo/Base64OutputStream;

    move-result-object v13

    .line 208
    iget-object v0, v6, Lo/ContainerHelpers;->i:Lo/NotificationRankingUpdate;

    invoke-virtual {v0}, Lo/NotificationRankingUpdate;->c()Lo/NotificationStats;

    move-result-object v0

    move-object v4, v14

    move-object v14, v0

    .line 209
    iget-object v0, v6, Lo/ContainerHelpers;->e:Lo/ParagraphStyle;

    invoke-virtual {v0, v5}, Lo/ParagraphStyle;->e(Lcom/netflix/android/moneyball/GetField;)Lo/LocaleSpan;

    move-result-object v0

    move-object/from16 v18, v15

    move-object v15, v0

    .line 210
    iget-object v0, v6, Lo/ContainerHelpers;->l:Lo/ScaleXSpan;

    invoke-virtual {v0}, Lo/ScaleXSpan;->e()Lo/RelativeSizeSpan;

    move-result-object v16

    const/4 v3, 0x0

    const/16 v17, 0x4

    const/16 v20, 0x0

    const-string v1, "paymentDebit"

    move-object/from16 v0, p0

    move/from16 v4, v17

    move-object/from16 p1, v7

    move-object v7, v5

    move-object/from16 v5, v20

    .line 211
    invoke-static/range {v0 .. v5}, Lo/TextClassificationContext;->e(Lo/TextClassificationContext;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 212
    check-cast v18, Lo/TextClassificationSessionFactory;

    .line 213
    check-cast v19, Lo/TextClassificationSessionFactory;

    .line 214
    iget-object v0, v6, Lo/ContainerHelpers;->j:Lo/SuggestionService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lo/SuggestionService;->d(Lo/SuggestionService;Ljava/lang/String;ILjava/lang/Object;)Lo/TextClassifierService;

    move-result-object v20

    .line 215
    iget-object v0, v6, Lo/ContainerHelpers;->o:Lo/HideReturnsTransformationMethod;

    invoke-virtual {v0}, Lo/HideReturnsTransformationMethod;->a()Lo/DigitsKeyListener;

    move-result-object v21

    .line 216
    iget-object v0, v6, Lo/ContainerHelpers;->m:Lo/BackgroundColorSpan;

    invoke-virtual {v0}, Lo/BackgroundColorSpan;->b()Lo/AlignmentSpan;

    move-result-object v22

    .line 217
    new-instance v0, Lo/SingleLineTransformationMethod;

    move-object/from16 v23, v0

    iget-object v1, v6, Lo/ContainerHelpers;->g:Lo/InputBinding;

    iget-object v3, v6, Lo/ContainerHelpers;->n:Lo/ScrollingMovementMethod;

    const-string v4, "paymentDebit"

    invoke-virtual {v3, v7, v4, v2}, Lo/ScrollingMovementMethod;->d(Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;Lo/InputMethodSession;)Lo/NumberKeyListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/SingleLineTransformationMethod;-><init>(Lo/InputBinding;Lo/NumberKeyListener;)V

    .line 219
    iget-object v0, v6, Lo/ContainerHelpers;->k:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v7, p1

    .line 201
    invoke-direct/range {v7 .. v25}, Lo/DayOfMonthCursor;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/ByteStringUtils;Lo/Base64OutputStream;Lo/NotificationStats;Lo/LocaleSpan;Lo/RelativeSizeSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;Lo/SingleLineTransformationMethod;Lo/DayOfMonthCursor$ActionBar;Ljava/lang/String;)V

    return-object v26
.end method

.method public final d()Lkotlin/Triple;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Lo/DayOfMonthCursor$ActionBar;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;",
            "Lcom/netflix/android/moneyball/GetField;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lo/ContainerHelpers;->d:Lcom/netflix/android/moneyball/FlowMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/netflix/android/moneyball/GetField;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v4, "debitOption"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;Lcom/netflix/android/moneyball/GetField;Ljava/lang/String;ZILjava/lang/Object;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "SignupNativeDataManipulationError"

    const-string v3, "SignupNativeFieldError"

    if-eqz v0, :cond_3

    .line 182
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v6, "debitCardNumber"

    .line 678
    invoke-interface {v4, v6}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 679
    move-object v7, v1

    check-cast v7, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 682
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    move-object v4, v1

    goto :goto_2

    .line 685
    :cond_1
    instance-of v8, v4, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v8, :cond_2

    .line 686
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v2, v6, v7}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 690
    :cond_2
    :goto_2
    check-cast v4, Lcom/netflix/android/moneyball/fields/StringField;

    move-object v6, v4

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    if-eqz v0, :cond_6

    .line 183
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v7, "debitCardExpirationMonth"

    .line 691
    invoke-interface {v4, v7}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 692
    move-object v8, v1

    check-cast v8, Lorg/json/JSONObject;

    if-nez v4, :cond_4

    .line 695
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v3, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_4
    move-object v4, v1

    goto :goto_5

    .line 698
    :cond_4
    instance-of v9, v4, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez v9, :cond_5

    .line 699
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v2, v7, v8}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    .line 703
    :cond_5
    :goto_5
    check-cast v4, Lcom/netflix/android/moneyball/fields/NumberField;

    move-object v7, v4

    goto :goto_6

    :cond_6
    move-object v7, v1

    :goto_6
    if-eqz v0, :cond_9

    .line 184
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v8, "debitCardExpirationYear"

    .line 704
    invoke-interface {v4, v8}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 705
    move-object v9, v1

    check-cast v9, Lorg/json/JSONObject;

    if-nez v4, :cond_7

    .line 708
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v3, v8, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_7
    move-object v4, v1

    goto :goto_8

    .line 711
    :cond_7
    instance-of v10, v4, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez v10, :cond_8

    .line 712
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v2, v8, v9}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_7

    .line 716
    :cond_8
    :goto_8
    check-cast v4, Lcom/netflix/android/moneyball/fields/NumberField;

    move-object v8, v4

    goto :goto_9

    :cond_9
    move-object v8, v1

    :goto_9
    if-eqz v0, :cond_c

    .line 185
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v9, "debitCardSecurityCode"

    .line 717
    invoke-interface {v4, v9}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 718
    move-object v10, v1

    check-cast v10, Lorg/json/JSONObject;

    if-nez v4, :cond_a

    .line 721
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v3, v9, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_a
    move-object v4, v1

    goto :goto_b

    .line 724
    :cond_a
    instance-of v11, v4, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v11, :cond_b

    .line 725
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v4

    invoke-virtual {v4, v2, v9, v10}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_a

    .line 729
    :cond_b
    :goto_b
    check-cast v4, Lcom/netflix/android/moneyball/fields/StringField;

    move-object v9, v4

    goto :goto_c

    :cond_c
    move-object v9, v1

    :goto_c
    if-eqz v0, :cond_f

    .line 186
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/GetField;

    move-object v5, p0

    check-cast v5, Lo/TextClassificationSessionId;

    const-string v10, "debitCardData"

    .line 730
    invoke-interface {v4, v10}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v4

    .line 731
    move-object v11, v1

    check-cast v11, Lorg/json/JSONObject;

    if-nez v4, :cond_d

    .line 734
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-virtual {v2, v3, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_d
    move-object v4, v1

    goto :goto_e

    .line 737
    :cond_d
    instance-of v3, v4, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v3, :cond_e

    .line 738
    invoke-static {v5}, Lo/TextClassificationSessionId;->e(Lo/TextClassificationSessionId;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-virtual {v3, v2, v10, v11}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_d

    .line 742
    :cond_e
    :goto_e
    move-object v2, v4

    check-cast v2, Lcom/netflix/android/moneyball/fields/StringField;

    move-object v10, v2

    goto :goto_f

    :cond_f
    move-object v10, v1

    :goto_f
    if-eqz v0, :cond_12

    .line 187
    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    move-object v3, p0

    check-cast v3, Lo/TextClassificationSessionId;

    const-string v3, "debitZipcode"

    .line 743
    invoke-interface {v2, v3}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v2

    .line 744
    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    if-nez v2, :cond_10

    goto :goto_10

    .line 750
    :cond_10
    instance-of v3, v2, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v3, :cond_11

    goto :goto_10

    :cond_11
    move-object v1, v2

    .line 755
    :goto_10
    check-cast v1, Lcom/netflix/android/moneyball/fields/StringField;

    :cond_12
    move-object v11, v1

    .line 181
    new-instance v1, Lo/DayOfMonthCursor$ActionBar;

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lo/DayOfMonthCursor$ActionBar;-><init>(Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/NumberField;Lcom/netflix/android/moneyball/fields/NumberField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;)V

    .line 189
    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/GetField;

    sget-object v3, Lo/ContainerHelpers;->p:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lo/ContainerHelpers;->a(Lcom/netflix/android/moneyball/GetField;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 180
    new-instance v3, Lkotlin/Triple;

    invoke-direct {v3, v1, v2, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method
