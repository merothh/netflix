.class Lo/LY$ActionBar;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic a:Lo/LY;


# direct methods
.method public constructor <init>(Lo/LY;Ljava/lang/String;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lo/LY$ActionBar;->a:Lo/LY;

    .line 429
    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 434
    invoke-super {p0, p1, p2}, Lo/zP;->a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 436
    iget-object p2, p0, Lo/LY$ActionBar;->a:Lo/LY;

    invoke-static {p2, p1}, Lo/LY;->a(Lo/LY;Lo/AS;)Lo/AS;

    .line 437
    iget-object p2, p0, Lo/LY$ActionBar;->a:Lo/LY;

    invoke-static {p2, p1}, Lo/LY;->e(Lo/LY;Lo/AS;)V

    .line 438
    iget-object p1, p0, Lo/LY$ActionBar;->a:Lo/LY;

    invoke-static {p1}, Lo/LY;->h(Lo/LY;)V

    :cond_0
    return-void
.end method

.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 444
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 446
    iget-object p2, p0, Lo/LY$ActionBar;->a:Lo/LY;

    invoke-static {p2, p1}, Lo/LY;->c(Lo/LY;Lo/Bc;)V

    :cond_0
    return-void
.end method

.method public e(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 460
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 461
    invoke-interface {p1}, Lo/AW;->B()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lo/AW;->B()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 462
    :cond_0
    iget-object p1, p0, Lo/LY$ActionBar;->a:Lo/LY;

    invoke-static {p1}, Lo/LY;->g(Lo/LY;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/LY$ActionBar;->a:Lo/LY;

    invoke-static {p1}, Lo/LY;->c(Lo/LY;)Lo/Bc;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 463
    iget-object p1, p0, Lo/LY$ActionBar;->a:Lo/LY;

    invoke-virtual {p1}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    iget-object p2, p0, Lo/LY$ActionBar;->a:Lo/LY;

    invoke-static {p2}, Lo/LY;->c(Lo/LY;)Lo/Bc;

    move-result-object p2

    invoke-interface {p2}, Lo/Bc;->bb()Lo/AK;

    move-result-object p2

    invoke-interface {p2}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-instance v1, Lo/LY$ActionBar;

    iget-object v2, p0, Lo/LY$ActionBar;->a:Lo/LY;

    const-string v3, "CastPlayerPostPlayFrag"

    invoke-direct {v1, v2, v3}, Lo/LY$ActionBar;-><init>(Lo/LY;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0, v1}, Lo/zG;->c(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    :cond_1
    return-void
.end method

.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 452
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 454
    iget-object p2, p0, Lo/LY$ActionBar;->a:Lo/LY;

    invoke-static {p2, p1}, Lo/LY;->c(Lo/LY;Lo/Bc;)V

    :cond_0
    return-void
.end method
