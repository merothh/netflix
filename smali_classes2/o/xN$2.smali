.class Lo/xN$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN;->a(Ljava/lang/String;Ljava/lang/String;Lo/xY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/xY;

.field final synthetic b:Lo/xN;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/xN;Ljava/lang/String;Lo/xY;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lo/xN$2;->b:Lo/xN;

    iput-object p2, p0, Lo/xN$2;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/xN$2;->a:Lo/xY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 378
    iget-object v0, p0, Lo/xN$2;->b:Lo/xN;

    invoke-static {v0}, Lo/xN;->a(Lo/xN;)Lo/bV;

    move-result-object v0

    invoke-virtual {v0}, Lo/bV;->getResourceFetcher()Lo/xZ;

    move-result-object v0

    iget-object v1, p0, Lo/xN$2;->d:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    sget-object v3, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    iget-object v4, p0, Lo/xN$2;->a:Lo/xY;

    invoke-interface {v0, v1, v2, v3, v4}, Lo/xZ;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/android/volley/Request$Priority;Lo/yf;)V

    return-void
.end method
