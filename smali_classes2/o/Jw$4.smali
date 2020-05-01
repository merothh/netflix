.class Lo/Jw$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Jw;


# direct methods
.method constructor <init>(Lo/Jw;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lo/Jw$4;->b:Lo/Jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 626
    iget-object v0, p0, Lo/Jw$4;->b:Lo/Jw;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hV:I

    invoke-virtual {v0, v1}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 627
    new-instance v1, Lo/hK;

    iget-object v2, p0, Lo/Jw$4;->b:Lo/Jw;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {v2, v3}, Lo/Jw;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v2, v3}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 628
    iget-object v0, p0, Lo/Jw$4;->b:Lo/Jw;

    invoke-virtual {v0}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v2, p0, Lo/Jw$4;->b:Lo/Jw;

    invoke-static {v2}, Lo/Jw;->m(Lo/Jw;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lo/Jw$4;->b:Lo/Jw;

    invoke-virtual {v1}, Lo/Jw;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void
.end method
