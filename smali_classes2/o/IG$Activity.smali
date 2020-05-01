.class final Lo/IG$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IG;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic d:Lo/IG;


# direct methods
.method constructor <init>(Lo/IG;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/IG$Activity;->d:Lo/IG;

    iput-object p2, p0, Lo/IG$Activity;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lo/IG$Activity;->d:Lo/IG;

    invoke-static {v0}, Lo/IG;->c(Lo/IG;)Lo/FI;

    move-result-object v0

    iget-object v1, p0, Lo/IG$Activity;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lo/FI;->d(Lo/Am;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lo/IG$Activity;->d:Lo/IG;

    invoke-static {v0}, Lo/IG;->b(Lo/IG;)Lo/UpdateEngine;

    move-result-object v0

    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 36
    new-instance v0, Lo/IG$Activity$2;

    invoke-direct {v0, p0}, Lo/IG$Activity$2;-><init>(Lo/IG$Activity;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
