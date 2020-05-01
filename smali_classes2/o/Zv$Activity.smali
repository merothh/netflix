.class final Lo/Zv$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zv;->i()Lio/reactivex/Observable;
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
.field final synthetic e:Lo/Zv;


# direct methods
.method constructor <init>(Lo/Zv;)V
    .locals 0

    iput-object p1, p0, Lo/Zv$Activity;->e:Lo/Zv;

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
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object p1

    const-string v1, "BaseNetflixApp.getInstance().nfAgentProvider"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lo/CameraPrewarmService;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object p1, p0, Lo/Zv$Activity;->e:Lo/Zv;

    invoke-static {p1, v0}, Lo/Zv;->d(Lo/Zv;Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Lo/Zv$Activity$2;

    invoke-direct {v1, p0, v0}, Lo/Zv$Activity$2;-><init>(Lo/Zv$Activity;Ljava/lang/ref/WeakReference;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lo/CameraPrewarmService;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
