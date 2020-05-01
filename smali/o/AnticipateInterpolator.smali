.class public final Lo/AnticipateInterpolator;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lo/AccelerateInterpolator;

.field private final g:Lo/BaseInterpolator;

.field private final h:Lo/DateUtils;

.field private final i:Lo/InputBinding;

.field private final j:Ljava/lang/String;

.field private final l:Lo/TextUtils;

.field private final m:Lo/Hyphenator;

.field private final n:Lo/AllCapsTransformationMethod;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/BaseInterpolator;Lo/AccelerateInterpolator;Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/DateUtils;Lo/TextUtils;Lo/Hyphenator;Lo/AllCapsTransformationMethod;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycledata"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p4, p1, p5}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p1, p0, Lo/AnticipateInterpolator;->i:Lo/InputBinding;

    iput-object p2, p0, Lo/AnticipateInterpolator;->g:Lo/BaseInterpolator;

    iput-object p3, p0, Lo/AnticipateInterpolator;->f:Lo/AccelerateInterpolator;

    iput-object p6, p0, Lo/AnticipateInterpolator;->h:Lo/DateUtils;

    iput-object p7, p0, Lo/AnticipateInterpolator;->l:Lo/TextUtils;

    iput-object p8, p0, Lo/AnticipateInterpolator;->m:Lo/Hyphenator;

    iput-object p9, p0, Lo/AnticipateInterpolator;->n:Lo/AllCapsTransformationMethod;

    .line 37
    iget-object p1, p0, Lo/AnticipateInterpolator;->i:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->E:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    iget-object p2, p0, Lo/AnticipateInterpolator;->g:Lo/BaseInterpolator;

    invoke-virtual {p2}, Lo/BaseInterpolator;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "age"

    invoke-virtual {p1, p3, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AnticipateInterpolator;->e:Ljava/lang/String;

    .line 39
    iget-object p1, p0, Lo/AnticipateInterpolator;->i:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->L:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    iget-object p2, p0, Lo/AnticipateInterpolator;->g:Lo/BaseInterpolator;

    invoke-virtual {p2}, Lo/BaseInterpolator;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AnticipateInterpolator;->d:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lo/AnticipateInterpolator;->i:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->G:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    iget-object p2, p0, Lo/AnticipateInterpolator;->g:Lo/BaseInterpolator;

    invoke-virtual {p2}, Lo/BaseInterpolator;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AnticipateInterpolator;->c:Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lo/AnticipateInterpolator;->i:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->rI:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    iget-object p2, p0, Lo/AnticipateInterpolator;->g:Lo/BaseInterpolator;

    invoke-virtual {p2}, Lo/BaseInterpolator;->d()Ljava/lang/String;

    move-result-object p2

    const-string p3, "pinRequiredRating"

    invoke-virtual {p1, p3, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AnticipateInterpolator;->a:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lo/AnticipateInterpolator;->i:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->J:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    iget-object p2, p0, Lo/AnticipateInterpolator;->g:Lo/BaseInterpolator;

    invoke-virtual {p2}, Lo/BaseInterpolator;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AnticipateInterpolator;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/AnticipateInterpolator;->b:Z

    return v0
.end method

.method public final e()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/AnticipateInterpolator;->f:Lo/AccelerateInterpolator;

    invoke-virtual {v0}, Lo/AccelerateInterpolator;->c()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/AnticipateInterpolator;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/AnticipateInterpolator;->f:Lo/AccelerateInterpolator;

    invoke-virtual {v0}, Lo/AccelerateInterpolator;->e()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/AnticipateInterpolator;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/AnticipateInterpolator;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/AnticipateInterpolator;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final k()V
    .locals 7

    .line 48
    iget-object v0, p0, Lo/AnticipateInterpolator;->g:Lo/BaseInterpolator;

    invoke-virtual {v0}, Lo/BaseInterpolator;->e()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    invoke-virtual {p0}, Lo/AnticipateInterpolator;->e()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/AnticipateInterpolator;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lo/AnticipateInterpolator;->h:Lo/DateUtils;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DateUtils;->b()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/AnticipateInterpolator;->l:Lo/TextUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/TextUtils;->b()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/AnticipateInterpolator;->m:Lo/Hyphenator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Hyphenator;->d()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final n()Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lo/AnticipateInterpolator;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AnticipateInterpolator;->n:Lo/AllCapsTransformationMethod;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/AllCapsTransformationMethod;->d()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final o()V
    .locals 7

    .line 52
    iget-object v0, p0, Lo/AnticipateInterpolator;->g:Lo/BaseInterpolator;

    invoke-virtual {v0}, Lo/BaseInterpolator;->a()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    invoke-virtual {p0}, Lo/AnticipateInterpolator;->g()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method

.method public final p()Lo/DateUtils;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/AnticipateInterpolator;->h:Lo/DateUtils;

    return-object v0
.end method

.method public final q()Lo/TextUtils;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/AnticipateInterpolator;->l:Lo/TextUtils;

    return-object v0
.end method

.method public final r()Lo/Hyphenator;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/AnticipateInterpolator;->m:Lo/Hyphenator;

    return-object v0
.end method

.method public final t()Lo/AllCapsTransformationMethod;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/AnticipateInterpolator;->n:Lo/AllCapsTransformationMethod;

    return-object v0
.end method
