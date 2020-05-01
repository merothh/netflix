.class Lo/kI$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kI;->d(Landroid/content/Context;Lo/zE;Lio/reactivex/subjects/CompletableSubject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/kI;

.field final synthetic d:Lio/reactivex/subjects/CompletableSubject;


# direct methods
.method constructor <init>(Lo/kI;Lio/reactivex/subjects/CompletableSubject;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lo/kI$2;->c:Lo/kI;

    iput-object p2, p0, Lo/kI$2;->d:Lio/reactivex/subjects/CompletableSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/kI$2;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TargetManagerV2"

    const-string v2, "addCaf - failed to init CAF, error: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    iget-object v0, p0, Lo/kI$2;->c:Lo/kI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/kI;->a(Lo/kI;Lo/lg;)Lo/lg;

    .line 101
    iget-object v0, p0, Lo/kI$2;->d:Lio/reactivex/subjects/CompletableSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/CompletableSubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
