.class Lo/bM$StateListAnimator;
.super Lo/xY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lo/bM;

.field private final d:I


# direct methods
.method constructor <init>(Lo/bM;II)V
    .locals 0

    .line 992
    iput-object p1, p0, Lo/bM$StateListAnimator;->b:Lo/bM;

    invoke-direct {p0}, Lo/xY;-><init>()V

    .line 993
    iput p2, p0, Lo/bM$StateListAnimator;->d:I

    .line 994
    iput p3, p0, Lo/bM$StateListAnimator;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 11

    move-object v0, p0

    .line 1011
    invoke-super/range {p0 .. p7}, Lo/xY;->a(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 1012
    iget-object v1, v0, Lo/bM$StateListAnimator;->b:Lo/bM;

    invoke-static {v1}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v1

    iget v2, v0, Lo/bM$StateListAnimator;->d:I

    invoke-virtual {v1, v2}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/zK;

    if-nez v2, :cond_0

    const-string v1, "NetflixService"

    const-string v2, "No client callback found for onResourceCached"

    .line 1014
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1016
    :cond_0
    iget v3, v0, Lo/bM$StateListAnimator;->a:I

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Lo/zK;->onResourceCached(ILjava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 999
    invoke-super {p0, p1, p2, p3}, Lo/xY;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1000
    iget-object v0, p0, Lo/bM$StateListAnimator;->b:Lo/bM;

    invoke-static {v0}, Lo/bM;->p(Lo/bM;)Lo/bI;

    move-result-object v0

    iget v1, p0, Lo/bM$StateListAnimator;->d:I

    invoke-virtual {v0, v1}, Lo/bI;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zK;

    if-nez v0, :cond_0

    const-string p1, "NetflixService"

    const-string p2, "No client callback found for onResourceFetched"

    .line 1002
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1004
    :cond_0
    iget v1, p0, Lo/bM$StateListAnimator;->a:I

    invoke-interface {v0, v1, p1, p2, p3}, Lo/zK;->onResourceFetched(ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1005
    iget-object p1, p0, Lo/bM$StateListAnimator;->b:Lo/bM;

    invoke-virtual {p1}, Lo/bM;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/oc;->d(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
