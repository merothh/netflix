.class Lo/Am$TaskDescription;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic a:Lo/Am;

.field private final c:Lo/zU;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lo/Am;Lo/zU;Ljava/lang/String;)V
    .locals 0

    .line 2368
    iput-object p1, p0, Lo/Am$TaskDescription;->a:Lo/Am;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    .line 2369
    iput-object p2, p0, Lo/Am$TaskDescription;->c:Lo/zU;

    .line 2370
    iput-object p3, p0, Lo/Am$TaskDescription;->e:Ljava/lang/String;

    .line 2371
    invoke-static {p1}, Lo/Am;->d(Lo/Am;)Lo/zL;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2372
    invoke-static {}, Lo/zp;->e()Lo/zp;

    move-result-object p1

    invoke-virtual {p1, p3}, Lo/zp;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lo/Am;Lo/zU;Ljava/lang/String;Lo/Am$3;)V
    .locals 0

    .line 2364
    invoke-direct {p0, p1, p2, p3}, Lo/Am$TaskDescription;-><init>(Lo/Am;Lo/zU;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/Am$TaskDescription;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 2364
    invoke-super {p0, p1}, Lo/Ai;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic c(Lo/Am$TaskDescription;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 2364
    invoke-super {p0, p1}, Lo/Ai;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/android/app/Status;ZZ)V
    .locals 1

    .line 2412
    iget-object v0, p0, Lo/Am$TaskDescription;->a:Lo/Am;

    invoke-static {v0}, Lo/Am;->d(Lo/Am;)Lo/zL;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2416
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2417
    invoke-static {}, Lo/zp;->e()Lo/zp;

    move-result-object p1

    iget-object p3, p0, Lo/Am$TaskDescription;->e:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lo/zp;->d(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2419
    :cond_1
    invoke-static {}, Lo/zp;->e()Lo/zp;

    move-result-object p1

    iget-object v0, p0, Lo/Am$TaskDescription;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Lo/zp;->e(Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2378
    invoke-super {p0, p1, p2}, Lo/Ai;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2379
    iget-object v0, p0, Lo/Am$TaskDescription;->c:Lo/zU;

    invoke-interface {v0, p1, p2}, Lo/zU;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2380
    invoke-interface {p1}, Lo/AX;->aW()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2, p1, v0}, Lo/Am$TaskDescription;->e(Lcom/netflix/mediaclient/android/app/Status;ZZ)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 2406
    invoke-static {p0, p1}, Lo/Am$TaskDescription;->a(Lo/Am$TaskDescription;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2407
    iget-object v0, p0, Lo/Am$TaskDescription;->c:Lo/zU;

    invoke-interface {v0, p1}, Lo/zU;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2408
    invoke-direct {p0, p1, v0, v1}, Lo/Am$TaskDescription;->e(Lcom/netflix/mediaclient/android/app/Status;ZZ)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2399
    invoke-static {p0, p1}, Lo/Am$TaskDescription;->c(Lo/Am$TaskDescription;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2400
    iget-object v0, p0, Lo/Am$TaskDescription;->c:Lo/zU;

    invoke-interface {v0, p1}, Lo/zU;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x1

    .line 2401
    invoke-direct {p0, p1, v0, v0}, Lo/Am$TaskDescription;->e(Lcom/netflix/mediaclient/android/app/Status;ZZ)V

    return-void
.end method

.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2385
    invoke-super {p0, p1, p2}, Lo/Ai;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2386
    iget-object v0, p0, Lo/Am$TaskDescription;->c:Lo/zU;

    invoke-interface {v0, p1, p2}, Lo/zU;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2387
    invoke-interface {p1}, Lo/Bb;->aW()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2, p1, v0}, Lo/Am$TaskDescription;->e(Lcom/netflix/mediaclient/android/app/Status;ZZ)V

    return-void
.end method

.method public e(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bb;",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 2392
    invoke-super {p0, p1, p2, p3}, Lo/Ai;->e(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2393
    iget-object v0, p0, Lo/Am$TaskDescription;->c:Lo/zU;

    invoke-interface {v0, p1, p2, p3}, Lo/zU;->e(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2394
    invoke-interface {p1}, Lo/Bb;->aW()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p3, p1, p2}, Lo/Am$TaskDescription;->e(Lcom/netflix/mediaclient/android/app/Status;ZZ)V

    return-void
.end method
