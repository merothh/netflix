.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XJ;->b(Lcom/netflix/model/leafs/originals/interactive/AssetManifest;Landroid/content/Context;)V
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
        "Lcom/netflix/model/leafs/originals/interactive/AssetManifest;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1;->b:Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/Am;Lcom/netflix/model/leafs/originals/interactive/AssetManifest;)V
    .locals 7

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifest"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->images()Ljava/util/Collection;

    move-result-object p2

    const-string v0, "images"

    .line 290
    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lo/aoI;->b:Lo/aoI;

    move-object v1, v0

    check-cast v1, Lo/aor;

    invoke-static {}, Lo/aoz;->a()Lo/aon;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/alj;

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;

    const/4 v4, 0x0

    invoke-direct {v0, p2, p1, v4}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1$1;-><init>(Ljava/util/Collection;Lo/Am;Lo/ale;)V

    move-object v4, v0

    check-cast v4, Lo/alN;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lo/anM;->b(Lo/aor;Lo/alj;Lkotlinx/coroutines/CoroutineStart;Lo/alN;ILjava/lang/Object;)Lo/aoU;

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lo/Am;

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$prefetchImages$1;->e(Lo/Am;Lcom/netflix/model/leafs/originals/interactive/AssetManifest;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
