.class Lo/YU$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YU;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/YU;


# direct methods
.method constructor <init>(Lo/YU;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lo/YU$10;->c:Lo/YU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 297
    iget-object p1, p0, Lo/YU$10;->c:Lo/YU;

    invoke-static {p1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 299
    iget-object p1, p0, Lo/YU$10;->c:Lo/YU;

    invoke-static {p1}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/YU$10;->c:Lo/YU;

    .line 300
    invoke-static {p1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object p1

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/YU$10;->c:Lo/YU;

    invoke-static {v0}, Lo/adR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    new-instance p1, Lo/hK;

    iget-object v0, p0, Lo/YU$10;->c:Lo/YU;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pg:I

    .line 302
    invoke-virtual {v0, v1}, Lo/YU;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/YU$10;->c:Lo/YU;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {v1, v2}, Lo/YU;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1, v2}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lo/YU$10;->c:Lo/YU;

    invoke-static {v0}, Lo/YU;->m(Lo/YU;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p1

    .line 304
    iget-object v0, p0, Lo/YU$10;->c:Lo/YU;

    invoke-virtual {v0, p1}, Lo/YU;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void

    .line 308
    :cond_0
    iget-object p1, p0, Lo/YU$10;->c:Lo/YU;

    invoke-static {p1}, Lo/YU;->k(Lo/YU;)V

    .line 309
    iget-object p1, p0, Lo/YU$10;->c:Lo/YU;

    invoke-static {p1}, Lo/YK;->e(Landroid/content/DialogInterface$OnClickListener;)Lo/YK;

    move-result-object p1

    .line 312
    iget-object v0, p0, Lo/YU$10;->c:Lo/YU;

    invoke-virtual {v0, p1}, Lo/YU;->showDialog(Lo/PushbackReader;)Z

    goto :goto_0

    :cond_1
    const-string p1, "ProfileDetailsActivity"

    const-string v0, "Weird use case: profile edit was started, but input profile is null"

    .line 314
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p1, p0, Lo/YU$10;->c:Lo/YU;

    invoke-virtual {p1}, Lo/YU;->finish()V

    :goto_0
    return-void
.end method
