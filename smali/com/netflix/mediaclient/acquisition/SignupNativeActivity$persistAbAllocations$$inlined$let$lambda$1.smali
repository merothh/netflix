.class final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$persistAbAllocations$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->persistAbAllocations(Lcom/netflix/android/moneyball/FlowMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $abAllocations$inlined:Ljava/util/ArrayList;

.field final synthetic $nmAbConfigArray$inlined:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$persistAbAllocations$$inlined$let$lambda$1;->$abAllocations$inlined:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$persistAbAllocations$$inlined$let$lambda$1;->$nmAbConfigArray$inlined:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$persistAbAllocations$$inlined$let$lambda$1;->invoke(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(II)Z
    .locals 1

    .line 538
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;-><init>()V

    .line 539
    iput p1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;->testId:I

    .line 540
    iput p2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;->cellId:I

    .line 541
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$persistAbAllocations$$inlined$let$lambda$1;->$nmAbConfigArray$inlined:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
