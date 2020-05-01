.class public final Lo/SparseRectFArray;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SilencePlaybackQueueItem;


# instance fields
.field private final a:Ljava/lang/String;

.field private final d:Lo/InputMethodSession;


# direct methods
.method public constructor <init>(Lo/InputMethodSession;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cache"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageKey"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SparseRectFArray;->d:Lo/InputMethodSession;

    iput-object p2, p0, Lo/SparseRectFArray;->a:Ljava/lang/String;

    return-void
.end method

.method private final c(I)Z
    .locals 1

    .line 19
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->da:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dY:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lT:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .line 9
    invoke-direct {p0, p1}, Lo/SparseRectFArray;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lo/SparseRectFArray;->d:Lo/InputMethodSession;

    iget-object v1, p0, Lo/SparseRectFArray;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lo/InputMethodSession;->d(Ljava/lang/String;IZ)V

    return-void
.end method
