.class public Lo/xv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/kb;


# instance fields
.field private final a:Lo/xf;

.field private final b:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private final e:Landroid/content/Context;

.field private final f:Lo/xz;

.field private final g:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/List<",
            "Lo/TimePickerSpinnerDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lo/jT;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m:J

.field private n:Lcom/netflix/mediaclient/servicemgr/PlayContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/xf;Lo/xz;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    .line 36
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/xv;->h:Landroid/util/LongSparseArray;

    .line 37
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/xv;->g:Landroid/util/LongSparseArray;

    .line 38
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/xv;->j:Landroid/util/LongSparseArray;

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lo/xv;->m:J

    .line 46
    iput-object p1, p0, Lo/xv;->e:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lo/xv;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 48
    iput-object p3, p0, Lo/xv;->c:Landroid/os/Handler;

    .line 49
    iput-object p4, p0, Lo/xv;->n:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 50
    iput-object p5, p0, Lo/xv;->b:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    .line 51
    iput-object p6, p0, Lo/xv;->a:Lo/xf;

    .line 52
    iput-object p7, p0, Lo/xv;->f:Lo/xz;

    return-void
.end method

.method private a(JJ)Lo/jT;
    .locals 12

    move-object v11, p0

    .line 191
    new-instance v0, Lo/pE;

    iget-object v1, v11, Lo/xv;->n:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget-object v2, v11, Lo/xv;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/pE;-><init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    .line 192
    iget-object v1, v11, Lo/xv;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->s()Lo/jQ;

    move-result-object v1

    iget-object v2, v11, Lo/xv;->e:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v11, Lo/xv;->f:Lo/xz;

    move-wide v5, p1

    .line 193
    invoke-virtual {v4, p1, p2}, Lo/xz;->d(J)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v11, Lo/xv;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Lo/pE;->d()Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, v11, Lo/xv;->n:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget-object v10, v11, Lo/xv;->b:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-wide v4, p3

    move-object v9, p0

    .line 192
    invoke-interface/range {v0 .. v10}, Lo/jQ;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;Lorg/json/JSONObject;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lo/kb;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;)Lo/jT;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 122
    iget-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/jT;

    .line 123
    invoke-virtual {p0}, Lo/xv;->e()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 125
    invoke-interface {p1, v0, v1}, Lo/jT;->d(J)V

    :cond_0
    return-void
.end method

.method public a(JLo/TimePickerSpinnerDelegate;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/jT;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p3}, Lo/jT;->d(Lo/TimePickerSpinnerDelegate;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lo/xv;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v1, p0, Lo/xv;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 116
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public b(J)V
    .locals 1

    .line 131
    iget-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/jT;

    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Lo/jT;->b()V

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 4

    .line 157
    iget-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/jT;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lo/xv;->e()J

    move-result-wide v1

    .line 160
    iget-object v3, p0, Lo/xv;->g:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo/xv;->j:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 162
    invoke-interface {v0, v3}, Lo/jT;->c(Z)V

    .line 164
    :cond_0
    invoke-interface {v0, v1, v2}, Lo/jT;->c(J)V

    .line 165
    iget-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_1
    return-void
.end method

.method public c(JLo/sE;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/jT;

    if-eqz p1, :cond_0

    .line 63
    invoke-interface {p1, p3}, Lo/jT;->a(Lo/sE;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lo/xv;->n:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-void
.end method

.method public d()V
    .locals 1

    .line 171
    iget-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method public d(J)V
    .locals 2

    .line 148
    iget-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/jT;

    .line 149
    invoke-virtual {p0}, Lo/xv;->e()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 151
    invoke-interface {p1, v0, v1}, Lo/jT;->e(J)V

    :cond_0
    return-void
.end method

.method public d(JZ)V
    .locals 2

    .line 183
    iget-object v0, p0, Lo/xv;->j:Landroid/util/LongSparseArray;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/jT;

    if-eqz p1, :cond_0

    .line 186
    invoke-interface {p1, p3}, Lo/jT;->c(Z)V

    :cond_0
    return-void
.end method

.method public e()J
    .locals 2

    .line 199
    iget-object v0, p0, Lo/xv;->a:Lo/xf;

    invoke-virtual {v0}, Lo/xf;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)V
    .locals 5

    .line 70
    iget-wide v0, p0, Lo/xv;->m:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v4, v0, p1

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {p0, v0, v1}, Lo/xv;->c(J)V

    .line 73
    :cond_0
    iput-wide p1, p0, Lo/xv;->m:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lo/xv;->f:Lo/xz;

    invoke-virtual {v0, p1, p2}, Lo/xz;->a(J)Lo/sE;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 82
    :cond_2
    iget-object v1, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/jT;

    .line 83
    invoke-virtual {p0}, Lo/xv;->e()J

    move-result-wide v2

    if-nez v1, :cond_3

    .line 85
    invoke-direct {p0, p1, p2, v2, v3}, Lo/xv;->a(JJ)Lo/jT;

    move-result-object v1

    .line 86
    invoke-interface {v1, v0}, Lo/jT;->a(Lo/sE;)V

    .line 87
    iget-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 89
    :cond_3
    iget-object v0, p0, Lo/xv;->g:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 90
    invoke-interface {v1}, Lo/jT;->a()V

    .line 92
    :cond_4
    iget-object v0, p0, Lo/xv;->j:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lo/xv;->j:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lo/jT;->c(Z)V

    .line 95
    :cond_5
    iget-object v0, p0, Lo/xv;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/TimePickerSpinnerDelegate;

    .line 98
    invoke-interface {v1, v4}, Lo/jT;->d(Lo/TimePickerSpinnerDelegate;)V

    goto :goto_0

    .line 100
    :cond_6
    iget-object v0, p0, Lo/xv;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 102
    :cond_7
    invoke-interface {v1, v2, v3}, Lo/jT;->a(J)V

    return-void
.end method

.method public i(J)V
    .locals 2

    .line 175
    iget-object v0, p0, Lo/xv;->g:Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lo/xv;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/jT;

    if-eqz p1, :cond_0

    .line 178
    invoke-interface {p1}, Lo/jT;->a()V

    :cond_0
    return-void
.end method
