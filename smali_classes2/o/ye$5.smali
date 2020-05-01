.class Lo/ye$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FragmentManagerNonConfig$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ye;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/android/volley/Request$Priority;Lo/yf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/yf;

.field final synthetic d:Lo/ye;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/ye;Lo/yf;Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lo/ye$5;->d:Lo/ye;

    iput-object p2, p0, Lo/ye$5;->b:Lo/yf;

    iput-object p3, p0, Lo/ye$5;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nf_service_resourcefetcher"

    const-string v2, "FileDownloadRequest failed: "

    .line 338
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 339
    iget-object v0, p0, Lo/ye$5;->b:Lo/yf;

    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lo/ye$5;->e:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    invoke-direct {v3, p1}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    invoke-interface {v0, v1, v2, v3}, Lo/yf;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
