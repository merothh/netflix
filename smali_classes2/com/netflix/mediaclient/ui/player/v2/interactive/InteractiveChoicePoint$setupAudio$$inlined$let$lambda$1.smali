.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/Am;",
        "Lcom/netflix/model/leafs/originals/interactive/Audio;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

.field final synthetic d:Lo/Vk;

.field final synthetic e:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;->b:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;->d:Lo/Vk;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;->e:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Am;Lcom/netflix/model/leafs/originals/interactive/Audio;)Z
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Audio;->url()Ljava/lang/String;

    move-result-object p2

    .line 646
    sget-object v0, Lcom/netflix/mediaclient/api/res/AssetType;->l:Lcom/netflix/mediaclient/api/res/AssetType;

    .line 647
    new-instance v1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1$1;-><init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;)V

    check-cast v1, Lo/zU;

    .line 644
    invoke-virtual {p1, p2, v0, v1}, Lo/Am;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/zU;)Z

    move-result p1

    return p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Lo/Am;

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/Audio;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;->a(Lo/Am;Lcom/netflix/model/leafs/originals/interactive/Audio;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
