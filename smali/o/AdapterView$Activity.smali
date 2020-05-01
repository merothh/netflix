.class final Lo/AdapterView$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AdapterView;->a(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;II)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/SingleSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Serializable;

.field final synthetic b:I

.field final synthetic c:Lo/AdapterView;

.field final synthetic d:I

.field final synthetic e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

.field final synthetic g:Lo/AnalogClock;


# direct methods
.method constructor <init>(Lo/AdapterView;Lo/Serializable;IILcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;)V
    .locals 0

    iput-object p1, p0, Lo/AdapterView$Activity;->c:Lo/AdapterView;

    iput-object p2, p0, Lo/AdapterView$Activity;->a:Lo/Serializable;

    iput p3, p0, Lo/AdapterView$Activity;->b:I

    iput p4, p0, Lo/AdapterView$Activity;->d:I

    iput-object p5, p0, Lo/AdapterView$Activity;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iput-object p6, p0, Lo/AdapterView$Activity;->g:Lo/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/model/leafs/VideoInfo$Sharing;

    invoke-virtual {p0, p1}, Lo/AdapterView$Activity;->c(Lcom/netflix/model/leafs/VideoInfo$Sharing;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/netflix/model/leafs/VideoInfo$Sharing;)Lio/reactivex/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/VideoInfo$Sharing;",
            ")",
            "Lio/reactivex/Single<",
            "Lo/ActivityChooserView$Application;",
            ">;"
        }
    .end annotation

    const-string v0, "sharingInfo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getVerticalBillboardUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getTitleLogoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lo/AdapterView$Activity;->c:Lo/AdapterView;

    invoke-virtual {v0}, Lo/AdapterView;->e()Lo/WebViewUpdateService;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lo/AdapterView$Activity;->a:Lo/Serializable;

    .line 35
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getVerticalBillboardUrl()Ljava/lang/String;

    move-result-object v3

    const-string v0, "sharingInfo.verticalBillboardUrl"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getTitleLogoUrl()Ljava/lang/String;

    move-result-object v4

    const-string p1, "sharingInfo.titleLogoUrl"

    invoke-static {v4, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget v5, p0, Lo/AdapterView$Activity;->b:I

    .line 38
    iget v6, p0, Lo/AdapterView$Activity;->d:I

    .line 33
    invoke-virtual/range {v1 .. v6}, Lo/WebViewUpdateService;->b(Lo/Serializable;Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Single;

    move-result-object p1

    .line 39
    new-instance v0, Lo/AdapterView$Activity$4;

    invoke-direct {v0, p0}, Lo/AdapterView$Activity$4;-><init>(Lo/AdapterView$Activity;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lo/AdapterView$Activity;->c:Lo/AdapterView;

    invoke-virtual {v0}, Lo/AdapterView;->e()Lo/WebViewUpdateService;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lo/AdapterView$Activity;->a:Lo/Serializable;

    .line 49
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getBoxArtUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sharingInfo.boxArtUrl"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget v4, p0, Lo/AdapterView$Activity;->b:I

    div-int/lit8 v4, v4, 0x4

    .line 51
    iget v5, p0, Lo/AdapterView$Activity;->d:I

    div-int/lit8 v5, v5, 0x4

    .line 47
    invoke-virtual {v0, v1, v2, v4, v5}, Lo/WebViewUpdateService;->b(Lo/Serializable;Ljava/lang/String;II)Lio/reactivex/Single;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lo/AdapterView$Activity;->c:Lo/AdapterView;

    invoke-virtual {v1}, Lo/AdapterView;->d()Lo/AbsSpinner;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getBoxArtUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lo/AbsSpinner;->a(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 56
    check-cast v0, Lio/reactivex/SingleSource;

    .line 57
    check-cast p1, Lio/reactivex/SingleSource;

    .line 58
    new-instance v1, Lo/AdapterView$Activity$3;

    invoke-direct {v1, p0}, Lo/AdapterView$Activity$3;-><init>(Lo/AdapterView$Activity;)V

    check-cast v1, Lio/reactivex/functions/BiFunction;

    .line 55
    invoke-static {v0, p1, v1}, Lio/reactivex/Single;->zip(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object p1

    :goto_0
    return-object p1
.end method
