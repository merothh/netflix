.class Lo/ye$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FragmentManagerNonConfig$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ye;->a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/yf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic c:Lo/yf;

.field final synthetic e:Lo/ye;


# direct methods
.method constructor <init>(Lo/ye;Lo/yf;Ljava/lang/String;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lo/ye$1;->e:Lo/ye;

    iput-object p2, p0, Lo/ye$1;->c:Lo/yf;

    iput-object p3, p0, Lo/ye$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 11

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nf_service_resourcefetcher"

    const-string v2, "fetchAndCacheResource failed: "

    .line 374
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 375
    iget-object v3, p0, Lo/ye$1;->c:Lo/yf;

    if-eqz v3, :cond_0

    .line 376
    iget-object v4, p0, Lo/ye$1;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    invoke-direct {v10, p1}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    invoke-interface/range {v3 .. v10}, Lo/yf;->a(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
