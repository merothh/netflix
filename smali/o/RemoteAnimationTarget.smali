.class public final Lo/RemoteAnimationTarget;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:I

.field private final j:Z

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lo/RemotableViewMethod;Lo/InputBinding;)V
    .locals 6

    const-string v0, "parsedData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/RemoteAnimationTarget;->r:Lo/InputBinding;

    .line 11
    invoke-virtual {p1}, Lo/RemotableViewMethod;->a()Z

    move-result p2

    iput-boolean p2, p0, Lo/RemoteAnimationTarget;->e:Z

    .line 13
    invoke-virtual {p1}, Lo/RemotableViewMethod;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/RemoteAnimationTarget;->c:Ljava/lang/String;

    .line 16
    iget-object p2, p0, Lo/RemoteAnimationTarget;->r:Lo/InputBinding;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pc:I

    invoke-virtual {p2, v0}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p2

    invoke-virtual {p1}, Lo/RemotableViewMethod;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "price"

    invoke-virtual {p2, v1, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "stringProvider.getFormat\u2026dData.planPrice).format()"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/RemoteAnimationTarget;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lo/RemotableViewMethod;->c()Z

    move-result p2

    iput-boolean p2, p0, Lo/RemoteAnimationTarget;->b:Z

    .line 20
    invoke-virtual {p1}, Lo/RemotableViewMethod;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/RemoteAnimationTarget;->d:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lo/RemotableViewMethod;->h()Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iput p2, p0, Lo/RemoteAnimationTarget;->i:I

    .line 24
    invoke-virtual {p1}, Lo/RemotableViewMethod;->g()Z

    move-result p2

    iput-boolean p2, p0, Lo/RemoteAnimationTarget;->h:Z

    .line 26
    invoke-virtual {p1}, Lo/RemotableViewMethod;->i()Z

    move-result p2

    iput-boolean p2, p0, Lo/RemoteAnimationTarget;->j:Z

    .line 28
    invoke-virtual {p1}, Lo/RemotableViewMethod;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/RemoteAnimationTarget;->f:Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lo/RemoteAnimationTarget;->d:Ljava/lang/String;

    const-string p2, "other"

    const-string v1, "mobile"

    const-string v2, "laptop"

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/CharSequence;

    const-string v3, "tv"

    .line 33
    check-cast v3, Ljava/lang/CharSequence;

    .line 32
    invoke-static {p1, v3, v0}, Lo/anv;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne v0, p1, :cond_1

    move-object p1, p2

    goto :goto_1

    .line 36
    :cond_1
    iget-object p1, p0, Lo/RemoteAnimationTarget;->d:Ljava/lang/String;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    .line 37
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    .line 36
    invoke-static {p1, v3, v0}, Lo/anv;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne v0, p1, :cond_2

    move-object p1, v2

    goto :goto_1

    .line 40
    :cond_2
    iget-object p1, p0, Lo/RemoteAnimationTarget;->d:Ljava/lang/String;

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/CharSequence;

    .line 41
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    .line 40
    invoke-static {p1, v3, v0}, Lo/anv;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne v0, p1, :cond_3

    move-object p1, v1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 31
    :goto_1
    iput-object p1, p0, Lo/RemoteAnimationTarget;->g:Ljava/lang/String;

    .line 49
    iget-boolean p1, p0, Lo/RemoteAnimationTarget;->h:Z

    const-string v3, "uhd"

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lo/RemoteAnimationTarget;->j:Z

    if-eqz p1, :cond_4

    goto :goto_2

    .line 50
    :cond_4
    iget-boolean p1, p0, Lo/RemoteAnimationTarget;->j:Z

    if-eqz p1, :cond_5

    const-string v3, "hd"

    goto :goto_2

    .line 51
    :cond_5
    iget-boolean p1, p0, Lo/RemoteAnimationTarget;->h:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const-string v3, "sd"

    .line 48
    :goto_2
    iput-object v3, p0, Lo/RemoteAnimationTarget;->n:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lo/RemoteAnimationTarget;->g:Ljava/lang/String;

    invoke-static {p1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_7

    new-array p1, v3, [Ljava/lang/Integer;

    .line 58
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->ac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    .line 59
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->ab:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 60
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->aa:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v5

    .line 61
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->Z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    .line 57
    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 63
    :cond_7
    iget-object p1, p0, Lo/RemoteAnimationTarget;->g:Ljava/lang/String;

    invoke-static {p1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, p2, [Ljava/lang/Integer;

    .line 64
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->ac:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    .line 65
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->ab:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    .line 66
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->aa:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v5

    .line 63
    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 68
    :cond_8
    iget-object p1, p0, Lo/RemoteAnimationTarget;->g:Ljava/lang/String;

    invoke-static {p1, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-array p1, v5, [Ljava/lang/Integer;

    .line 69
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->ac:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    .line 70
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->ab:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    .line 68
    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 72
    :cond_9
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    .line 56
    :goto_3
    iput-object p1, p0, Lo/RemoteAnimationTarget;->m:Ljava/util/List;

    .line 84
    iget-boolean p1, p0, Lo/RemoteAnimationTarget;->j:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lo/RemoteAnimationTarget;->h:Z

    if-eqz p1, :cond_a

    new-array p1, v5, [Ljava/lang/Integer;

    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->af:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->ae:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    .line 85
    :cond_a
    iget-boolean p1, p0, Lo/RemoteAnimationTarget;->j:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lo/RemoteAnimationTarget;->h:Z

    if-nez p1, :cond_b

    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->ad:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    .line 86
    :cond_b
    iget-boolean p1, p0, Lo/RemoteAnimationTarget;->h:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lo/RemoteAnimationTarget;->j:Z

    if-nez p1, :cond_c

    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->ah:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    .line 87
    :cond_c
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    .line 83
    :goto_4
    iput-object p1, p0, Lo/RemoteAnimationTarget;->l:Ljava/util/List;

    .line 92
    iget p1, p0, Lo/RemoteAnimationTarget;->i:I

    if-ne p1, v0, :cond_d

    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->ag:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_5

    :cond_d
    if-ne p1, v5, :cond_e

    .line 93
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->ak:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_5

    :cond_e
    if-ne p1, v3, :cond_f

    .line 94
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->aj:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_5

    .line 95
    :cond_f
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    .line 91
    :goto_5
    iput-object p1, p0, Lo/RemoteAnimationTarget;->k:Ljava/util/List;

    .line 99
    iget-object p1, p0, Lo/RemoteAnimationTarget;->r:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->az:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    iget-object p2, p0, Lo/RemoteAnimationTarget;->g:Ljava/lang/String;

    const-string v0, "deviceTypeSet"

    invoke-virtual {p1, v0, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "stringProvider.getFormat\u2026et\", deviceType).format()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/RemoteAnimationTarget;->o:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lo/RemoteAnimationTarget;->r:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->aA:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 102
    iget p2, p0, Lo/RemoteAnimationTarget;->i:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "planStreams"

    invoke-virtual {p1, v0, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    iget-object p2, p0, Lo/RemoteAnimationTarget;->n:Ljava/lang/String;

    const-string v0, "planVideoQuality"

    invoke-virtual {p1, v0, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "stringProvider.getFormat\u2026lanVideoQuality).format()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/RemoteAnimationTarget;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/RemoteAnimationTarget;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/RemoteAnimationTarget;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lo/RemoteAnimationTarget;->e:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/RemoteAnimationTarget;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lo/RemoteAnimationTarget;->m:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 77
    iget-object v1, p0, Lo/RemoteAnimationTarget;->l:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object v1, p0, Lo/RemoteAnimationTarget;->k:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/RemoteAnimationTarget;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lo/RemoteAnimationTarget;->o:Ljava/lang/String;

    return-object v0
.end method
