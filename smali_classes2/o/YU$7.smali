.class Lo/YU$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YU;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/YU;


# direct methods
.method constructor <init>(Lo/YU;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 327
    iget-object p1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-static {p1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-static {p1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object p1

    invoke-interface {p1}, Lo/BC;->isKidsProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 329
    new-instance p1, Lo/hK;

    iget-object v1, p0, Lo/YU$7;->a:Lo/YU;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->pr:I

    .line 330
    invoke-virtual {v1, v2}, Lo/YU;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/YU$7;->a:Lo/YU;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {v2, v3}, Lo/YU;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2, v0}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 331
    iget-object v1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-static {v1}, Lo/YU;->l(Lo/YU;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p1

    .line 332
    iget-object v1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-virtual {v1, p1}, Lo/YU;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    :cond_0
    if-eqz p2, :cond_3

    .line 335
    iget-object p1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-static {p1}, Lo/YU;->e(Lo/YU;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-static {p1}, Lo/YU;->c(Lo/YU;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 339
    :cond_1
    iget-object p1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-static {p1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-static {p1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object p1

    invoke-interface {p1}, Lo/BC;->isKidsProfile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 341
    iget-object p1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-static {p1}, Lo/YU;->i(Lo/YU;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lo/YU;->e(Lo/YU;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 342
    iget-object p1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-static {p1}, Lo/YU;->h(Lo/YU;)V

    goto :goto_0

    .line 345
    :cond_2
    iget-object p1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-static {p1}, Lo/YU;->d(Lo/YU;)Lo/Am;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 346
    iget-object p1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-static {p1}, Lo/YU;->d(Lo/YU;)Lo/Am;

    move-result-object p1

    new-instance p2, Lo/YU$StateListAnimator;

    iget-object v1, p0, Lo/YU$7;->a:Lo/YU;

    invoke-direct {p2, v1, v0}, Lo/YU$StateListAnimator;-><init>(Lo/YU;Lo/YU$5;)V

    invoke-virtual {p1, p2}, Lo/Am;->a(Lo/zU;)Z

    :cond_3
    :goto_0
    return-void
.end method
