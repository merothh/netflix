.class Lo/QQ$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/QQ;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/QQ;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/QQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lo/QQ$5;->b:Lo/QQ;

    iput-object p2, p0, Lo/QQ$5;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/QQ$5;->d:Ljava/lang/String;

    iput-object p4, p0, Lo/QQ$5;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 522
    iget-object v0, p0, Lo/QQ$5;->b:Lo/QQ;

    new-instance v1, Lo/nU$TaskDescription;

    iget-object v2, p0, Lo/QQ$5;->e:Ljava/lang/String;

    iget-object v3, p0, Lo/QQ$5;->d:Ljava/lang/String;

    iget-object v4, p0, Lo/QQ$5;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lo/nU$TaskDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lo/QQ;->e(Lo/QQ;Lo/nU;)V

    return-void
.end method

.method public c()V
    .locals 6

    .line 527
    iget-object v0, p0, Lo/QQ$5;->b:Lo/QQ;

    new-instance v1, Lo/nU$StateListAnimator;

    iget-object v2, p0, Lo/QQ$5;->e:Ljava/lang/String;

    iget-object v3, p0, Lo/QQ$5;->d:Ljava/lang/String;

    iget-object v4, p0, Lo/QQ$5;->c:Ljava/lang/String;

    sget-object v5, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2, v3, v4, v5}, Lo/nU$StateListAnimator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-static {v0, v1}, Lo/QQ;->e(Lo/QQ;Lo/nU;)V

    return-void
.end method
