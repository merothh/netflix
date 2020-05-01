.class Lo/PS$2;
.super Lo/NetworkOnMainThreadException$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PS;->c(Ljava/lang/String;I)Lo/QS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic c:Lo/PS;

.field final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/PS;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lo/PS$2;->c:Lo/PS;

    iput-object p2, p0, Lo/PS$2;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/PS$2;->d:Landroid/view/View;

    invoke-direct {p0}, Lo/NetworkOnMainThreadException$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 2

    .line 244
    iget-object v0, p0, Lo/PS$2;->d:Landroid/view/View;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->hc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 249
    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    return v0
.end method

.method public e()Landroid/view/View;
    .locals 2

    .line 238
    iget-object v0, p0, Lo/PS$2;->d:Landroid/view/View;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ju:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public e(Lo/NetworkOnMainThreadException;I)V
    .locals 1

    .line 225
    iget-object p1, p0, Lo/PS$2;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 229
    iget-object p1, p0, Lo/PS$2;->c:Lo/PS;

    invoke-static {p1}, Lo/PS;->e(Lo/PS;)I

    move-result p1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    :cond_1
    if-nez p2, :cond_3

    .line 230
    :cond_2
    iget-object p1, p0, Lo/PS$2;->c:Lo/PS;

    iget-object p2, p0, Lo/PS$2;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/PS;->b(Lo/PS;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 232
    :cond_3
    iget-object p1, p0, Lo/PS$2;->c:Lo/PS;

    const/4 p2, 0x0

    iput-object p2, p1, Lo/PS;->d:Lo/QS;

    return-void
.end method
