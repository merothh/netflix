.class final Lo/FI$LoaderManager;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoaderManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FI$LoaderManager$TaskDescription;
    }
.end annotation


# instance fields
.field final synthetic a:Lo/FI;

.field private final b:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/Am;

.field private final d:I

.field private final f:Z

.field private final g:Ljava/lang/Integer;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:I


# direct methods
.method public constructor <init>(Lo/FI;Lio/reactivex/ObservableEmitter;Lo/Am;IIZLjava/lang/String;ILjava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;",
            "Lo/Am;",
            "IIZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "publisher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceManager"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    iput-object p1, p0, Lo/FI$LoaderManager;->a:Lo/FI;

    .line 468
    sget-object p1, Lo/FI;->e:Lo/FI$Application;

    invoke-virtual {p1}, Lo/FI$Application;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lo/FI$LoaderManager;->b:Lio/reactivex/ObservableEmitter;

    iput-object p3, p0, Lo/FI$LoaderManager;->c:Lo/Am;

    iput p4, p0, Lo/FI$LoaderManager;->d:I

    iput p5, p0, Lo/FI$LoaderManager;->j:I

    iput-boolean p6, p0, Lo/FI$LoaderManager;->f:Z

    iput-object p7, p0, Lo/FI$LoaderManager;->i:Ljava/lang/String;

    iput p8, p0, Lo/FI$LoaderManager;->h:I

    iput-object p9, p0, Lo/FI$LoaderManager;->g:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lo/FI;Lio/reactivex/ObservableEmitter;Lo/Am;IIZLjava/lang/String;ILjava/lang/Integer;ILo/amc;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    move/from16 v11, p8

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 467
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v12, v0

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v12}, Lo/FI$LoaderManager;-><init>(Lo/FI;Lio/reactivex/ObservableEmitter;Lo/Am;IIZLjava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 472
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 473
    sget-object p1, Lo/FI;->e:Lo/FI$Application;

    check-cast p1, Lo/MessagePdu;

    .line 474
    iget-object p1, p0, Lo/FI$LoaderManager;->b:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 479
    sget-object p1, Lo/FI;->e:Lo/FI$Application;

    check-cast p1, Lo/MessagePdu;

    .line 480
    iget-object p1, p0, Lo/FI$LoaderManager;->b:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 488
    :cond_1
    iget p2, p0, Lo/FI$LoaderManager;->j:I

    invoke-interface {p1}, Lo/AX;->getMatchPercentage()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget p2, p0, Lo/FI$LoaderManager;->d:I

    invoke-interface {p1}, Lo/AX;->getUserThumbRating()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-boolean p2, p0, Lo/FI$LoaderManager;->f:Z

    invoke-interface {p1}, Lo/AX;->aW()Z

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lo/FI$LoaderManager;->i:Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p1}, Lo/AX;->aP()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 490
    :cond_2
    iget-object p2, p0, Lo/FI$LoaderManager;->b:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$PictureInPictureParams;

    check-cast p1, Lo/Bc;

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v2, "CommonStatus.OK"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {v0, p1, v1}, Lo/FC$PictureInPictureParams;-><init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 493
    :cond_3
    iget-object p1, p0, Lo/FI$LoaderManager;->b:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public final d()Lio/reactivex/ObservableEmitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lo/FI$LoaderManager;->b:Lio/reactivex/ObservableEmitter;

    return-object v0
.end method

.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 499
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 500
    sget-object p1, Lo/FI;->e:Lo/FI$Application;

    check-cast p1, Lo/MessagePdu;

    .line 501
    iget-object p1, p0, Lo/FI$LoaderManager;->b:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 506
    sget-object p1, Lo/FI;->e:Lo/FI$Application;

    check-cast p1, Lo/MessagePdu;

    .line 507
    iget-object p1, p0, Lo/FI$LoaderManager;->b:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 515
    :cond_1
    iget p2, p0, Lo/FI$LoaderManager;->j:I

    invoke-interface {p1}, Lo/Bb;->getMatchPercentage()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget p2, p0, Lo/FI$LoaderManager;->d:I

    invoke-interface {p1}, Lo/Bb;->getUserThumbRating()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-boolean p2, p0, Lo/FI$LoaderManager;->f:Z

    invoke-interface {p1}, Lo/Bb;->aW()Z

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lo/FI$LoaderManager;->i:Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p1}, Lo/Bb;->aP()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 517
    :cond_2
    iget-object p2, p0, Lo/FI$LoaderManager;->b:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$PictureInPictureParams;

    move-object v1, p1

    check-cast v1, Lo/Bc;

    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v3, "CommonStatus.OK"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {v0, v1, v2}, Lo/FC$PictureInPictureParams;-><init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 521
    :cond_3
    invoke-interface {p1}, Lo/Bb;->aw()I

    move-result p2

    if-lez p2, :cond_4

    invoke-interface {p1}, Lo/Bb;->aw()I

    move-result p2

    iget v0, p0, Lo/FI$LoaderManager;->h:I

    if-eq p2, v0, :cond_4

    .line 522
    sget-object p2, Lo/FI;->e:Lo/FI$Application;

    check-cast p2, Lo/MessagePdu;

    .line 523
    iget-object p2, p0, Lo/FI$LoaderManager;->c:Lo/Am;

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    .line 524
    invoke-interface {p1}, Lo/Bb;->getId()Ljava/lang/String;

    move-result-object v0

    .line 525
    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 526
    new-instance v2, Lo/FI$LoaderManager$TaskDescription;

    .line 527
    iget v3, p0, Lo/FI$LoaderManager;->h:I

    .line 528
    iget-object v4, p0, Lo/FI$LoaderManager;->g:Ljava/lang/Integer;

    .line 526
    invoke-direct {v2, p0, v3, v4}, Lo/FI$LoaderManager$TaskDescription;-><init>(Lo/FI$LoaderManager;ILjava/lang/Integer;)V

    check-cast v2, Lo/zU;

    .line 523
    invoke-interface {p2, v0, v1, v2}, Lo/zG;->d(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    goto :goto_0

    .line 532
    :cond_4
    iget-object p2, p0, Lo/FI$LoaderManager;->b:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 538
    :goto_0
    invoke-interface {p1}, Lo/Bb;->aF()Lo/Ba;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lo/Bb;->as()I

    move-result p2

    iget-object v0, p0, Lo/FI$LoaderManager;->g:Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_8

    .line 539
    :goto_1
    invoke-interface {p1}, Lo/Bb;->as()I

    move-result p2

    add-int/lit8 v4, p2, -0x1

    const/4 p2, 0x0

    const/16 v0, 0x34

    .line 543
    invoke-interface {p1}, Lo/Bb;->as()I

    move-result v1

    if-le v1, v0, :cond_6

    add-int/lit8 p2, v4, -0xa

    move v3, p2

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 547
    :goto_2
    iget-object p2, p0, Lo/FI$LoaderManager;->c:Lo/Am;

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    .line 548
    invoke-interface {p1}, Lo/Bb;->aF()Lo/Ba;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lo/Ba;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    move-object v1, p1

    .line 549
    sget-object v2, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 v5, 0x0

    .line 547
    invoke-interface/range {v0 .. v5}, Lo/zG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/zU;)Z

    :cond_8
    return-void
.end method
