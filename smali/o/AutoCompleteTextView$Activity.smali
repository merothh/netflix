.class final Lo/AutoCompleteTextView$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AutoCompleteTextView;->d(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;II)Lio/reactivex/Single;
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
.field final synthetic a:Lo/AnalogClock;

.field final synthetic b:Lo/AutoCompleteTextView;

.field final synthetic c:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

.field final synthetic d:Lo/Serializable;

.field final synthetic e:I

.field final synthetic h:I


# direct methods
.method constructor <init>(Lo/AutoCompleteTextView;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;Lo/Serializable;II)V
    .locals 0

    iput-object p1, p0, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    iput-object p2, p0, Lo/AutoCompleteTextView$Activity;->c:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iput-object p3, p0, Lo/AutoCompleteTextView$Activity;->a:Lo/AnalogClock;

    iput-object p4, p0, Lo/AutoCompleteTextView$Activity;->d:Lo/Serializable;

    iput p5, p0, Lo/AutoCompleteTextView$Activity;->e:I

    iput p6, p0, Lo/AutoCompleteTextView$Activity;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/model/leafs/VideoInfo$Sharing;

    invoke-virtual {p0, p1}, Lo/AutoCompleteTextView$Activity;->e(Lcom/netflix/model/leafs/VideoInfo$Sharing;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/netflix/model/leafs/VideoInfo$Sharing;)Lio/reactivex/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/VideoInfo$Sharing;",
            ")",
            "Lio/reactivex/Single<",
            "Lo/AdapterViewFlipper$StateListAnimator;",
            ">;"
        }
    .end annotation

    const-string v0, "sharingInfo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    iget-object v1, p0, Lo/AutoCompleteTextView$Activity;->c:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iget-object v2, p0, Lo/AutoCompleteTextView$Activity;->a:Lo/AnalogClock;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->d(Lo/AnalogClock;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AutoCompleteTextView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getVerticalBillboardUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getTitleLogoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    invoke-virtual {v1}, Lo/AutoCompleteTextView;->c()Lo/WebViewUpdateService;

    move-result-object v1

    .line 38
    iget-object v4, p0, Lo/AutoCompleteTextView$Activity;->d:Lo/Serializable;

    .line 39
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getVerticalBillboardUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sharingInfo.verticalBillboardUrl"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v4, v5, v3, v2}, Lo/WebViewUpdateService;->a(Lo/Serializable;Ljava/lang/String;II)Lio/reactivex/Single;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    invoke-virtual {v2}, Lo/AutoCompleteTextView;->d()Lo/AbsSpinner;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getTitleLogoUrl()Ljava/lang/String;

    move-result-object p1

    const-string v3, "sharingInfo.titleLogoUrl"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lo/AbsSpinner;->a(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 46
    check-cast v1, Lio/reactivex/SingleSource;

    .line 47
    check-cast p1, Lio/reactivex/SingleSource;

    .line 48
    new-instance v2, Lo/AutoCompleteTextView$Activity$2;

    invoke-direct {v2, p0, v0}, Lo/AutoCompleteTextView$Activity$2;-><init>(Lo/AutoCompleteTextView$Activity;Ljava/lang/String;)V

    check-cast v2, Lio/reactivex/functions/BiFunction;

    .line 45
    invoke-static {v1, p1, v2}, Lio/reactivex/Single;->zip(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    invoke-virtual {v1}, Lo/AutoCompleteTextView;->c()Lo/WebViewUpdateService;

    move-result-object v1

    .line 73
    iget v4, p0, Lo/AutoCompleteTextView$Activity;->e:I

    .line 74
    iget v5, p0, Lo/AutoCompleteTextView$Activity;->h:I

    .line 72
    invoke-virtual {v1, v4, v5, v3, v2}, Lo/WebViewUpdateService;->d(IIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    invoke-virtual {v2}, Lo/AutoCompleteTextView;->c()Lo/WebViewUpdateService;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lo/AutoCompleteTextView$Activity;->d:Lo/Serializable;

    .line 80
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getBoxArtUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sharingInfo.boxArtUrl"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 82
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 78
    invoke-virtual {v2, v3, v4, v6, v1}, Lo/WebViewUpdateService;->b(Lo/Serializable;Ljava/lang/String;II)Lio/reactivex/Single;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    invoke-virtual {v2}, Lo/AutoCompleteTextView;->d()Lo/AbsSpinner;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getBoxArtUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lo/AbsSpinner;->a(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 87
    check-cast v1, Lio/reactivex/SingleSource;

    .line 88
    check-cast p1, Lio/reactivex/SingleSource;

    .line 89
    new-instance v2, Lo/AutoCompleteTextView$Activity$5;

    invoke-direct {v2, p0, v0}, Lo/AutoCompleteTextView$Activity$5;-><init>(Lo/AutoCompleteTextView$Activity;Ljava/lang/String;)V

    check-cast v2, Lio/reactivex/functions/BiFunction;

    .line 86
    invoke-static {v1, p1, v2}, Lio/reactivex/Single;->zip(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object p1

    :goto_0
    return-object p1
.end method
