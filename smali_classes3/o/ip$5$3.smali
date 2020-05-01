.class Lo/ip$5$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ip$5;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ip$5;


# direct methods
.method constructor <init>(Lo/ip$5;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lo/ip$5$3;->b:Lo/ip$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lo/ip$5$3;->b:Lo/ip$5;

    iget-object v0, v0, Lo/ip$5;->d:Lo/ip;

    invoke-virtual {v0}, Lo/ip;->c()Lio/reactivex/ObservableEmitter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "NetflixModuleInstaller"

    const-string v0, "onFailure no ui request pending for languages"

    .line 147
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
