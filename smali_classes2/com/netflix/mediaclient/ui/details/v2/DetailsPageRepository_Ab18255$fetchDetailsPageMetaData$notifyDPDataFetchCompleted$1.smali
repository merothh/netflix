.class public final Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL;->a(Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;Lio/reactivex/ObservableEmitter;Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Bc;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/FL;

.field final synthetic b:Lio/reactivex/ObservableEmitter;

.field final synthetic c:Lo/Am;

.field final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic e:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic f:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lo/hW;


# direct methods
.method public constructor <init>(Lo/FL;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lio/reactivex/ObservableEmitter;Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->a:Lo/FL;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->b:Lio/reactivex/ObservableEmitter;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->c:Lo/Am;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->f:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->h:Lo/hW;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/Bc;)V
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    add-int/2addr v2, v0

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    iget v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->a:Lo/FL;

    .line 269
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->b:Lio/reactivex/ObservableEmitter;

    .line 270
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->c:Lo/Am;

    .line 272
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->g:Ljava/lang/String;

    .line 273
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->f:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 274
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->h:Lo/hW;

    move-object v4, p1

    .line 268
    invoke-static/range {v1 .. v7}, Lo/FL;->e(Lo/FL;Lio/reactivex/ObservableEmitter;Lo/Am;Lo/Bc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;)V

    goto :goto_1

    .line 266
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->b:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lo/Bc;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;->d(Lo/Bc;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
