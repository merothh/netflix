.class Lo/bM$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bV$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bM;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/bV$Activity;

.field final synthetic c:Lo/bM;

.field final synthetic d:Lo/bV$Activity;

.field final synthetic e:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lo/bM;Ljava/util/ArrayList;Lo/bV$Activity;Lo/bV$Activity;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lo/bM$3;->c:Lo/bM;

    iput-object p2, p0, Lo/bM$3;->e:Ljava/util/ArrayList;

    iput-object p3, p0, Lo/bM$3;->d:Lo/bV$Activity;

    iput-object p4, p0, Lo/bM$3;->a:Lo/bV$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/bV;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 685
    invoke-static {}, Lo/aeB;->a()Z

    .line 687
    iget-object v0, p0, Lo/bM$3;->c:Lo/bM;

    iget-object v1, p0, Lo/bM$3;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lo/bM$3;->d:Lo/bV$Activity;

    invoke-static {v0, p1, p2, v1, v2}, Lo/bM;->b(Lo/bM;Lo/bV;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;Lo/bV$Activity;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 688
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "NetflixService"

    const-string v0, "NetflixService successfully inited ServiceAgent %s"

    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 689
    iget-object p1, p0, Lo/bM$3;->c:Lo/bM;

    invoke-static {p1}, Lo/bM;->o(Lo/bM;)Lo/mw;

    move-result-object p1

    iget-object p2, p0, Lo/bM$3;->c:Lo/bM;

    invoke-static {p2}, Lo/bM;->s(Lo/bM;)Lo/bV$TaskDescription;

    move-result-object p2

    iget-object v0, p0, Lo/bM$3;->a:Lo/bV$Activity;

    invoke-virtual {p1, p2, v0}, Lo/mw;->init(Lo/bV$TaskDescription;Lo/bV$Activity;)V

    :cond_0
    return-void
.end method
