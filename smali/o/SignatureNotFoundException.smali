.class public final Lo/SignatureNotFoundException;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Z

.field private final b:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final c:Z

.field private final d:Ljava/lang/CharSequence;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:Ljava/lang/String;

.field private final k:Lo/TextLinksParams;

.field private final l:Lo/VerbatimX509Certificate;

.field private final m:Lo/InputBinding;

.field private final n:Lo/DynamicDrawableSpan;

.field private final o:Lo/TextClassificationSessionFactory;

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lo/MemoryMappedFileDataSource;

.field private final r:Lo/TextClassificationSessionFactory;

.field private final t:Lo/TextClassificationSessionFactory;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/TextLinksParams;Lo/TextClassifierImpl;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/VerbatimX509Certificate;Lo/MemoryMappedFileDataSource;Ljava/util/List;Lo/TextClassifierService;Lo/ByteBufferFactory;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputBinding;",
            "Lo/TextLinksParams;",
            "Lo/TextClassifierImpl;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/DynamicDrawableSpan;",
            "Lo/VerbatimX509Certificate;",
            "Lo/MemoryMappedFileDataSource;",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Lo/TextClassifierService;",
            "Lo/ByteBufferFactory;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/TextClassificationSessionFactory;",
            ")V"
        }
    .end annotation

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsRetrieverManager"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkRequestResponseListener"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFields"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otpCodeResentBannerViewModel"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startMembershipRequestLogger"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editPaymentRequestLogger"

    invoke-static {p12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p3, p1, p9}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p1, p0, Lo/SignatureNotFoundException;->m:Lo/InputBinding;

    iput-object p2, p0, Lo/SignatureNotFoundException;->k:Lo/TextLinksParams;

    iput-object p4, p0, Lo/SignatureNotFoundException;->o:Lo/TextClassificationSessionFactory;

    iput-object p5, p0, Lo/SignatureNotFoundException;->n:Lo/DynamicDrawableSpan;

    iput-object p6, p0, Lo/SignatureNotFoundException;->l:Lo/VerbatimX509Certificate;

    iput-object p7, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    iput-object p8, p0, Lo/SignatureNotFoundException;->p:Ljava/util/List;

    iput-object p11, p0, Lo/SignatureNotFoundException;->t:Lo/TextClassificationSessionFactory;

    iput-object p12, p0, Lo/SignatureNotFoundException;->r:Lo/TextClassificationSessionFactory;

    .line 35
    iget-object p1, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {p1}, Lo/MemoryMappedFileDataSource;->h()Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lo/TextLinksParams;->c:Lo/TextLinksParams$StateListAnimator;

    invoke-virtual {p2}, Lo/TextLinksParams$StateListAnimator;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/android/moneyball/fields/Field;->setValue(Ljava/lang/Object;)V

    .line 46
    :cond_0
    iget-object p1, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {p1}, Lo/MemoryMappedFileDataSource;->b()Z

    move-result p1

    iput-boolean p1, p0, Lo/SignatureNotFoundException;->c:Z

    .line 48
    iget-object p1, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {p1}, Lo/MemoryMappedFileDataSource;->i()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object p1

    iput-object p1, p0, Lo/SignatureNotFoundException;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    .line 50
    iget-object p1, p0, Lo/SignatureNotFoundException;->n:Lo/DynamicDrawableSpan;

    invoke-virtual {p1}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/SignatureNotFoundException;->d:Ljava/lang/CharSequence;

    .line 52
    iget-object p1, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {p1}, Lo/MemoryMappedFileDataSource;->d()Z

    move-result p1

    iput-boolean p1, p0, Lo/SignatureNotFoundException;->a:Z

    .line 54
    iget-object p1, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {p1}, Lo/MemoryMappedFileDataSource;->c()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {p2}, Lo/MemoryMappedFileDataSource;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SignatureNotFoundException;->e:Ljava/lang/String;

    .line 56
    iget-object p1, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {p1}, Lo/MemoryMappedFileDataSource;->a()Z

    move-result p1

    iput-boolean p1, p0, Lo/SignatureNotFoundException;->f:Z

    .line 58
    iget-object p1, p0, Lo/SignatureNotFoundException;->k:Lo/TextLinksParams;

    iget-object p2, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {p2}, Lo/MemoryMappedFileDataSource;->h()Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/TextLinksParams;->e(Lcom/netflix/android/moneyball/fields/Field;)Z

    move-result p1

    iput-boolean p1, p0, Lo/SignatureNotFoundException;->i:Z

    .line 61
    iget-object p1, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {p1}, Lo/MemoryMappedFileDataSource;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/SignatureNotFoundException;->m:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ao:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lo/SignatureNotFoundException;->m:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->as:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 61
    :goto_0
    iput-object p1, p0, Lo/SignatureNotFoundException;->h:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {p1}, Lo/MemoryMappedFileDataSource;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p0, Lo/SignatureNotFoundException;->m:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->rH:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 69
    :cond_2
    iget-object p1, p0, Lo/SignatureNotFoundException;->m:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->kQ:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    :goto_1
    iput-object p1, p0, Lo/SignatureNotFoundException;->g:Ljava/lang/String;

    .line 72
    invoke-virtual {p10}, Lo/ByteBufferFactory;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SignatureNotFoundException;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lo/SignatureNotFoundException;->c:Z

    return v0
.end method

.method public final e()V
    .locals 3

    .line 39
    iget-object v0, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {v0}, Lo/MemoryMappedFileDataSource;->j()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/SignatureNotFoundException;->o()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/SignatureNotFoundException;->t:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/SignatureNotFoundException;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/SignatureNotFoundException;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final g()V
    .locals 3

    .line 43
    iget-object v0, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {v0}, Lo/MemoryMappedFileDataSource;->f()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/SignatureNotFoundException;->l()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/SignatureNotFoundException;->r:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/SignatureNotFoundException;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final h()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/SignatureNotFoundException;->b:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lo/SignatureNotFoundException;->i:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/SignatureNotFoundException;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/SignatureNotFoundException;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lo/SignatureNotFoundException;->l:Lo/VerbatimX509Certificate;

    invoke-virtual {v0}, Lo/VerbatimX509Certificate;->c()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/SignatureNotFoundException;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 3

    .line 76
    iget-boolean v0, p0, Lo/SignatureNotFoundException;->a:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fx:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fB:I

    .line 78
    :goto_0
    iget-object v1, p0, Lo/SignatureNotFoundException;->m:Lo/InputBinding;

    .line 79
    invoke-virtual {v1, v0}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lo/SignatureNotFoundException;->e:Ljava/lang/String;

    const-string v2, "phoneNumber"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

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

    .line 85
    iget-object v0, p0, Lo/SignatureNotFoundException;->l:Lo/VerbatimX509Certificate;

    invoke-virtual {v0}, Lo/VerbatimX509Certificate;->a()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lo/TextLinksParams;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/SignatureNotFoundException;->k:Lo/TextLinksParams;

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

    .line 91
    iget-object v0, p0, Lo/SignatureNotFoundException;->l:Lo/VerbatimX509Certificate;

    invoke-virtual {v0}, Lo/VerbatimX509Certificate;->e()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/util/List;
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
    iget-object v0, p0, Lo/SignatureNotFoundException;->p:Ljava/util/List;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 4

    .line 94
    iget-object v0, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {v0}, Lo/MemoryMappedFileDataSource;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    iget-object v2, p0, Lo/SignatureNotFoundException;->m:Lo/InputBinding;

    invoke-virtual {v2, v0}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v2, p0, Lo/SignatureNotFoundException;->h:Ljava/lang/String;

    const-string v3, "BUTTON_TEXT"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v2, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {v2}, Lo/MemoryMappedFileDataSource;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MIN_AGE"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v2, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {v2}, Lo/MemoryMappedFileDataSource;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PRICE"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lo/SignatureNotFoundException;->q:Lo/MemoryMappedFileDataSource;

    invoke-virtual {v2}, Lo/MemoryMappedFileDataSource;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "planBillingFrequency"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v2, p0, Lo/SignatureNotFoundException;->m:Lo/InputBinding;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qz:I

    invoke-virtual {v2, v3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TERMS_URL"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v2, p0, Lo/SignatureNotFoundException;->m:Lo/InputBinding;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->pb:I

    invoke-virtual {v2, v3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PRIVACY_URL"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public final t()Lo/TextClassificationSessionFactory;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/SignatureNotFoundException;->o:Lo/TextClassificationSessionFactory;

    return-object v0
.end method
