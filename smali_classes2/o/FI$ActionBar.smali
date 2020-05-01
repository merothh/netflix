.class final Lo/FI$ActionBar;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lo/Am;

.field final synthetic b:Lo/FI;

.field private final c:Ljava/lang/String;

.field private final d:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/FI;Lio/reactivex/ObservableEmitter;Lo/Am;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;",
            "Lo/Am;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "publisher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceManager"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iput-object p1, p0, Lo/FI$ActionBar;->b:Lo/FI;

    .line 372
    sget-object p1, Lo/FI;->e:Lo/FI$Application;

    invoke-virtual {p1}, Lo/FI$Application;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lo/FI$ActionBar;->d:Lio/reactivex/ObservableEmitter;

    iput-object p3, p0, Lo/FI$ActionBar;->a:Lo/Am;

    iput-object p4, p0, Lo/FI$ActionBar;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "res"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    invoke-super/range {p0 .. p2}, Lo/zP;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 376
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    iget-object v2, v0, Lo/FI$ActionBar;->d:Lio/reactivex/ObservableEmitter;

    new-instance v3, Lo/FC$TaskDescription;

    invoke-direct {v3, v1}, Lo/FC$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {v2, v3}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 378
    iget-object v1, v0, Lo/FI$ActionBar;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {v1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 383
    iget-object v1, v0, Lo/FI$ActionBar;->d:Lio/reactivex/ObservableEmitter;

    new-instance v2, Lo/FC$TaskDescription;

    sget-object v3, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v4, "CommonStatus.INT_ERR_CMP_RESP_NULL"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {v2, v3}, Lo/FC$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {v1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 384
    iget-object v1, v0, Lo/FI$ActionBar;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {v1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 388
    :cond_1
    iget-object v2, v0, Lo/FI$ActionBar;->b:Lo/FI;

    iget-object v3, v0, Lo/FI$ActionBar;->d:Lio/reactivex/ObservableEmitter;

    move-object/from16 v4, p1

    check-cast v4, Lo/Bc;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2, v3, v4, v5}, Lo/FI;->a(Lio/reactivex/ObservableEmitter;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 391
    invoke-interface/range {p1 .. p1}, Lo/AX;->aS()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lo/FI$ActionBar;->a:Lo/Am;

    invoke-virtual {v2}, Lo/Am;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 392
    iget-object v2, v0, Lo/FI$ActionBar;->a:Lo/Am;

    invoke-virtual {v2}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    .line 393
    new-instance v3, Lo/CustomDescription;

    iget-object v4, v0, Lo/FI$ActionBar;->c:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lo/AX;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-direct {v3, v4, v5}, Lo/CustomDescription;-><init>(Ljava/lang/String;Z)V

    check-cast v3, Lo/ConfirmationCallback;

    .line 394
    new-instance v16, Lo/FI$LoaderManager;

    iget-object v5, v0, Lo/FI$ActionBar;->b:Lo/FI;

    .line 395
    iget-object v6, v0, Lo/FI$ActionBar;->d:Lio/reactivex/ObservableEmitter;

    .line 396
    iget-object v7, v0, Lo/FI$ActionBar;->a:Lo/Am;

    .line 397
    invoke-interface/range {p1 .. p1}, Lo/AX;->getUserThumbRating()I

    move-result v8

    .line 398
    invoke-interface/range {p1 .. p1}, Lo/AX;->getMatchPercentage()I

    move-result v9

    .line 399
    invoke-interface/range {p1 .. p1}, Lo/AX;->aW()Z

    move-result v10

    .line 400
    invoke-interface/range {p1 .. p1}, Lo/AX;->aP()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc0

    const/4 v15, 0x0

    move-object/from16 v4, v16

    .line 394
    invoke-direct/range {v4 .. v15}, Lo/FI$LoaderManager;-><init>(Lo/FI;Lio/reactivex/ObservableEmitter;Lo/Am;IIZLjava/lang/String;ILjava/lang/Integer;ILo/amc;)V

    move-object/from16 v4, v16

    check-cast v4, Lo/zU;

    .line 392
    invoke-interface {v2, v3, v4}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    goto :goto_1

    .line 404
    :cond_3
    iget-object v2, v0, Lo/FI$ActionBar;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {v2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 407
    :goto_1
    invoke-static/range {p2 .. p2}, Lo/DA;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
