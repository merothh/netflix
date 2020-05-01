.class public abstract Lo/Base64;
.super Lo/ChangeScroll;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Base64$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lo/Base64$TaskDescription;


# instance fields
.field private final A:Lo/SingleLineTransformationMethod;

.field private final C:Ljava/lang/String;

.field private final a:Z

.field private b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/CharSequence;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Lo/TextClassificationSessionFactory;

.field private l:Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;

.field private final m:Ljava/lang/String;

.field private final n:Lo/InputBinding;

.field private final o:Lo/aka;

.field private final p:Lo/Base64OutputStream;

.field private final q:Lo/ByteStringUtils;

.field private final r:Lo/LocaleSpan;

.field private final s:Lo/RelativeSizeSpan;

.field private final t:Lo/NotificationStats;

.field private final u:Lo/TextClassificationSessionFactory;

.field private final v:Lo/TextClassificationSessionFactory;

.field private final w:Lo/DigitsKeyListener;

.field private final x:Lo/AlignmentSpan;

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Base64$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Base64$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Base64;->e:Lo/Base64$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/ByteStringUtils;Lo/Base64OutputStream;Lo/NotificationStats;Lo/LocaleSpan;Lo/RelativeSizeSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;Lo/SingleLineTransformationMethod;Ljava/lang/String;)V
    .locals 16
    .param p17    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

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

    const-string v0, "signupNetworkManager"

    invoke-static {v1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {v2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanRequestLogger"

    invoke-static {v3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {v4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {v5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanViewModel"

    invoke-static {v6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touViewModel"

    invoke-static {v7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeOnUsPlanViewModel"

    invoke-static {v8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFields"

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipRequestLogger"

    invoke-static {v10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePaymentRequestLogger"

    invoke-static {v11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {v12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "giftCodeAppliedViewModel"

    invoke-static {v13, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipViewModel"

    invoke-static {v14, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "koreaCheckBoxesViewModel"

    invoke-static {v15, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewBaseUrl"

    move-object/from16 v3, p17

    invoke-static {v3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 67
    invoke-direct {v0, v1, v2, v12}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object v2, v0, Lo/Base64;->n:Lo/InputBinding;

    move-object/from16 v1, p3

    iput-object v1, v0, Lo/Base64;->k:Lo/TextClassificationSessionFactory;

    iput-object v4, v0, Lo/Base64;->q:Lo/ByteStringUtils;

    iput-object v5, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    iput-object v6, v0, Lo/Base64;->t:Lo/NotificationStats;

    iput-object v7, v0, Lo/Base64;->r:Lo/LocaleSpan;

    iput-object v8, v0, Lo/Base64;->s:Lo/RelativeSizeSpan;

    iput-object v9, v0, Lo/Base64;->y:Ljava/util/List;

    iput-object v10, v0, Lo/Base64;->v:Lo/TextClassificationSessionFactory;

    iput-object v11, v0, Lo/Base64;->u:Lo/TextClassificationSessionFactory;

    iput-object v13, v0, Lo/Base64;->w:Lo/DigitsKeyListener;

    iput-object v14, v0, Lo/Base64;->x:Lo/AlignmentSpan;

    iput-object v15, v0, Lo/Base64;->A:Lo/SingleLineTransformationMethod;

    iput-object v3, v0, Lo/Base64;->C:Ljava/lang/String;

    .line 75
    invoke-virtual/range {p0 .. p0}, Lo/Base64;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->o()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lo/Base64;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/emvco3ds/stepUpAuthentication/callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    .line 77
    :cond_0
    iget-object v1, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->k()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    .line 95
    :cond_1
    iget-object v1, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->c()Z

    move-result v1

    iput-boolean v1, v0, Lo/Base64;->a:Z

    .line 102
    invoke-virtual/range {p4 .. p4}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lo/Base64;->d:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual/range {p0 .. p0}, Lo/Base64;->g()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/StringField;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v1, v2

    :cond_3
    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lo/Base64;->c:Ljava/lang/String;

    .line 106
    iget-object v1, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->b()Z

    move-result v1

    iput-boolean v1, v0, Lo/Base64;->i:Z

    .line 108
    iget-object v1, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->e()Z

    move-result v1

    iput-boolean v1, v0, Lo/Base64;->h:Z

    .line 119
    iget-object v1, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v0, Lo/Base64;->n:Lo/InputBinding;

    invoke-virtual {v2, v1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    iput-object v2, v0, Lo/Base64;->f:Ljava/lang/String;

    .line 127
    iget-object v1, v0, Lo/Base64;->x:Lo/AlignmentSpan;

    invoke-virtual {v1}, Lo/AlignmentSpan;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/Base64;->g:Ljava/lang/String;

    .line 131
    iget-object v1, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->p()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->s()I

    move-result v1

    if-le v1, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lo/Base64;->j:Z

    .line 137
    iget-object v1, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    iget-object v1, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 139
    iget-object v1, v0, Lo/Base64;->n:Lo/InputBinding;

    .line 140
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qH:I

    .line 139
    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 143
    :cond_6
    iget-object v1, v0, Lo/Base64;->n:Lo/InputBinding;

    .line 144
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gx:I

    .line 143
    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 147
    :cond_7
    iget-object v1, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "offerPrice"

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x76eea0fb

    if-eq v3, v4, :cond_9

    goto :goto_2

    :cond_9
    const-string v3, "creditCardDisplayStringId"

    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 149
    invoke-direct/range {p0 .. p0}, Lo/Base64;->J()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 150
    iget-object v1, v0, Lo/Base64;->n:Lo/InputBinding;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qS:I

    invoke-virtual {v1, v3}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v1

    .line 151
    iget-object v3, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v3}, Lo/Base64OutputStream;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 154
    :cond_a
    iget-object v1, v0, Lo/Base64;->n:Lo/InputBinding;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qO:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 158
    :cond_b
    :goto_2
    invoke-direct/range {p0 .. p0}, Lo/Base64;->J()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 159
    iget-object v1, v0, Lo/Base64;->n:Lo/InputBinding;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qQ:I

    invoke-virtual {v1, v3}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v1

    .line 160
    iget-object v3, v0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v3}, Lo/Base64OutputStream;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 163
    :cond_c
    iget-object v1, v0, Lo/Base64;->n:Lo/InputBinding;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qT:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v2, "when (parsedData.payment\u2026      }\n                }"

    .line 147
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    :goto_4
    iput-object v1, v0, Lo/Base64;->m:Ljava/lang/String;

    .line 238
    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModel$requestQueue$2;->b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayViewModel$requestQueue$2;

    check-cast v1, Lo/alB;

    invoke-static {v1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v1

    iput-object v1, v0, Lo/Base64;->o:Lo/aka;

    return-void
.end method

.method private final J()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCFM"

    invoke-static {v1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final R()Lo/FragmentHostCallback;
    .locals 1

    iget-object v0, p0, Lo/Base64;->o:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FragmentHostCallback;

    return-object v0
.end method

.method private final a(Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;)V
    .locals 1

    .line 173
    invoke-virtual {p0}, Lo/Base64;->f()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lo/Base64;->c(Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;)Ljava/lang/String;
    .locals 9

    .line 181
    invoke-virtual {p0}, Lo/Base64;->g()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Lo/Base64;->i()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Lo/Base64;->h()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lo/Base64;->j()Lcom/netflix/android/moneyball/fields/NumberField;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/NumberField;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lo/Base64;->k()Lcom/netflix/android/moneyball/fields/NumberField;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/NumberField;->isValid()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return-object v1

    .line 184
    :cond_5
    invoke-virtual {p0}, Lo/Base64;->g()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v2

    .line 185
    :goto_0
    invoke-virtual {p0}, Lo/Base64;->i()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/StringField;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_7
    move-object v3, v2

    .line 186
    :goto_1
    invoke-virtual {p0}, Lo/Base64;->h()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/StringField;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-object v4, v2

    .line 187
    :goto_2
    invoke-virtual {p0}, Lo/Base64;->j()Lcom/netflix/android/moneyball/fields/NumberField;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/NumberField;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    :cond_9
    move-object v5, v2

    :goto_3
    const-string v6, "null cannot be cast to non-null type kotlin.Long"

    if-eqz v5, :cond_d

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 188
    invoke-virtual {p0}, Lo/Base64;->k()Lcom/netflix/android/moneyball/fields/NumberField;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/NumberField;->getValue()Ljava/lang/Object;

    move-result-object v2

    :cond_a
    if-eqz v2, :cond_c

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 190
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x22

    if-eqz v4, :cond_b

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ",\"cvv\":\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"cc\":{\"num\":\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"zip\": \""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"expMon\":\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"expYr\":\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    sget-object v1, Lcom/netflix/mediaclient/acquisition/util/crypto/SecureMOP;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/crypto/SecureMOP;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/acquisition/util/crypto/SecureMOP;->encrypt(Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 188
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .line 325
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->j()Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lo/Base64;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final B()V
    .locals 3

    .line 232
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->p()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lo/Base64;->r()Lo/Cloneable;

    move-result-object v1

    .line 234
    iget-object v2, p0, Lo/Base64;->u:Lo/TextClassificationSessionFactory;

    .line 231
    invoke-virtual {p0, v0, v1, v2}, Lo/Base64;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final C()Ljava/lang/String;
    .locals 3

    .line 330
    iget-object v0, p0, Lo/Base64;->s:Lo/RelativeSizeSpan;

    invoke-virtual {v0}, Lo/RelativeSizeSpan;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Base64;->s:Lo/RelativeSizeSpan;

    iget-object v1, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/RelativeSizeSpan;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Base64;->h:Z

    if-eqz v0, :cond_0

    .line 333
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ch:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lo/Base64;->s:Lo/RelativeSizeSpan;

    iget-object v2, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v2}, Lo/Base64OutputStream;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/RelativeSizeSpan;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "planName"

    .line 334
    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final E()Lo/Base64OutputStream;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    return-object v0
.end method

.method public final F()Lo/NotificationStats;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/Base64;->t:Lo/NotificationStats;

    return-object v0
.end method

.method public final G()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Lo/Base64;->J()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 347
    iget-object v2, p0, Lo/Base64;->n:Lo/InputBinding;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qn:I

    invoke-virtual {v2, v3}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v2

    .line 348
    iget-object v3, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v3}, Lo/Base64OutputStream;->A()Ljava/lang/String;

    move-result-object v3

    const-string v4, "offerPrice"

    invoke-virtual {v2, v4, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v2

    .line 349
    invoke-virtual {v2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 350
    iget-object v2, p0, Lo/Base64;->n:Lo/InputBinding;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qu:I

    invoke-virtual {v2, v3}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v2

    .line 351
    iget-object v3, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v3}, Lo/Base64OutputStream;->x()Ljava/lang/String;

    move-result-object v3

    const-string v4, "planPrice"

    invoke-virtual {v2, v4, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v2

    .line 352
    iget-object v3, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v3}, Lo/Base64OutputStream;->C()Ljava/lang/String;

    move-result-object v3

    const-string v4, "offerEndDate"

    invoke-virtual {v2, v4, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v2

    .line 353
    invoke-virtual {v2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 346
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lo/Base64;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 362
    :cond_1
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->w()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    const/4 v0, 0x0

    .line 366
    check-cast v0, Ljava/lang/String;

    .line 368
    iget-boolean v2, p0, Lo/Base64;->h:Z

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 369
    iget-object v1, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 370
    iget-object v1, p0, Lo/Base64;->n:Lo/InputBinding;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->iE:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 371
    :cond_3
    iget-boolean v1, p0, Lo/Base64;->i:Z

    if-nez v1, :cond_6

    .line 372
    iget-object v1, p0, Lo/Base64;->n:Lo/InputBinding;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->iD:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 374
    :cond_4
    iget-boolean v2, p0, Lo/Base64;->h:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    goto :goto_0

    .line 379
    :cond_5
    iget-boolean v2, p0, Lo/Base64;->h:Z

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    .line 380
    iget-object v1, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->i()Z

    move-result v1

    :cond_6
    :goto_0
    move-object v1, v0

    .line 388
    :goto_1
    iget-object v2, p0, Lo/Base64;->n:Lo/InputBinding;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ko:I

    invoke-virtual {v2, v3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    iget-object v3, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v3}, Lo/Base64OutputStream;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v3}, Lo/Base64OutputStream;->d()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lo/Base64;->i:Z

    if-nez v3, :cond_8

    :cond_7
    iget-boolean v3, p0, Lo/Base64;->h:Z

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    move-object v0, v2

    .line 397
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    if-eqz v1, :cond_9

    .line 399
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v0, :cond_a

    .line 402
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v2
.end method

.method public final H()Lo/RelativeSizeSpan;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/Base64;->s:Lo/RelativeSizeSpan;

    return-object v0
.end method

.method public final I()Lo/LocaleSpan;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/Base64;->r:Lo/LocaleSpan;

    return-object v0
.end method

.method public final K()Lo/SingleLineTransformationMethod;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/Base64;->A:Lo/SingleLineTransformationMethod;

    return-object v0
.end method

.method public final L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lo/Base64;->y:Ljava/util/List;

    return-object v0
.end method

.method public final M()Lo/DigitsKeyListener;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/Base64;->w:Lo/DigitsKeyListener;

    return-object v0
.end method

.method public final N()Lo/AlignmentSpan;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/Base64;->x:Lo/AlignmentSpan;

    return-object v0
.end method

.method public a()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lo/Base64;->a:Z

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 292
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->q()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    .line 293
    :cond_0
    iget-object p1, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {p1}, Lo/Base64OutputStream;->o()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/emvco3ds/stepUpAuthentication/callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    .line 294
    :cond_1
    iget-object p1, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {p1}, Lo/Base64OutputStream;->k()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "esn"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 311
    sget-object v2, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v2, v1}, Lo/abD$StateListAnimator;->h(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "SignupUtilities.getBestN\u2026              .toString()"

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "_"

    const-string v4, "-"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 313
    invoke-static/range {v2 .. v7}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 315
    iget-object v2, p0, Lo/Base64;->C:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 316
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "mobilesignup/emvcodevicefallbackdata"

    .line 317
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "netflixClientPlatform"

    const-string v4, "androidNative"

    .line 318
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 319
    invoke-virtual {v2, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "locale"

    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Uri.parse(webViewBaseUrl\u2026              .toString()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d(Landroid/content/Context;Lo/alB;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/alB<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mopKeyFetchFailed"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/util/EndpointUtilities;->isTestStack(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://ncds.test.netflix.com/v1/2/current"

    goto :goto_0

    :cond_0
    const-string v0, "https://ncds.netflix.com/v1/2/current"

    :goto_0
    move-object v7, v0

    .line 257
    new-instance v0, Lo/Base64$Application;

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 259
    new-instance v1, Lo/Base64$Activity;

    invoke-direct {v1, p0}, Lo/Base64$Activity;-><init>(Lo/Base64;)V

    move-object v9, v1

    check-cast v9, Lo/FragmentManagerNonConfig$StateListAnimator;

    .line 267
    new-instance v1, Lo/Base64$StateListAnimator;

    invoke-direct {v1, p0, p1, p2}, Lo/Base64$StateListAnimator;-><init>(Lo/Base64;Landroid/content/Context;Lo/alB;)V

    move-object v10, v1

    check-cast v10, Lo/FragmentManagerNonConfig$Activity;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v7

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v10}, Lo/Base64$Application;-><init>(Lo/Base64;Ljava/lang/String;Landroid/content/Context;Lo/alB;ILjava/lang/String;Lorg/json/JSONObject;Lo/FragmentManagerNonConfig$StateListAnimator;Lo/FragmentManagerNonConfig$Activity;)V

    .line 288
    invoke-direct {p0}, Lo/Base64;->R()Lo/FragmentHostCallback;

    move-result-object p1

    check-cast v0, Lcom/android/volley/Request;

    invoke-virtual {p1, v0}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public final d(Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lo/Base64;->l:Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;

    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final e(I)V
    .locals 0

    .line 97
    iput p1, p0, Lo/Base64;->b:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->l()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract f()Lcom/netflix/android/moneyball/fields/StringField;
.end method

.method public abstract g()Lcom/netflix/android/moneyball/fields/StringField;
.end method

.method public abstract h()Lcom/netflix/android/moneyball/fields/StringField;
.end method

.method public abstract i()Lcom/netflix/android/moneyball/fields/StringField;
.end method

.method public abstract j()Lcom/netflix/android/moneyball/fields/NumberField;
.end method

.method public abstract k()Lcom/netflix/android/moneyball/fields/NumberField;
.end method

.method public final l()I
    .locals 1

    .line 97
    iget v0, p0, Lo/Base64;->b:I

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lo/Base64;->r:Lo/LocaleSpan;

    invoke-virtual {v0}, Lo/LocaleSpan;->j()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final n()Ljava/lang/CharSequence;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/Base64;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final o()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lo/Base64;->q:Lo/ByteStringUtils;

    invoke-virtual {v0}, Lo/ByteStringUtils;->c()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/Base64;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lo/Base64;->q:Lo/ByteStringUtils;

    invoke-virtual {v0}, Lo/ByteStringUtils;->b()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lo/Base64;->q:Lo/ByteStringUtils;

    invoke-virtual {v0}, Lo/ByteStringUtils;->e()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lo/Base64;->A:Lo/SingleLineTransformationMethod;

    invoke-virtual {v0}, Lo/SingleLineTransformationMethod;->a()Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lo/Base64;->j:Z

    return v0
.end method

.method public final w()V
    .locals 3

    .line 224
    iget-object v0, p0, Lo/Base64;->t:Lo/NotificationStats;

    invoke-virtual {v0}, Lo/NotificationStats;->c()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Lo/Base64;->q()Lo/Cloneable;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lo/Base64;->k:Lo/TextClassificationSessionFactory;

    .line 223
    invoke-virtual {p0, v0, v1, v2}, Lo/Base64;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lo/Base64;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final y()V
    .locals 3

    .line 204
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->j()Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->h()Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->setOption(Lcom/netflix/android/moneyball/fields/OptionField;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lo/Base64;->l:Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;

    if-nez v0, :cond_1

    return-void

    .line 212
    :cond_1
    invoke-direct {p0, v0}, Lo/Base64;->a(Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;)V

    .line 216
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->y()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v0}, Lo/Base64OutputStream;->v()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    .line 217
    :goto_0
    invoke-virtual {p0}, Lo/Base64;->o()Lo/Cloneable;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lo/Base64;->v:Lo/TextClassificationSessionFactory;

    .line 215
    invoke-virtual {p0, v0, v1, v2}, Lo/Base64;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final z()Ljava/lang/String;
    .locals 3

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->getBIN_LENGTH()I

    move-result v2

    invoke-static {v1, v2}, Lo/anv;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&JWT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Base64;->p:Lo/Base64OutputStream;

    invoke-virtual {v1}, Lo/Base64OutputStream;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
