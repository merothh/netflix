.class public final Lo/Config;
.super Lo/Base64;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Config$Activity;
    }
.end annotation


# instance fields
.field private final a:Lcom/netflix/android/moneyball/fields/StringField;

.field private final b:Lcom/netflix/android/moneyball/fields/StringField;

.field private final c:Lcom/netflix/android/moneyball/fields/StringField;

.field private final d:Lcom/netflix/android/moneyball/fields/StringField;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/netflix/android/moneyball/fields/NumberField;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/netflix/android/moneyball/fields/NumberField;

.field private final j:Lo/Config$Activity;

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/ByteStringUtils;Lo/Base64OutputStream;Lo/NotificationStats;Lo/LocaleSpan;Lo/RelativeSizeSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;Lo/SingleLineTransformationMethod;Lo/Config$Activity;Ljava/lang/String;)V
    .locals 22
    .param p18    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "webViewBaseUrl"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextClassifierImpl;",
            "Lo/InputBinding;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/DynamicDrawableSpan;",
            "Lo/ByteStringUtils;",
            "Lo/Base64OutputStream;",
            "Lo/NotificationStats;",
            "Lo/LocaleSpan;",
            "Lo/RelativeSizeSpan;",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/TextClassifierService;",
            "Lo/DigitsKeyListener;",
            "Lo/AlignmentSpan;",
            "Lo/SingleLineTransformationMethod;",
            "Lo/Config$Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p17

    move-object/from16 v13, p18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v18, v0

    move-object v0, v13

    move-object/from16 v13, p13

    move-object/from16 v19, v1

    move-object v1, v14

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p18

    move-object/from16 v20, v2

    const-string v2, "signupNetworkManager"

    move-object/from16 v21, v3

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "stringProvider"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "changePlanRequestLogger"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "stepsViewModel"

    move-object/from16 v3, p4

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "lifecycleData"

    move-object/from16 v3, p5

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "parsedData"

    move-object/from16 v3, p6

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "changePlanViewModel"

    move-object/from16 v3, p7

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "touViewModel"

    move-object/from16 v3, p8

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "upgradeOnUsPlanViewModel"

    move-object/from16 v3, p9

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "formFields"

    move-object/from16 v3, p10

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "startMembershipRequestLogger"

    move-object/from16 v3, p11

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "changePaymentRequestLogger"

    move-object/from16 v3, p12

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "errorMessageViewModel"

    move-object/from16 v3, p13

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "giftCodeAppliedViewModel"

    move-object/from16 v3, p14

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "startMembershipViewModel"

    move-object/from16 v3, p15

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "koreaCheckBoxesViewModel"

    move-object/from16 v3, p16

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "creditOptionParsedData"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "webViewBaseUrl"

    invoke-static {v0, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    .line 39
    invoke-direct/range {v0 .. v17}, Lo/Base64;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/ByteStringUtils;Lo/Base64OutputStream;Lo/NotificationStats;Lo/LocaleSpan;Lo/RelativeSizeSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;Lo/SingleLineTransformationMethod;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p17

    iput-object v1, v0, Lo/Config;->j:Lo/Config$Activity;

    move-object/from16 v1, p18

    iput-object v1, v0, Lo/Config;->k:Ljava/lang/String;

    .line 59
    iget-object v1, v0, Lo/Config;->j:Lo/Config$Activity;

    invoke-virtual {v1}, Lo/Config$Activity;->c()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v1

    iput-object v1, v0, Lo/Config;->b:Lcom/netflix/android/moneyball/fields/StringField;

    .line 61
    iget-object v1, v0, Lo/Config;->j:Lo/Config$Activity;

    invoke-virtual {v1}, Lo/Config$Activity;->b()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v1

    iput-object v1, v0, Lo/Config;->d:Lcom/netflix/android/moneyball/fields/StringField;

    .line 63
    iget-object v1, v0, Lo/Config;->j:Lo/Config$Activity;

    invoke-virtual {v1}, Lo/Config$Activity;->d()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v1

    iput-object v1, v0, Lo/Config;->c:Lcom/netflix/android/moneyball/fields/StringField;

    .line 65
    iget-object v1, v0, Lo/Config;->j:Lo/Config$Activity;

    invoke-virtual {v1}, Lo/Config$Activity;->a()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v1

    iput-object v1, v0, Lo/Config;->a:Lcom/netflix/android/moneyball/fields/StringField;

    .line 67
    iget-object v1, v0, Lo/Config;->j:Lo/Config$Activity;

    invoke-virtual {v1}, Lo/Config$Activity;->e()Lcom/netflix/android/moneyball/fields/NumberField;

    move-result-object v1

    iput-object v1, v0, Lo/Config;->g:Lcom/netflix/android/moneyball/fields/NumberField;

    .line 69
    iget-object v1, v0, Lo/Config;->j:Lo/Config$Activity;

    invoke-virtual {v1}, Lo/Config$Activity;->i()Lcom/netflix/android/moneyball/fields/NumberField;

    move-result-object v1

    iput-object v1, v0, Lo/Config;->i:Lcom/netflix/android/moneyball/fields/NumberField;

    const-string v1, "creditOption"

    .line 71
    iput-object v1, v0, Lo/Config;->h:Ljava/lang/String;

    .line 73
    invoke-virtual/range {p6 .. p6}, Lo/Base64OutputStream;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "creditOptionMode"

    :goto_0
    iput-object v1, v0, Lo/Config;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/Config;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/Config;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/Config;->b:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public g()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/Config;->d:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public h()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/Config;->a:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public i()Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/Config;->c:Lcom/netflix/android/moneyball/fields/StringField;

    return-object v0
.end method

.method public j()Lcom/netflix/android/moneyball/fields/NumberField;
    .locals 1

    .line 67
    iget-object v0, p0, Lo/Config;->g:Lcom/netflix/android/moneyball/fields/NumberField;

    return-object v0
.end method

.method public k()Lcom/netflix/android/moneyball/fields/NumberField;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/Config;->i:Lcom/netflix/android/moneyball/fields/NumberField;

    return-object v0
.end method
