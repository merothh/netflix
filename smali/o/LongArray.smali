.class public final Lo/LongArray;
.super Lo/MathUtils;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/aka;


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
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitCOViewModel$moneyBallActionModeOverride$2;

    invoke-direct {p1, p6}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitCOViewModel$moneyBallActionModeOverride$2;-><init>(Lo/MutableBoolean;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/LongArray;->d:Lo/aka;

    .line 53
    invoke-virtual {p6}, Lo/MutableBoolean;->h()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p6}, Lo/MutableBoolean;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qX:I

    .line 54
    invoke-virtual {p2, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gx:I

    invoke-virtual {p2, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lo/LongArray;->a:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lo/LongArray;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/LongArray;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/LongArray;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/LongArray;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lo/LongArray;->b:Ljava/util/List;

    return-object v0
.end method
