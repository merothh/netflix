.class final Lo/ArrayAdapter$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ArrayAdapter;->d(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;II)Lio/reactivex/Single;
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
.field final synthetic a:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

.field final synthetic b:Lo/Serializable;

.field final synthetic c:I

.field final synthetic d:Lo/ArrayAdapter;

.field final synthetic e:I

.field final synthetic g:Lo/AnalogClock;


# direct methods
.method constructor <init>(Lo/ArrayAdapter;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/Serializable;IILo/AnalogClock;)V
    .locals 0

    iput-object p1, p0, Lo/ArrayAdapter$TaskDescription;->d:Lo/ArrayAdapter;

    iput-object p2, p0, Lo/ArrayAdapter$TaskDescription;->a:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iput-object p3, p0, Lo/ArrayAdapter$TaskDescription;->b:Lo/Serializable;

    iput p4, p0, Lo/ArrayAdapter$TaskDescription;->e:I

    iput p5, p0, Lo/ArrayAdapter$TaskDescription;->c:I

    iput-object p6, p0, Lo/ArrayAdapter$TaskDescription;->g:Lo/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/model/leafs/VideoInfo$Sharing;)Lio/reactivex/Single;
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

    .line 28
    iget-object v0, p0, Lo/ArrayAdapter$TaskDescription;->a:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getVerticalBillboardUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getTitleLogoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lo/AdapterViewFlipper;->b:Lo/AdapterViewFlipper$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 32
    iget-object v0, p0, Lo/ArrayAdapter$TaskDescription;->d:Lo/ArrayAdapter;

    invoke-virtual {v0}, Lo/ArrayAdapter;->c()Lo/WebViewUpdateService;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lo/ArrayAdapter$TaskDescription;->b:Lo/Serializable;

    .line 34
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getVerticalBillboardUrl()Ljava/lang/String;

    move-result-object v3

    const-string v0, "sharingInfo.verticalBillboardUrl"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getTitleLogoUrl()Ljava/lang/String;

    move-result-object v4

    const-string p1, "sharingInfo.titleLogoUrl"

    invoke-static {v4, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget v5, p0, Lo/ArrayAdapter$TaskDescription;->e:I

    .line 37
    iget v6, p0, Lo/ArrayAdapter$TaskDescription;->c:I

    .line 32
    invoke-virtual/range {v1 .. v6}, Lo/WebViewUpdateService;->b(Lo/Serializable;Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Single;

    move-result-object p1

    goto :goto_1

    .line 40
    :cond_0
    iget-object v0, p0, Lo/ArrayAdapter$TaskDescription;->a:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getBoxArtUrl()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getTitleLogoUrl()Ljava/lang/String;

    move-result-object v3

    const-string p1, "url"

    if-eqz v3, :cond_2

    .line 43
    sget-object v1, Lo/AdapterViewFlipper;->b:Lo/AdapterViewFlipper$TaskDescription;

    check-cast v1, Lo/MessagePdu;

    .line 44
    iget-object v1, p0, Lo/ArrayAdapter$TaskDescription;->d:Lo/ArrayAdapter;

    invoke-virtual {v1}, Lo/ArrayAdapter;->c()Lo/WebViewUpdateService;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lo/ArrayAdapter$TaskDescription;->b:Lo/Serializable;

    .line 47
    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget v5, p0, Lo/ArrayAdapter$TaskDescription;->e:I

    .line 49
    iget v6, p0, Lo/ArrayAdapter$TaskDescription;->c:I

    move-object v4, v0

    .line 44
    invoke-virtual/range {v1 .. v6}, Lo/WebViewUpdateService;->c(Lo/Serializable;Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Single;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object p1, v1

    goto :goto_1

    .line 51
    :cond_2
    iget-object v1, p0, Lo/ArrayAdapter$TaskDescription;->d:Lo/ArrayAdapter;

    .line 53
    sget-object v2, Lo/AdapterViewFlipper;->b:Lo/AdapterViewFlipper$TaskDescription;

    check-cast v2, Lo/MessagePdu;

    .line 54
    invoke-virtual {v1}, Lo/ArrayAdapter;->c()Lo/WebViewUpdateService;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lo/ArrayAdapter$TaskDescription;->b:Lo/Serializable;

    .line 56
    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget p1, p0, Lo/ArrayAdapter$TaskDescription;->e:I

    .line 58
    iget v3, p0, Lo/ArrayAdapter$TaskDescription;->c:I

    .line 54
    invoke-virtual {v1, v2, v0, p1, v3}, Lo/WebViewUpdateService;->c(Lo/Serializable;Ljava/lang/String;II)Lio/reactivex/Single;

    move-result-object p1

    .line 61
    :goto_1
    new-instance v0, Lo/ArrayAdapter$TaskDescription$5;

    invoke-direct {v0, p0}, Lo/ArrayAdapter$TaskDescription$5;-><init>(Lo/ArrayAdapter$TaskDescription;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lcom/netflix/model/leafs/VideoInfo$Sharing;

    invoke-virtual {p0, p1}, Lo/ArrayAdapter$TaskDescription;->a(Lcom/netflix/model/leafs/VideoInfo$Sharing;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
