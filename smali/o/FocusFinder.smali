.class public final Lo/FocusFinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Explode;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/CharSequence;

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TransformationMethod2;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/netflix/cl/model/TrackingInfo;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/String;

.field private final m:Z

.field private final n:Lo/DisplayAdjustments;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/DisplayAdjustments;Lo/Choreographer;Ljava/util/List;Lo/TextClassifierService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputBinding;",
            "Lo/DynamicDrawableSpan;",
            "Lo/DisplayAdjustments;",
            "Lo/Choreographer;",
            "Ljava/util/List<",
            "Lo/TransformationMethod2;",
            ">;",
            "Lo/TextClassifierService;",
            ")V"
        }
    .end annotation

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentOptionViewModels"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lo/FocusFinder;->n:Lo/DisplayAdjustments;

    .line 25
    invoke-virtual {p4}, Lo/Choreographer;->h()Z

    move-result p3

    iput-boolean p3, p0, Lo/FocusFinder;->b:Z

    .line 27
    invoke-virtual {p2}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lo/FocusFinder;->e:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {p4}, Lo/Choreographer;->i()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p1, p2}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 29
    :goto_0
    iput-object p2, p0, Lo/FocusFinder;->c:Ljava/lang/String;

    .line 34
    invoke-virtual {p4}, Lo/Choreographer;->f()Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 35
    invoke-virtual {p4}, Lo/Choreographer;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 36
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->dg:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 38
    :cond_1
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->de:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, p3

    .line 34
    :goto_1
    iput-object p2, p0, Lo/FocusFinder;->d:Ljava/lang/String;

    .line 44
    invoke-virtual {p4}, Lo/Choreographer;->j()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lo/FocusFinder;->a:Z

    .line 47
    iget-boolean p2, p0, Lo/FocusFinder;->a:Z

    if-eqz p2, :cond_6

    .line 48
    move-object p2, p5

    check-cast p2, Ljava/lang/Iterable;

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 146
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lo/TransformationMethod2;

    .line 49
    invoke-virtual {v4}, Lo/TransformationMethod2;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "giftOption"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 147
    :cond_5
    move-object p2, v2

    check-cast p2, Ljava/util/List;

    goto :goto_4

    :cond_6
    move-object p2, p5

    .line 47
    :goto_4
    iput-object p2, p0, Lo/FocusFinder;->h:Ljava/util/List;

    .line 55
    iget-boolean p2, p0, Lo/FocusFinder;->a:Z

    if-eqz p2, :cond_7

    invoke-virtual {p4}, Lo/Choreographer;->f()Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_5

    :cond_7
    const/4 p2, 0x0

    :goto_5
    iput-boolean p2, p0, Lo/FocusFinder;->f:Z

    .line 68
    iget-boolean p2, p0, Lo/FocusFinder;->a:Z

    const-string v2, "endDate"

    const/4 v3, 0x2

    if-eqz p2, :cond_9

    .line 69
    invoke-virtual {p4}, Lo/Choreographer;->b()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p4}, Lo/Choreographer;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 70
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gW:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/FocusFinder;->g:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/String;

    .line 72
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->gX:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p3

    .line 73
    invoke-virtual {p4}, Lo/Choreographer;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v2, p4}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p3

    .line 74
    invoke-virtual {p3}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    .line 75
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ay:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    .line 71
    invoke-static {p2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/FocusFinder;->j:Ljava/util/List;

    goto/16 :goto_6

    .line 78
    :cond_8
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lo/FocusFinder;->g:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/String;

    .line 80
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->gU:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    .line 81
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ay:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    .line 79
    invoke-static {p2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/FocusFinder;->j:Ljava/util/List;

    goto/16 :goto_6

    .line 85
    :cond_9
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qM:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/FocusFinder;->g:Ljava/lang/String;

    .line 86
    invoke-virtual {p4}, Lo/Choreographer;->b()Z

    move-result p2

    const/4 p3, 0x3

    if-eqz p2, :cond_a

    invoke-virtual {p4}, Lo/Choreographer;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    new-array p2, p3, [Ljava/lang/String;

    .line 88
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->eI:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p3

    .line 89
    invoke-virtual {p4}, Lo/Choreographer;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v2, p4}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p3

    .line 90
    invoke-virtual {p3}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    .line 91
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->eh:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    .line 92
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ay:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    .line 87
    invoke-static {p2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/FocusFinder;->j:Ljava/util/List;

    goto :goto_6

    .line 94
    :cond_a
    invoke-virtual {p4}, Lo/Choreographer;->e()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p4}, Lo/Choreographer;->c()Ljava/lang/String;

    move-result-object p2

    const-string v2, "LCFM"

    invoke-static {v2, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    new-array p2, p3, [Ljava/lang/String;

    .line 96
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->iF:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p3

    .line 97
    invoke-virtual {p4}, Lo/Choreographer;->d()Ljava/lang/String;

    move-result-object p4

    const-string v2, "offerPrice"

    invoke-virtual {p3, v2, p4}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p3

    .line 98
    invoke-virtual {p3}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    .line 99
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ej:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    .line 100
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ay:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    .line 95
    invoke-static {p2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/FocusFinder;->j:Ljava/util/List;

    goto :goto_6

    :cond_b
    new-array p2, v3, [Ljava/lang/String;

    .line 104
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->iA:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    .line 105
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ay:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    .line 103
    invoke-static {p2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/FocusFinder;->j:Ljava/util/List;

    .line 112
    :goto_6
    new-instance p1, Lo/FocusFinder$ActionBar;

    invoke-direct {p1, p5}, Lo/FocusFinder$ActionBar;-><init>(Ljava/util/List;)V

    check-cast p1, Lcom/netflix/cl/model/TrackingInfo;

    iput-object p1, p0, Lo/FocusFinder;->i:Lcom/netflix/cl/model/TrackingInfo;

    .line 120
    iget-boolean p1, p0, Lo/FocusFinder;->a:Z

    iput-boolean p1, p0, Lo/FocusFinder;->m:Z

    .line 121
    invoke-virtual {p6}, Lo/TextClassifierService;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/FocusFinder;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lo/FocusFinder;->b:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/FocusFinder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/TransformationMethod2;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/FocusFinder;->h:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/FocusFinder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Z)V
    .locals 1

    .line 60
    iget-object v0, p0, Lo/FocusFinder;->n:Lo/DisplayAdjustments;

    invoke-virtual {v0, p1}, Lo/DisplayAdjustments;->c(Z)V

    return-void
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/FocusFinder;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lo/FocusFinder;->n:Lo/DisplayAdjustments;

    invoke-virtual {v0}, Lo/DisplayAdjustments;->c()Z

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/FocusFinder;->g:Ljava/lang/String;

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

    .line 65
    iget-object v0, p0, Lo/FocusFinder;->j:Ljava/util/List;

    return-object v0
.end method

.method public final i()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/FocusFinder;->i:Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lo/FocusFinder;->f:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lo/FocusFinder;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lo/FocusFinder;->m:Z

    return v0
.end method
