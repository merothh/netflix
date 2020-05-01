.class Lo/Ty$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ty;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Ty;


# direct methods
.method constructor <init>(Lo/Ty;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lo/Ty$4;->e:Lo/Ty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lo/Ty$4;->e:Lo/Ty;

    invoke-virtual {v0}, Lo/Ty;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "PlayerActivity"

    const-string v1, "NetflixService is NOT available!"

    .line 347
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lo/Ty$4;->e:Lo/Ty;

    invoke-virtual {v0}, Lo/Ty;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
