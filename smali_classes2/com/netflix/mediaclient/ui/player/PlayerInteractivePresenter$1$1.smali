.class final Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1;->c(Lo/UP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/Boolean;",
        "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1$1;->c:Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V
    .locals 2

    const-string v0, "stateHistory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/context/iko/UserState;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->toJson()Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/context/iko/UserState;-><init>(Lorg/json/JSONObject;)V

    check-cast v0, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$1$1;->a(ZLcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
