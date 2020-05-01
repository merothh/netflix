.class public Lo/bT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bT$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lo/zL;

.field private final b:Lo/pz;

.field private final c:Landroid/content/Context;

.field private d:Z

.field private e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/Handler;

.field private j:Lo/bT$TaskDescription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/zL;Lo/pz;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lo/bT;->c:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lo/bT;->a:Lo/zL;

    .line 56
    iput-object p3, p0, Lo/bT;->b:Lo/pz;

    .line 57
    invoke-direct {p0}, Lo/bT;->b()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 121
    iget-object v0, p0, Lo/bT;->j:Lo/bT$TaskDescription;

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lo/bT;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lo/bT;->j:Lo/bT$TaskDescription;

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/bT;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/bT;->i()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 117
    iget-object v0, p0, Lo/bT;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    iput-object v0, p0, Lo/bT;->e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    return-void
.end method

.method private g()V
    .locals 2

    .line 128
    iget-object v0, p0, Lo/bT;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    iput-object v1, p0, Lo/bT;->i:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .line 142
    iget-object v0, p0, Lo/bT;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/bT;->i:Landroid/os/Handler;

    .line 144
    iget-object v0, p0, Lo/bT;->i:Landroid/os/Handler;

    new-instance v1, Lo/bT$1;

    invoke-direct {v1, p0}, Lo/bT$1;-><init>(Lo/bT;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lo/bT;->d:Z

    .line 156
    invoke-direct {p0}, Lo/bT;->a()V

    .line 157
    invoke-direct {p0}, Lo/bT;->g()V

    .line 158
    iget-object v0, p0, Lo/bT;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Ae;

    .line 160
    invoke-virtual {p0, v1}, Lo/bT;->b(Lo/Ae;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lo/bT;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lo/bT;->g:Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public b(Lo/Ae;)V
    .locals 2

    .line 75
    iget-object v0, p1, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    iget-object v1, p0, Lo/bT;->e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->a(Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/eJ;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-boolean v0, p0, Lo/bT;->d:Z

    if-nez v0, :cond_3

    .line 83
    iget-object v0, p0, Lo/bT;->g:Ljava/util/List;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/bT;->g:Ljava/util/List;

    .line 86
    :cond_1
    iget-object v0, p0, Lo/bT;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lo/bT;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_2

    .line 89
    iget-object p1, p0, Lo/bT;->g:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    :cond_2
    invoke-direct {p0}, Lo/bT;->h()V

    return-void

    .line 94
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lo/bT;->a:Lo/zL;

    invoke-interface {p1}, Lo/zL;->G()Lo/cz;

    move-result-object p1

    invoke-interface {p1}, Lo/cz;->J()Z

    move-result p1

    if-nez p1, :cond_4

    .line 104
    iget-object p1, p0, Lo/bT;->a:Lo/zL;

    invoke-interface {p1}, Lo/zL;->D()Lo/zN;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 106
    invoke-interface {p1, v0}, Lo/zN;->b(Ljava/util/List;)V

    .line 109
    :cond_4
    iget-object p1, p0, Lo/bT;->b:Lo/pz;

    invoke-interface {p1}, Lo/pz;->c()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->e(Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/bT;->b()V

    return-void
.end method

.method public d()V
    .locals 4

    .line 61
    iget-object v0, p0, Lo/bT;->j:Lo/bT$TaskDescription;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lo/bT$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/bT$TaskDescription;-><init>(Lo/bT;Lo/bT$1;)V

    iput-object v0, p0, Lo/bT;->j:Lo/bT$TaskDescription;

    .line 63
    iget-object v0, p0, Lo/bT;->c:Landroid/content/Context;

    iget-object v2, p0, Lo/bT;->j:Lo/bT$TaskDescription;

    const-string v3, "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/bT;->a()V

    .line 69
    invoke-direct {p0}, Lo/bT;->g()V

    return-void
.end method
