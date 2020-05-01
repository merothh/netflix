.class public final Lo/ClipRectAnimation;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private final k:[B

.field private final l:Lo/Interpolator;

.field private final m:Lo/TextClassificationSessionFactory;

.field private final n:Ljava/lang/String;

.field private final o:Lo/TextClassificationSessionFactory;

.field private final s:Lo/CycleInterpolator;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/Interpolator;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/InputBinding;Ljava/lang/String;Lo/CycleInterpolator;)V
    .locals 1

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMemebershipRequestLogger"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backRequestLogger"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewBaseUrl"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p6, p2}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p3, p0, Lo/ClipRectAnimation;->l:Lo/Interpolator;

    iput-object p4, p0, Lo/ClipRectAnimation;->m:Lo/TextClassificationSessionFactory;

    iput-object p5, p0, Lo/ClipRectAnimation;->o:Lo/TextClassificationSessionFactory;

    iput-object p7, p0, Lo/ClipRectAnimation;->n:Ljava/lang/String;

    iput-object p8, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    .line 28
    iget-object p1, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {p1}, Lo/CycleInterpolator;->j()Z

    move-result p1

    iput-boolean p1, p0, Lo/ClipRectAnimation;->b:Z

    .line 30
    iget-object p1, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {p1}, Lo/CycleInterpolator;->d()Z

    move-result p1

    iput-boolean p1, p0, Lo/ClipRectAnimation;->e:Z

    .line 31
    iget-boolean p1, p0, Lo/ClipRectAnimation;->b:Z

    if-eqz p1, :cond_0

    const-string p1, "verifyCardEditPayment"

    goto :goto_0

    :cond_0
    const-string p1, "verifyCard"

    :goto_0
    iput-object p1, p0, Lo/ClipRectAnimation;->a:Ljava/lang/String;

    .line 49
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qU:I

    invoke-virtual {p6, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ClipRectAnimation;->d:Ljava/lang/String;

    .line 51
    iget-object p1, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {p1}, Lo/CycleInterpolator;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ku:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kv:I

    :goto_1
    iput p1, p0, Lo/ClipRectAnimation;->c:I

    .line 52
    iget p1, p0, Lo/ClipRectAnimation;->c:I

    invoke-virtual {p6, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ClipRectAnimation;->i:Ljava/util/List;

    .line 54
    iget-object p1, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {p1}, Lo/CycleInterpolator;->o()Z

    move-result p1

    iput-boolean p1, p0, Lo/ClipRectAnimation;->h:Z

    .line 56
    iget-object p1, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {p1}, Lo/CycleInterpolator;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ClipRectAnimation;->f:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {p1}, Lo/CycleInterpolator;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ClipRectAnimation;->g:Ljava/lang/String;

    .line 60
    iget-boolean p1, p0, Lo/ClipRectAnimation;->h:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/ClipRectAnimation;->g:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lo/ClipRectAnimation;->f:Ljava/lang/String;

    :goto_2
    iput-object p1, p0, Lo/ClipRectAnimation;->j:Ljava/lang/String;

    .line 62
    iget-boolean p1, p0, Lo/ClipRectAnimation;->h:Z

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    const-string p3, "(this as java.lang.String).getBytes(charset)"

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lo/ClipRectAnimation;->l()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Lo/anm;->b:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lo/ClipRectAnimation;->j()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Lo/anm;->b:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    iput-object p1, p0, Lo/ClipRectAnimation;->k:[B

    return-void

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final n()V
    .locals 3

    .line 34
    iget-object v0, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {v0}, Lo/CycleInterpolator;->c()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    iget-object v1, p0, Lo/ClipRectAnimation;->l:Lo/Interpolator;

    invoke-virtual {v1}, Lo/Interpolator;->d()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/ClipRectAnimation;->m:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/ClipRectAnimation;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/ClipRectAnimation;->e:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ClipRectAnimation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {v0}, Lo/CycleInterpolator;->b()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModel$onReceivePaRes$1;->d:Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardViewModel$onReceivePaRes$1;

    check-cast v1, Lo/alN;

    invoke-static {v0, p1, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 46
    invoke-direct {p0}, Lo/ClipRectAnimation;->n()V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 38
    iget-object v0, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {v0}, Lo/CycleInterpolator;->e()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    iget-object v1, p0, Lo/ClipRectAnimation;->l:Lo/Interpolator;

    invoke-virtual {v1}, Lo/Interpolator;->a()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/ClipRectAnimation;->o:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/ClipRectAnimation;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/ClipRectAnimation;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/ClipRectAnimation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lo/ClipRectAnimation;->i:Ljava/util/List;

    return-object v0
.end method

.method public final i()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lo/ClipRectAnimation;->k:[B

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "paReq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {v1}, Lo/CycleInterpolator;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&TermUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ClipRectAnimation;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/verifyCardCallback&md="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {v1}, Lo/CycleInterpolator;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "md="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {v1}, Lo/CycleInterpolator;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&JWT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ClipRectAnimation;->s:Lo/CycleInterpolator;

    invoke-virtual {v1}, Lo/CycleInterpolator;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
