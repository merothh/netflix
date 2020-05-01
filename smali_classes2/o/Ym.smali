.class public final Lo/Ym;
.super Lo/MessagePdu;
.source ""


# static fields
.field public static final a:Lo/Ym;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/Ym;

    invoke-direct {v0}, Lo/Ym;-><init>()V

    sput-object v0, Lo/Ym;->a:Lo/Ym;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "PreviewsMediaPrefetch"

    .line 11
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Landroid/content/Context;)Lo/Am;
    .locals 2

    .line 14
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p1}, Lo/Am;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static synthetic b(Lo/Ym;Ljava/util/List;Landroid/content/Context;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/Ym;->c(Ljava/util/List;Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lo/Ym;->b(Landroid/content/Context;)Lo/Am;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->f:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/util/List;Landroid/content/Context;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    const-string v0, "prefetchList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gez p4, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, p4, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p3, :cond_4

    if-gt v0, p3, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    if-gt p3, p4, :cond_2

    .line 28
    :goto_0
    move-object v1, p0

    check-cast v1, Lo/MessagePdu;

    .line 29
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lo/Ae;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Yn;

    invoke-virtual {v3}, Lo/Yn;->getSupplementalVideoId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->f:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-direct {v2, v3, v4, v5, v6}, Lo/Ae;-><init>(Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eq p3, p4, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 31
    :cond_2
    invoke-direct {p0, p2}, Lo/Ym;->b(Landroid/content/Context;)Lo/Am;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->e(Ljava/util/List;)V

    :cond_3
    return-void

    .line 22
    :cond_4
    :goto_1
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public final e(Lo/Yn;Landroid/content/Context;)V
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 37
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lo/Ae;

    invoke-virtual {p1}, Lo/Yn;->getSupplementalVideoId()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->f:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-wide/16 v4, 0x0

    invoke-direct {v2, p1, v4, v5, v3}, Lo/Ae;-><init>(Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-direct {p0, p2}, Lo/Ym;->b(Landroid/content/Context;)Lo/Am;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->e(Ljava/util/List;)V

    :cond_0
    return-void
.end method
