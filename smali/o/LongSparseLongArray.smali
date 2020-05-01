.class public final Lo/LongSparseLongArray;
.super Lo/MathUtils;
.source ""


# instance fields
.field private final b:Lo/aka;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/MalformedJsonException;Lo/MutableBoolean;Lo/NotificationStats;Lo/LocaleSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextClassifierImpl;",
            "Lo/InputBinding;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/DynamicDrawableSpan;",
            "Lo/MalformedJsonException;",
            "Lo/MutableBoolean;",
            "Lo/NotificationStats;",
            "Lo/LocaleSpan;",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/TextClassifierService;",
            "Lo/DigitsKeyListener;",
            "Lo/AlignmentSpan;",
            ")V"
        }
    .end annotation

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanRequestLogger"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanViewModel"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touViewModel"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFields"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipRequestLogger"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePaymentRequestLogger"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "giftCodeAppliedViewModel"

    invoke-static {p13, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipViewModel"

    invoke-static {p14, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct/range {p0 .. p14}, Lo/MathUtils;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/MalformedJsonException;Lo/MutableBoolean;Lo/NotificationStats;Lo/LocaleSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassifierService;Lo/DigitsKeyListener;Lo/AlignmentSpan;)V

    .line 48
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitDEViewModel$moneyBallActionModeOverride$2;

    invoke-direct {p1, p6}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitDEViewModel$moneyBallActionModeOverride$2;-><init>(Lo/MutableBoolean;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/LongSparseLongArray;->b:Lo/aka;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/LongSparseLongArray;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lo/LongSparseLongArray;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/LongSparseLongArray;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/LongSparseLongArray;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lo/LongSparseLongArray;->y()Lo/InputBinding;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->db:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lo/LongSparseLongArray;->v()Lo/MutableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lo/MutableBoolean;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo/LongSparseLongArray;->v()Lo/MutableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lo/MutableBoolean;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lo/LongSparseLongArray;->y()Lo/InputBinding;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qP:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lo/LongSparseLongArray;->y()Lo/InputBinding;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gx:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lo/LongSparseLongArray;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/LongSparseLongArray;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/LongSparseLongArray;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0}, Lo/LongSparseLongArray;->y()Lo/InputBinding;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->iE:I

    invoke-virtual {v2, v3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p0}, Lo/LongSparseLongArray;->y()Lo/InputBinding;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ko:I

    invoke-virtual {v2, v3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lo/LongSparseLongArray;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/LongSparseLongArray;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/LongSparseLongArray;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lo/LongSparseLongArray;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
