.class final Lo/FI$FragmentManager;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FragmentManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FI$FragmentManager$Application;
    }
.end annotation


# instance fields
.field final synthetic a:Lo/FI;

.field private final b:Lo/Am;

.field private final c:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


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

    .line 262
    iput-object p1, p0, Lo/FI$FragmentManager;->a:Lo/FI;

    .line 266
    sget-object p1, Lo/FI;->e:Lo/FI$Application;

    invoke-virtual {p1}, Lo/FI$Application;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lo/FI$FragmentManager;->c:Lio/reactivex/ObservableEmitter;

    iput-object p3, p0, Lo/FI$FragmentManager;->b:Lo/Am;

    iput-object p4, p0, Lo/FI$FragmentManager;->d:Ljava/lang/String;

    return-void
.end method

.method private final c(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bb;",
            "Ljava/util/List<",
            "+",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lo/FI$FragmentManager;->a:Lo/FI;

    iget-object v1, p0, Lo/FI$FragmentManager;->c:Lio/reactivex/ObservableEmitter;

    move-object v2, p1

    check-cast v2, Lo/Bc;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, v1, v2, v3}, Lo/FI;->a(Lio/reactivex/ObservableEmitter;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 306
    invoke-static {p3}, Lo/DA;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p2, :cond_0

    .line 308
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 309
    iget-object p3, p0, Lo/FI$FragmentManager;->c:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$AssistContent;

    invoke-direct {v0, p2}, Lo/FC$AssistContent;-><init>(Ljava/util/List;)V

    invoke-interface {p3, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 313
    :cond_0
    invoke-interface {p1}, Lo/Bb;->aS()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lo/FI$FragmentManager;->b:Lo/Am;

    invoke-virtual {p2}, Lo/Am;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 314
    iget-object p2, p0, Lo/FI$FragmentManager;->b:Lo/Am;

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    .line 315
    new-instance p3, Lo/CustomDescription;

    invoke-interface {p1}, Lo/Bb;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lo/Bb;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p3, v0, v1}, Lo/CustomDescription;-><init>(Ljava/lang/String;Z)V

    check-cast p3, Lo/ConfirmationCallback;

    .line 316
    new-instance v10, Lo/FI$LoaderManager;

    iget-object v1, p0, Lo/FI$FragmentManager;->a:Lo/FI;

    .line 317
    iget-object v2, p0, Lo/FI$FragmentManager;->c:Lio/reactivex/ObservableEmitter;

    .line 318
    iget-object v3, p0, Lo/FI$FragmentManager;->b:Lo/Am;

    .line 319
    invoke-interface {p1}, Lo/Bb;->getUserThumbRating()I

    move-result v4

    .line 320
    invoke-interface {p1}, Lo/Bb;->getMatchPercentage()I

    move-result v5

    .line 321
    invoke-interface {p1}, Lo/Bb;->aW()Z

    move-result v6

    .line 322
    invoke-interface {p1}, Lo/Bb;->aP()Ljava/lang/String;

    move-result-object v7

    .line 323
    invoke-interface {p1}, Lo/Bb;->aw()I

    move-result v8

    .line 324
    invoke-interface {p1}, Lo/Bb;->aF()Lo/Ba;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lo/Ba;->as()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    move-object v9, p1

    move-object v0, v10

    .line 316
    invoke-direct/range {v0 .. v9}, Lo/FI$LoaderManager;-><init>(Lo/FI;Lio/reactivex/ObservableEmitter;Lo/Am;IIZLjava/lang/String;ILjava/lang/Integer;)V

    check-cast v10, Lo/zU;

    .line 314
    invoke-interface {p2, p3, v10}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    goto :goto_2

    .line 328
    :cond_3
    iget-object p1, p0, Lo/FI$FragmentManager;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :goto_2
    return-void
.end method

.method public static final synthetic c(Lo/FI$FragmentManager;Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lo/FI$FragmentManager;->c(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method


# virtual methods
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

    .line 263
    iget-object v0, p0, Lo/FI$FragmentManager;->c:Lio/reactivex/ObservableEmitter;

    return-object v0
.end method

.method public e(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bb;",
            "Ljava/util/List<",
            "+",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-super {p0, p1, p2, p3}, Lo/zP;->e(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 270
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object p1, p0, Lo/FI$FragmentManager;->c:Lio/reactivex/ObservableEmitter;

    new-instance p2, Lo/FC$TaskDescription;

    invoke-direct {p2, p3}, Lo/FC$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 272
    iget-object p1, p0, Lo/FI$FragmentManager;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 277
    iget-object p1, p0, Lo/FI$FragmentManager;->c:Lio/reactivex/ObservableEmitter;

    new-instance p2, Lo/FC$TaskDescription;

    sget-object p3, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v0, "CommonStatus.INT_ERR_CMP_RESP_NULL"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p2, p3}, Lo/FC$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lo/FI$FragmentManager;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 284
    :cond_1
    invoke-interface {p1}, Lo/Bb;->isPreRelease()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-direct {p0, p1, p2, p3}, Lo/FI$FragmentManager;->c(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 288
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    invoke-direct {p0, p1, p2, p3}, Lo/FI$FragmentManager;->c(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object p2, p0, Lo/FI$FragmentManager;->b:Lo/Am;

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    .line 295
    invoke-interface {p1}, Lo/Bb;->getId()Ljava/lang/String;

    move-result-object v0

    .line 296
    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 297
    new-instance v2, Lo/FI$FragmentManager$Application;

    invoke-direct {v2, p0, p1, p3}, Lo/FI$FragmentManager$Application;-><init>(Lo/FI$FragmentManager;Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    check-cast v2, Lo/zU;

    .line 294
    invoke-interface {p2, v0, v1, v2}, Lo/zG;->d(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    :goto_0
    return-void
.end method
