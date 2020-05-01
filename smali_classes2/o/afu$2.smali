.class Lo/afu$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FragmentManagerNonConfig$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afu;->c(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IILcom/android/volley/Request$Priority;Landroid/graphics/Bitmap$Config;ZZ)Lo/aeU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/afu;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/afu;Ljava/lang/String;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lo/afu$2;->b:Lo/afu;

    iput-object p2, p0, Lo/afu$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 779
    iget-object v0, p0, Lo/afu$2;->b:Lo/afu;

    iget-object v1, p0, Lo/afu$2;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lo/afu;->b(Lo/afu;Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method
