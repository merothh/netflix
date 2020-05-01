.class public Lo/aeb$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation


# static fields
.field public static c:Lo/aeb$StateListAnimator;


# instance fields
.field private final a:Z

.field private final b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 355
    new-instance v0, Lo/aeb$StateListAnimator;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNAVAILABLE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lo/aeb$StateListAnimator;-><init>(ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    sput-object v0, Lo/aeb$StateListAnimator;->c:Lo/aeb$StateListAnimator;

    return-void
.end method

.method private constructor <init>(ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-boolean p1, p0, Lo/aeb$StateListAnimator;->a:Z

    .line 366
    iput-object p2, p0, Lo/aeb$StateListAnimator;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 367
    iput-object p3, p0, Lo/aeb$StateListAnimator;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 368
    iput-object p1, p0, Lo/aeb$StateListAnimator;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-boolean p1, p0, Lo/aeb$StateListAnimator;->a:Z

    .line 386
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p1, p0, Lo/aeb$StateListAnimator;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 387
    iput-object p2, p0, Lo/aeb$StateListAnimator;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lo/aeb$StateListAnimator;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-boolean p1, p0, Lo/aeb$StateListAnimator;->a:Z

    .line 380
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p1, p0, Lo/aeb$StateListAnimator;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 381
    iput-object p3, p0, Lo/aeb$StateListAnimator;->d:Ljava/lang/String;

    .line 382
    iput-object p2, p0, Lo/aeb$StateListAnimator;->e:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lo/aeb$StateListAnimator;
    .locals 3

    .line 459
    new-instance v0, Lo/aeb$StateListAnimator;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lo/aeb$StateListAnimator;-><init>(ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lo/aeb$StateListAnimator;
    .locals 2

    .line 469
    invoke-static {p0, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 471
    new-instance p1, Lo/aeb$StateListAnimator;

    invoke-direct {p1, v1, p0}, Lo/aeb$StateListAnimator;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 473
    :cond_0
    new-instance v0, Lo/aeb$StateListAnimator;

    invoke-direct {v0, v1, p0, p1}, Lo/aeb$StateListAnimator;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lo/aeb$StateListAnimator;
    .locals 3

    .line 449
    new-instance v0, Lo/aeb$StateListAnimator;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lo/aeb$StateListAnimator;-><init>(ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 422
    iget-object v0, p0, Lo/aeb$StateListAnimator;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lo/aeb$StateListAnimator;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lo/aeb$StateListAnimator;->a:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lo/aeb$StateListAnimator;->e:Ljava/lang/String;

    return-object v0
.end method
