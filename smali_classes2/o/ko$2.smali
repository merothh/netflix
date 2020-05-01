.class Lo/ko$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ko;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ko;

.field final synthetic d:Lio/reactivex/subjects/CompletableSubject;


# direct methods
.method constructor <init>(Lo/ko;Lio/reactivex/subjects/CompletableSubject;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lo/ko$2;->b:Lo/ko;

    iput-object p2, p0, Lo/ko$2;->d:Lio/reactivex/subjects/CompletableSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 698
    iget-object v0, p0, Lo/ko$2;->d:Lio/reactivex/subjects/CompletableSubject;

    new-instance v1, Lio/reactivex/internal/observers/CallbackCompletableObserver;

    new-instance v2, Lo/ko$2$4;

    invoke-direct {v2, p0}, Lo/ko$2$4;-><init>(Lo/ko$2;)V

    new-instance v3, Lo/ko$2$2;

    invoke-direct {v3, p0}, Lo/ko$2$2;-><init>(Lo/ko$2;)V

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/CompletableSubject;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
