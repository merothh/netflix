.class final Lo/JM$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JM;->c()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/JM;


# direct methods
.method constructor <init>(Lo/JM;)V
    .locals 0

    iput-object p1, p0, Lo/JM$PendingIntent;->e:Lo/JM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/netflix/mediaclient/service/user/UserAgent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object p1

    const-string v1, "BaseNetflixApp.getInstance().nfAgentProvider"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lo/CameraPrewarmService;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lo/JM$PendingIntent;->e:Lo/JM;

    invoke-static {v1, v0, p1}, Lo/JM;->c(Lo/JM;Ljava/lang/ref/WeakReference;Lo/CameraPrewarmService;)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lo/JM$PendingIntent$3;

    invoke-direct {v1, p0, v0, p1}, Lo/JM$PendingIntent$3;-><init>(Lo/JM$PendingIntent;Ljava/lang/ref/WeakReference;Lo/CameraPrewarmService;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lo/CameraPrewarmService;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
