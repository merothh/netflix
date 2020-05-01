.class Lo/zp$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lo/zp$StateListAnimator;->b:Ljava/util/Set;

    .line 94
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;->c:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    iput-object v0, p0, Lo/zp$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    .line 96
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;->c:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    iput-object v0, p0, Lo/zp$StateListAnimator;->a:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    .line 100
    iget-object v0, p0, Lo/zp$StateListAnimator;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;Lo/zp$2;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lo/zp$StateListAnimator;-><init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V

    return-void
.end method

.method static synthetic a(Lo/zp$StateListAnimator;)Z
    .locals 0

    .line 91
    invoke-direct {p0}, Lo/zp$StateListAnimator;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lo/zp$StateListAnimator;)Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;
    .locals 0

    .line 91
    invoke-direct {p0}, Lo/zp$StateListAnimator;->c()Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lo/zp$StateListAnimator;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lo/zp$StateListAnimator;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private c()Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;
    .locals 1

    .line 117
    iget-object v0, p0, Lo/zp$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    return-object v0
.end method

.method static synthetic c(Lo/zp$StateListAnimator;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lo/zp$StateListAnimator;->d()V

    return-void
.end method

.method static synthetic c(Lo/zp$StateListAnimator;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lo/zp$StateListAnimator;->b(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V

    return-void
.end method

.method private d()V
    .locals 1

    .line 121
    iget-object v0, p0, Lo/zp$StateListAnimator;->a:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    invoke-direct {p0, v0}, Lo/zp$StateListAnimator;->e(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)V

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lo/zp$StateListAnimator;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lo/zp$StateListAnimator;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lo/zp$StateListAnimator;->e(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)V

    return-void
.end method

.method static synthetic d(Lo/zp$StateListAnimator;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lo/zp$StateListAnimator;->d(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lo/zp$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;->c:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lo/zp$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    iput-object v0, p0, Lo/zp$StateListAnimator;->a:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    .line 129
    :cond_0
    iput-object p1, p0, Lo/zp$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    .line 130
    iget-object v0, p0, Lo/zp$StateListAnimator;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;

    .line 131
    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;->e(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)V

    goto :goto_0

    :cond_1
    return-void
.end method
