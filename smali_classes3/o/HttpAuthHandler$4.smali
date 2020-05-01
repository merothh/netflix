.class Lo/HttpAuthHandler$4;
.super Lo/aef;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HttpAuthHandler;->d(Ljava/lang/Runnable;Lio/reactivex/subjects/PublishSubject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aef<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic e:Lo/HttpAuthHandler;


# direct methods
.method constructor <init>(Lo/HttpAuthHandler;Ljava/lang/Runnable;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lo/HttpAuthHandler$4;->e:Lo/HttpAuthHandler;

    iput-object p2, p0, Lo/HttpAuthHandler$4;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Lo/aef;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/akj;)V
    .locals 1

    const-string p1, "nf_uiservices"

    const-string v0, "from homeLolomoLoadEnded: execute callback"

    .line 241
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p1, p0, Lo/HttpAuthHandler$4;->c:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 238
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lo/HttpAuthHandler$4;->d(Lo/akj;)V

    return-void
.end method
