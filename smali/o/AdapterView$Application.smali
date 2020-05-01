.class final Lo/AdapterView$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AdapterView;->d(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/netflix/model/leafs/VideoInfo$Sharing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/alA;


# direct methods
.method constructor <init>(Lo/alA;)V
    .locals 0

    iput-object p1, p0, Lo/AdapterView$Application;->d:Lo/alA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/model/leafs/VideoInfo$Sharing;

    invoke-virtual {p0, p1}, Lo/AdapterView$Application;->e(Lcom/netflix/model/leafs/VideoInfo$Sharing;)V

    return-void
.end method

.method public final e(Lcom/netflix/model/leafs/VideoInfo$Sharing;)V
    .locals 5

    .line 90
    const-class v0, Lo/xZ;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xZ;

    const-string v1, "sharingInfo"

    .line 91
    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getVerticalBillboardUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getTitleLogoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 93
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getVerticalBillboardUrl()Ljava/lang/String;

    move-result-object v1

    .line 94
    sget-object v2, Lcom/netflix/mediaclient/api/res/AssetType;->m:Lcom/netflix/mediaclient/api/res/AssetType;

    .line 92
    invoke-interface {v0, v1, v2}, Lo/xZ;->d(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Completable;

    move-result-object v1

    .line 95
    sget-object v2, Lo/AdapterView$Application$TaskDescription;->d:Lo/AdapterView$Application$TaskDescription;

    check-cast v2, Lio/reactivex/functions/Action;

    iget-object v3, p0, Lo/AdapterView$Application;->d:Lo/alA;

    if-eqz v3, :cond_0

    new-instance v4, Lo/Advanceable;

    invoke-direct {v4, v3}, Lo/Advanceable;-><init>(Lo/alA;)V

    move-object v3, v4

    :cond_0
    check-cast v3, Lio/reactivex/functions/Consumer;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 96
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getTitleLogoUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/api/res/AssetType;->t:Lcom/netflix/mediaclient/api/res/AssetType;

    invoke-interface {v0, p1, v1}, Lo/xZ;->d(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Completable;

    move-result-object p1

    .line 97
    sget-object v0, Lo/AdapterView$Application$ActionBar;->e:Lo/AdapterView$Application$ActionBar;

    check-cast v0, Lio/reactivex/functions/Action;

    iget-object v1, p0, Lo/AdapterView$Application;->d:Lo/alA;

    if-eqz v1, :cond_1

    new-instance v2, Lo/Advanceable;

    invoke-direct {v2, v1}, Lo/Advanceable;-><init>(Lo/alA;)V

    move-object v1, v2

    :cond_1
    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 99
    :cond_2
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getBoxArtUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    invoke-interface {v0, p1, v1}, Lo/xZ;->d(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Completable;

    move-result-object p1

    .line 100
    sget-object v0, Lo/AdapterView$Application$Activity;->b:Lo/AdapterView$Application$Activity;

    check-cast v0, Lio/reactivex/functions/Action;

    iget-object v1, p0, Lo/AdapterView$Application;->d:Lo/alA;

    if-eqz v1, :cond_3

    new-instance v2, Lo/Advanceable;

    invoke-direct {v2, v1}, Lo/Advanceable;-><init>(Lo/alA;)V

    move-object v1, v2

    :cond_3
    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method
