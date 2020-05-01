.class public final Lo/FrameMetricsObserver;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/CharSequence;

.field private final f:Lo/TextClassificationSessionFactory;

.field private final g:Lo/TextClassificationSessionFactory;

.field private final h:Lo/TextClassificationSessionFactory;

.field private final i:Lo/InputBinding;

.field private final j:Lo/DisplayInfo;

.field private final l:Lo/FrameStats;

.field private final n:Lo/NotificationStats;

.field private final o:Lo/RelativeSizeSpan;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/DisplayInfo;Lo/FrameStats;Lo/NotificationStats;Lo/RelativeSizeSpan;Lo/TextClassifierService;)V
    .locals 1

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkRequestResponseListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanRequestLogger"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePaymentRequestLogger"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanViewModel"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeOnUsPlanViewModel"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p2, p11}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p2, p0, Lo/FrameMetricsObserver;->i:Lo/InputBinding;

    iput-object p3, p0, Lo/FrameMetricsObserver;->g:Lo/TextClassificationSessionFactory;

    iput-object p4, p0, Lo/FrameMetricsObserver;->h:Lo/TextClassificationSessionFactory;

    iput-object p5, p0, Lo/FrameMetricsObserver;->f:Lo/TextClassificationSessionFactory;

    iput-object p7, p0, Lo/FrameMetricsObserver;->j:Lo/DisplayInfo;

    iput-object p8, p0, Lo/FrameMetricsObserver;->l:Lo/FrameStats;

    iput-object p9, p0, Lo/FrameMetricsObserver;->n:Lo/NotificationStats;

    iput-object p10, p0, Lo/FrameMetricsObserver;->o:Lo/RelativeSizeSpan;

    .line 50
    iget-object p1, p0, Lo/FrameMetricsObserver;->l:Lo/FrameStats;

    invoke-virtual {p1}, Lo/FrameStats;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "giftOptionMode"

    :goto_0
    iput-object p1, p0, Lo/FrameMetricsObserver;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p6}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/FrameMetricsObserver;->e:Ljava/lang/CharSequence;

    .line 54
    iget-object p1, p0, Lo/FrameMetricsObserver;->l:Lo/FrameStats;

    invoke-virtual {p1}, Lo/FrameStats;->c()Z

    move-result p1

    iput-boolean p1, p0, Lo/FrameMetricsObserver;->b:Z

    .line 56
    iget-object p1, p0, Lo/FrameMetricsObserver;->l:Lo/FrameStats;

    invoke-virtual {p1}, Lo/FrameStats;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/FrameMetricsObserver;->d:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lo/FrameMetricsObserver;->l:Lo/FrameStats;

    invoke-virtual {p1}, Lo/FrameStats;->e()Z

    move-result p1

    iput-boolean p1, p0, Lo/FrameMetricsObserver;->c:Z

    return-void
.end method

.method private final r()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lo/FrameMetricsObserver;->j:Lo/DisplayInfo;

    invoke-virtual {v0}, Lo/DisplayInfo;->e()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lo/FrameMetricsObserver;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/FrameMetricsObserver;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 39
    iget-object v0, p0, Lo/FrameMetricsObserver;->l:Lo/FrameStats;

    invoke-virtual {v0}, Lo/FrameStats;->d()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/FrameMetricsObserver;->o()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/FrameMetricsObserver;->g:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/FrameMetricsObserver;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 47
    iget-object v0, p0, Lo/FrameMetricsObserver;->l:Lo/FrameStats;

    invoke-virtual {v0}, Lo/FrameStats;->a()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-direct {p0}, Lo/FrameMetricsObserver;->r()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/FrameMetricsObserver;->f:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/FrameMetricsObserver;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lo/FrameMetricsObserver;->c:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/FrameMetricsObserver;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final i()V
    .locals 3

    .line 43
    iget-object v0, p0, Lo/FrameMetricsObserver;->n:Lo/NotificationStats;

    invoke-virtual {v0}, Lo/NotificationStats;->c()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/FrameMetricsObserver;->n()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/FrameMetricsObserver;->h:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/FrameMetricsObserver;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final j()Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/FrameMetricsObserver;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final k()Lo/NotificationStats;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/FrameMetricsObserver;->n:Lo/NotificationStats;

    return-object v0
.end method

.method public final l()Landroid/text/Spanned;
    .locals 2

    .line 69
    iget-object v0, p0, Lo/FrameMetricsObserver;->i:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iB:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lo/RelativeSizeSpan;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/FrameMetricsObserver;->o:Lo/RelativeSizeSpan;

    return-object v0
.end method

.method public final n()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lo/FrameMetricsObserver;->j:Lo/DisplayInfo;

    invoke-virtual {v0}, Lo/DisplayInfo;->d()Lo/Cloneable;

    move-result-object v0

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

    .line 60
    iget-object v0, p0, Lo/FrameMetricsObserver;->j:Lo/DisplayInfo;

    invoke-virtual {v0}, Lo/DisplayInfo;->a()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method
