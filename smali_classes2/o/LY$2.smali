.class Lo/LY$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LY;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/LY;


# direct methods
.method constructor <init>(Lo/LY;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lo/LY$2;->e:Lo/LY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "CastPlayerPostPlayFrag"

    const-string v0, "Showing episodes dialog"

    .line 149
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lo/LY$2;->e:Lo/LY;

    invoke-static {v0}, Lo/LY;->c(Lo/LY;)Lo/Bc;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "currentVideo is null - can\'t show episodes"

    .line 152
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_0
    iget-object p1, p0, Lo/LY$2;->e:Lo/LY;

    invoke-virtual {p1}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    iget-object v0, p0, Lo/LY$2;->e:Lo/LY;

    .line 158
    invoke-static {v0}, Lo/LY;->c(Lo/LY;)Lo/Bc;

    move-result-object v0

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/LY$2;->e:Lo/LY;

    .line 159
    invoke-static {v1}, Lo/LY;->c(Lo/LY;)Lo/Bc;

    move-result-object v1

    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 157
    invoke-static {v0, v1, v2, v3}, Lo/Dn;->a(Ljava/lang/String;Ljava/lang/String;J)Lo/Dn;

    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    return-void
.end method
