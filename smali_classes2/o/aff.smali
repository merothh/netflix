.class public final Lo/aff;
.super Lcom/android/volley/Request;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Lo/ExitTransitionCoordinator;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/HdmiRecordListener$StateListAnimator;

.field private final e:Lcom/facebook/imagepipeline/common/Priority;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILcom/facebook/imagepipeline/common/Priority;Lo/HdmiRecordListener$StateListAnimator;)V
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frescoPriority"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frescoNetworkFetcherCallback"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lo/afb;

    invoke-direct {v0, p4}, Lo/afb;-><init>(Lo/HdmiRecordListener$StateListAnimator;)V

    check-cast v0, Lo/FragmentManagerNonConfig$Activity;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;)V

    iput-object p3, p0, Lo/aff;->e:Lcom/facebook/imagepipeline/common/Priority;

    iput-object p4, p0, Lo/aff;->b:Lo/HdmiRecordListener$StateListAnimator;

    if-lez p2, :cond_0

    .line 23
    new-instance p1, Lo/ContentProviderHolder;

    const/4 p3, 0x2

    const/high16 p4, 0x40000000    # 2.0f

    invoke-direct {p1, p2, p3, p4}, Lo/ContentProviderHolder;-><init>(IIF)V

    check-cast p1, Lo/FragmentController;

    invoke-virtual {p0, p1}, Lo/aff;->d(Lo/FragmentController;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 2

    .line 41
    iget-object v0, p0, Lo/aff;->e:Lcom/facebook/imagepipeline/common/Priority;

    sget-object v1, Lo/afe;->e:[I

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 44
    sget-object v0, Lcom/android/volley/Request$Priority;->c:Lcom/android/volley/Request$Priority;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 43
    :cond_1
    sget-object v0, Lcom/android/volley/Request$Priority;->a:Lcom/android/volley/Request$Priority;

    goto :goto_0

    .line 42
    :cond_2
    sget-object v0, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    :goto_0
    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lo/ExitTransitionCoordinator;

    invoke-virtual {p0, p1}, Lo/aff;->d(Lo/ExitTransitionCoordinator;)V

    return-void
.end method

.method protected d(Lo/ExitTransitionCoordinator;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lo/ExitTransitionCoordinator;->c:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 33
    iget-object v1, p0, Lo/aff;->b:Lo/HdmiRecordListener$StateListAnimator;

    check-cast v0, Ljava/io/InputStream;

    iget-object p1, p1, Lo/ExitTransitionCoordinator;->c:[B

    array-length p1, p1

    invoke-interface {v1, v0, p1}, Lo/HdmiRecordListener$StateListAnimator;->b(Ljava/io/InputStream;I)V

    return-void
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "Lo/ExitTransitionCoordinator;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    invoke-static {p1, v0}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    const-string v0, "Response.success(response, null)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 37
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->I:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method
