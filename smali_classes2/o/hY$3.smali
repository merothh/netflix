.class Lo/hY$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/hY;


# direct methods
.method constructor <init>(Lo/hY;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lo/hY$3;->c:Lo/hY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1240
    iget-object v0, p0, Lo/hY$3;->c:Lo/hY;

    invoke-virtual {v0}, Lo/hY;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lo/hY$3;->c:Lo/hY;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3, v1, v2}, Lo/hY;->b(ZZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    :cond_0
    return-void
.end method
