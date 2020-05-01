.class public final Lo/Zx$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zx;->d(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic a:Lo/Zx;

.field public final synthetic b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/Zx;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;)V
    .locals 0

    iput-object p1, p0, Lo/Zx$Application;->a:Lo/Zx;

    iput-object p2, p0, Lo/Zx$Application;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/Zx$Application;->e:Ljava/lang/String;

    iput-boolean p4, p0, Lo/Zx$Application;->c:Z

    iput-object p5, p0, Lo/Zx$Application;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

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
            "Lo/Zx$TaskDescription;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lo/Zx$Application;->a:Lo/Zx;

    new-instance v1, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchMovieDetails$2$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchMovieDetails$2$1;-><init>(Lo/Zx$Application;Ljava/lang/ref/WeakReference;)V

    check-cast v1, Lo/alA;

    invoke-virtual {p1, v1}, Lo/Zx;->b(Lo/alA;)V

    return-void
.end method
