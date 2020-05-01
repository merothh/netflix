.class Lo/LY$10;
.super Lo/Zo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LY;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;ILandroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lo/LY;

.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/LY;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lo/LY$10;->b:Lo/LY;

    iput-object p4, p0, Lo/LY$10;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p5, p0, Lo/LY$10;->a:Landroid/view/View;

    invoke-direct {p0, p2, p3}, Lo/Zo;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method protected d(Lo/AQ;)V
    .locals 3

    .line 306
    iget-object p1, p0, Lo/LY$10;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 308
    iget-object p1, p0, Lo/LY$10;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 309
    iget-object p1, p0, Lo/LY$10;->a:Landroid/view/View;

    iget-object v0, p0, Lo/LY$10;->b:Lo/LY;

    invoke-static {v0}, Lo/LY;->a(Lo/LY;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 310
    iget-object p1, p0, Lo/LY$10;->b:Lo/LY;

    invoke-static {p1}, Lo/LY;->d(Lo/LY;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lo/LY$10;->a:Landroid/view/View;

    iget-object v0, p0, Lo/LY$10;->b:Lo/LY;

    invoke-static {v0}, Lo/LY;->d(Lo/LY;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 312
    iget-object p1, p0, Lo/LY$10;->b:Lo/LY;

    invoke-static {p1}, Lo/LY;->a(Lo/LY;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 315
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/LY$10;->b:Lo/LY;

    invoke-static {p1}, Lo/LY;->d(Lo/LY;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 316
    iget-object p1, p0, Lo/LY$10;->b:Lo/LY;

    invoke-static {p1}, Lo/LY;->a(Lo/LY;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method protected i(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method
