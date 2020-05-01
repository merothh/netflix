.class public final Lo/KeyCharacterMap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Explode;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Z

.field private final n:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/MagnificationSpec;)V
    .locals 3

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/KeyCharacterMap;->n:Lo/InputBinding;

    .line 15
    invoke-virtual {p3}, Lo/MagnificationSpec;->e()Z

    move-result p1

    iput-boolean p1, p0, Lo/KeyCharacterMap;->c:Z

    .line 17
    invoke-virtual {p2}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/KeyCharacterMap;->d:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {p3}, Lo/MagnificationSpec;->c()Z

    move-result p1

    iput-boolean p1, p0, Lo/KeyCharacterMap;->b:Z

    .line 21
    invoke-virtual {p3}, Lo/MagnificationSpec;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/KeyCharacterMap;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {p3}, Lo/MagnificationSpec;->a()Z

    move-result p1

    iput-boolean p1, p0, Lo/KeyCharacterMap;->e:Z

    .line 25
    invoke-virtual {p3}, Lo/MagnificationSpec;->g()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/KeyCharacterMap;->i:Ljava/util/List;

    .line 27
    iget-object p1, p0, Lo/KeyCharacterMap;->i:Ljava/util/List;

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    .line 77
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 86
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/String;

    .line 28
    invoke-virtual {p3}, Lo/MagnificationSpec;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lo/MagnificationSpec;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LCFM"

    invoke-static {v2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    iget-object v1, p0, Lo/KeyCharacterMap;->n:Lo/InputBinding;

    invoke-virtual {v1, v0}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lo/MagnificationSpec;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "offerPrice"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 31
    :cond_2
    iget-object v1, p0, Lo/KeyCharacterMap;->n:Lo/InputBinding;

    invoke-virtual {v1, v0}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    .line 85
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_3
    check-cast p2, Ljava/util/List;

    goto :goto_2

    .line 33
    :cond_4
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lo/KeyCharacterMap;->j:Ljava/util/List;

    .line 47
    iget-object p1, p0, Lo/KeyCharacterMap;->a:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 48
    iget-object p2, p0, Lo/KeyCharacterMap;->n:Lo/InputBinding;

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->rM:I

    invoke-virtual {p2, p3}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p2

    const-string p3, "name"

    .line 49
    invoke-virtual {p2, p3, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 51
    :cond_5
    iget-object p1, p0, Lo/KeyCharacterMap;->n:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qK:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lo/KeyCharacterMap;->f:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lo/KeyCharacterMap;->n:Lo/InputBinding;

    iget-boolean p2, p0, Lo/KeyCharacterMap;->b:Z

    if-eqz p2, :cond_6

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->rJ:I

    goto :goto_4

    :cond_6
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qK:I

    :goto_4
    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/KeyCharacterMap;->g:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lo/KeyCharacterMap;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lo/KeyCharacterMap;->f:Ljava/lang/String;

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lo/KeyCharacterMap;->g:Ljava/lang/String;

    :goto_5
    iput-object p1, p0, Lo/KeyCharacterMap;->h:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lo/KeyCharacterMap;->a()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_8

    iget-object p1, p0, Lo/KeyCharacterMap;->j:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_6

    :cond_8
    const/4 p1, 0x0

    :goto_6
    iput-boolean p1, p0, Lo/KeyCharacterMap;->m:Z

    .line 60
    invoke-virtual {p0}, Lo/KeyCharacterMap;->a()Z

    move-result p1

    if-ne p1, p2, :cond_9

    .line 61
    invoke-virtual {p0}, Lo/KeyCharacterMap;->e()Ljava/util/List;

    move-result-object p1

    goto :goto_7

    :cond_9
    if-nez p1, :cond_b

    .line 62
    iget-boolean p1, p0, Lo/KeyCharacterMap;->m:Z

    if-eqz p1, :cond_a

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lo/KeyCharacterMap;->n:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ad:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 60
    :goto_7
    iput-object p1, p0, Lo/KeyCharacterMap;->k:Ljava/util/List;

    return-void

    .line 62
    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/KeyCharacterMap;->c:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/KeyCharacterMap;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lo/KeyCharacterMap;->j:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/KeyCharacterMap;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lo/KeyCharacterMap;->n:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kE:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-boolean v1, p0, Lo/KeyCharacterMap;->e:Z

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lo/KeyCharacterMap;->n:Lo/InputBinding;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->iL:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lo/KeyCharacterMap;->n:Lo/InputBinding;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->iO:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 43
    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lo/KeyCharacterMap;->k:Ljava/util/List;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lo/KeyCharacterMap;->m:Z

    return v0
.end method
