.class public Lo/zB;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zB$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/AR;",
        ">",
        "Lo/zP;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Lo/zB$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/zB$Activity<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final h:I

.field private final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/zB$Activity;Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/zB$Activity<",
            "TT;>;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object p2, p0, Lo/zB;->c:Lo/zB$Activity;

    .line 61
    invoke-interface {p2}, Lo/zB$Activity;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lo/zB;->b:J

    .line 63
    iput-object p3, p0, Lo/zB;->d:Ljava/lang/String;

    .line 64
    iput p4, p0, Lo/zB;->a:I

    .line 65
    iput p5, p0, Lo/zB;->h:I

    .line 67
    iput-boolean p6, p0, Lo/zB;->i:Z

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .line 159
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void
.end method

.method private t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 119
    iget-wide v0, p0, Lo/zB;->b:J

    iget-object v2, p0, Lo/zB;->c:Lo/zB$Activity;

    invoke-interface {v2}, Lo/zB$Activity;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 120
    iget-object p1, p0, Lo/zB;->e:Ljava/lang/String;

    const-string p2, "Ignoring stale onVideosFetched callback"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object p1, p0, Lo/zB;->e:Ljava/lang/String;

    const-string p2, "Invalid status code"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lo/zB;->c:Lo/zB$Activity;

    invoke-interface {p1}, Lo/zB$Activity;->c()V

    return-void

    .line 130
    :cond_1
    instance-of v0, p2, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    const-string v1, "\'"

    if-eqz v0, :cond_2

    .line 131
    check-cast p2, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    .line 132
    iget-boolean v0, p0, Lo/zB;->i:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lo/ep;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/zB;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': Call generated a network call where it should not. Please verify prefetch vs fetch PQLs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/zB;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/zB;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': Any fetch happening in lolomo should return a FalkorAgentStatus, Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/zB;->e(Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 155
    :cond_4
    iget-object p2, p0, Lo/zB;->c:Lo/zB$Activity;

    iget-object v0, p0, Lo/zB;->d:Ljava/lang/String;

    iget v1, p0, Lo/zB;->a:I

    iget v2, p0, Lo/zB;->h:I

    invoke-interface {p2, p1, v0, v1, v2}, Lo/zB$Activity;->e(Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Az;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1, p2}, Lo/zP;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lo/zB;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Lcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/ListOfMoviesSummary;",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-super {p0, p1, p2, p3}, Lo/zP;->b(Lcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lo/zB;->c:Lo/zB$Activity;

    invoke-interface {v0, p1}, Lo/zB$Activity;->a(Lcom/netflix/model/leafs/ListOfMoviesSummary;)V

    .line 115
    :cond_0
    invoke-direct {p0, p2, p3}, Lo/zB;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ax;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-super {p0, p1, p2}, Lo/zP;->b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 95
    invoke-direct {p0, p1, p2}, Lo/zB;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-super {p0, p1, p2}, Lo/zP;->c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 77
    invoke-direct {p0, p1, p2}, Lo/zB;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Aw;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-super {p0, p1, p2}, Lo/zP;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 100
    invoke-direct {p0, p1, p2}, Lo/zB;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AM;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-super {p0, p1, p2}, Lo/zP;->e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 89
    invoke-direct {p0, p1, p2}, Lo/zB;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public i(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AT;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-super {p0, p1, p2}, Lo/zP;->i(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 106
    invoke-direct {p0, p1, p2}, Lo/zB;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
