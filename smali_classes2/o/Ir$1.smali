.class Lo/Ir$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ir;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Ir;


# direct methods
.method constructor <init>(Lo/Ir;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lo/Ir$1;->c:Lo/Ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lo/Ir$1;->c:Lo/Ir;

    invoke-virtual {v0}, Lo/Ir;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/Np;

    invoke-virtual {v0, p1, p2}, Lo/Np;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "MoreTabActivity"

    const-string v1, "NetflixService is NOT available!"

    .line 81
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lo/Ir$1;->c:Lo/Ir;

    invoke-virtual {v0}, Lo/Ir;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
