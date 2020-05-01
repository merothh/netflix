.class public final Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestViewModelInitializer$createReplayRequestViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ViewStub;->b(Landroidx/fragment/app/Fragment;)Lo/WindowCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lcom/netflix/cl/model/event/session/action/RedeemGiftCard;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestViewModelInitializer$createReplayRequestViewModel$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestViewModelInitializer$createReplayRequestViewModel$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestViewModelInitializer$createReplayRequestViewModel$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestViewModelInitializer$createReplayRequestViewModel$1;->a:Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestViewModelInitializer$createReplayRequestViewModel$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lcom/netflix/cl/model/event/session/action/RedeemGiftCard;
    .locals 1

    .line 48
    new-instance v0, Lcom/netflix/cl/model/event/session/action/RedeemGiftCard;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/action/RedeemGiftCard;-><init>()V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestViewModelInitializer$createReplayRequestViewModel$1;->c()Lcom/netflix/cl/model/event/session/action/RedeemGiftCard;

    move-result-object v0

    return-object v0
.end method
