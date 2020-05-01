.class public final Lo/ArrayMap;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lo/AlignmentSpan;

.field private final h:Z

.field private final i:Lo/SingleLineTransformationMethod;

.field private final j:Lo/RelativeSizeSpan;

.field private final k:Z

.field private final l:Lo/NotificationStats;

.field private final m:Lo/OemLockManager;

.field private final n:Lo/LocaleSpan;

.field private final o:Ljava/lang/String;

.field private final q:Lo/AndroidRuntimeException;

.field private final r:Lo/AndroidException;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/AndroidRuntimeException;Lo/AndroidException;Ljava/util/List;Lo/TextClassifierImpl;Lo/TextClassifierService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputBinding;",
            "Lo/AndroidRuntimeException;",
            "Lo/AndroidException;",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Lo/TextClassifierImpl;",
            "Lo/TextClassifierService;",
            ")V"
        }
    .end annotation

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFields"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p5, p1, p6}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p1, p0, Lo/ArrayMap;->t:Lo/InputBinding;

    iput-object p2, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    iput-object p3, p0, Lo/ArrayMap;->r:Lo/AndroidException;

    iput-object p4, p0, Lo/ArrayMap;->s:Ljava/util/List;

    .line 32
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->a()Z

    move-result p1

    iput-boolean p1, p0, Lo/ArrayMap;->c:Z

    .line 34
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ArrayMap;->d:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ArrayMap;->e:Ljava/lang/String;

    .line 38
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ArrayMap;->a:Ljava/lang/String;

    .line 40
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->j()Z

    move-result p1

    iput-boolean p1, p0, Lo/ArrayMap;->b:Z

    .line 42
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->h()Z

    move-result p1

    iput-boolean p1, p0, Lo/ArrayMap;->h:Z

    .line 44
    iget-object p1, p0, Lo/ArrayMap;->r:Lo/AndroidException;

    invoke-virtual {p1}, Lo/AndroidException;->d()Lo/Cloneable;

    move-result-object p1

    iput-object p1, p0, Lo/ArrayMap;->f:Lo/Cloneable;

    .line 46
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->k()Lo/RelativeSizeSpan;

    move-result-object p1

    iput-object p1, p0, Lo/ArrayMap;->j:Lo/RelativeSizeSpan;

    .line 48
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->l()Lo/AlignmentSpan;

    move-result-object p1

    iput-object p1, p0, Lo/ArrayMap;->g:Lo/AlignmentSpan;

    .line 50
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->t()Lo/SingleLineTransformationMethod;

    move-result-object p1

    iput-object p1, p0, Lo/ArrayMap;->i:Lo/SingleLineTransformationMethod;

    .line 52
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->p()Lo/LocaleSpan;

    move-result-object p1

    iput-object p1, p0, Lo/ArrayMap;->n:Lo/LocaleSpan;

    .line 54
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->q()Lo/NotificationStats;

    move-result-object p1

    iput-object p1, p0, Lo/ArrayMap;->l:Lo/NotificationStats;

    .line 56
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->r()Lo/OemLockManager;

    move-result-object p1

    iput-object p1, p0, Lo/ArrayMap;->m:Lo/OemLockManager;

    .line 58
    iget-object p1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {p1}, Lo/AndroidRuntimeException;->n()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ArrayMap;->o:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lo/ArrayMap;->p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "direct_debit_payment_wait"

    invoke-static {p1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lo/ArrayMap;->k:Z

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 7

    .line 144
    iget-object v0, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {v0}, Lo/AndroidRuntimeException;->e()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    iget-object v0, p0, Lo/ArrayMap;->r:Lo/AndroidException;

    invoke-virtual {v0}, Lo/AndroidException;->d()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method

.method public final D()V
    .locals 7

    .line 140
    iget-object v0, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {v0}, Lo/AndroidRuntimeException;->c()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    iget-object v0, p0, Lo/ArrayMap;->r:Lo/AndroidException;

    invoke-virtual {v0}, Lo/AndroidException;->e()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/ArrayMap;->c:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ArrayMap;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lo/ArrayMap;->f:Lo/Cloneable;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lo/ArrayMap;->b:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lo/ArrayMap;->h:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/ArrayMap;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/ArrayMap;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lo/NotificationStats;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/ArrayMap;->l:Lo/NotificationStats;

    return-object v0
.end method

.method public final l()Lo/LocaleSpan;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/ArrayMap;->n:Lo/LocaleSpan;

    return-object v0
.end method

.method public final m()Lo/SingleLineTransformationMethod;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/ArrayMap;->i:Lo/SingleLineTransformationMethod;

    return-object v0
.end method

.method public final n()Lo/AlignmentSpan;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/ArrayMap;->g:Lo/AlignmentSpan;

    return-object v0
.end method

.method public final o()Lo/RelativeSizeSpan;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/ArrayMap;->j:Lo/RelativeSizeSpan;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 3

    .line 92
    iget-object v0, p0, Lo/ArrayMap;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {v0}, Lo/AndroidRuntimeException;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "warn_mop_associated_cm"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "upgrade_no_free_trial"

    if-eqz v0, :cond_0

    return-object v1

    .line 97
    :cond_0
    iget-object v0, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {v0}, Lo/AndroidRuntimeException;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "not_eligible_for_trial"

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 101
    :cond_1
    iget-object v0, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {v0}, Lo/AndroidRuntimeException;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lo/OemLockManager;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/ArrayMap;->m:Lo/OemLockManager;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    .line 78
    iget-object v0, p0, Lo/ArrayMap;->d:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lo/ArrayMap;->t:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rJ:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 81
    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->rM:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lo/ArrayMap;->d:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v1, "welcomeBack"

    .line 84
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    .line 62
    iget-boolean v0, p0, Lo/ArrayMap;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ArrayMap;->t:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->db:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lo/ArrayMap;->t:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aD:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    .line 68
    iget-boolean v0, p0, Lo/ArrayMap;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ArrayMap;->t:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aF:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 3

    .line 128
    iget-object v0, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {v0}, Lo/AndroidRuntimeException;->o()Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOption()Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public final v()V
    .locals 7

    .line 136
    iget-object v0, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {v0}, Lo/AndroidRuntimeException;->b()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    iget-object v0, p0, Lo/ArrayMap;->r:Lo/AndroidException;

    invoke-virtual {v0}, Lo/AndroidException;->b()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method

.method public final w()Z
    .locals 1

    .line 132
    sget-object v0, Lo/fL;->a:Lo/fL$Activity;

    invoke-virtual {v0}, Lo/fL$Activity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ArrayMap;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()Ljava/lang/String;
    .locals 3

    .line 108
    invoke-virtual {p0}, Lo/ArrayMap;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v1, p0, Lo/ArrayMap;->t:Lo/InputBinding;

    invoke-virtual {v1, v0}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    sget-object v1, Lo/fL;->a:Lo/fL$Activity;

    invoke-virtual {v1}, Lo/fL$Activity;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {v1}, Lo/AndroidRuntimeException;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lo/ArrayMap;->j:Lo/RelativeSizeSpan;

    iget-object v2, p0, Lo/ArrayMap;->q:Lo/AndroidRuntimeException;

    invoke-virtual {v2}, Lo/AndroidRuntimeException;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/RelativeSizeSpan;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "planName"

    .line 113
    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    .line 120
    :cond_0
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "format.format()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final y()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lo/ArrayMap;->k:Z

    return v0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lo/ArrayMap;->s:Ljava/util/List;

    return-object v0
.end method
