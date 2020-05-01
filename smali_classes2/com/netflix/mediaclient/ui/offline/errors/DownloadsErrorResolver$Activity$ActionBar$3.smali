.class final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar;->subscribe(Lio/reactivex/CompletableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lio/reactivex/CompletableEmitter;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar$3;->b:Lio/reactivex/CompletableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 123
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    check-cast v0, Lo/MessagePdu;

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar$3;->b:Lio/reactivex/CompletableEmitter;

    invoke-interface {v0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method
