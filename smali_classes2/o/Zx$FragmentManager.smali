.class public final Lo/Zx$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zx;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;
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
.field public final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/Zx;

.field public final synthetic c:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/Zx;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V
    .locals 0

    iput-object p1, p0, Lo/Zx$FragmentManager;->b:Lo/Zx;

    iput-object p2, p0, Lo/Zx$FragmentManager;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/Zx$FragmentManager;->a:Ljava/lang/String;

    iput-object p4, p0, Lo/Zx$FragmentManager;->c:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

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

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 117
    iget-object p1, p0, Lo/Zx$FragmentManager;->b:Lo/Zx;

    new-instance v1, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;-><init>(Lo/Zx$FragmentManager;Ljava/lang/ref/WeakReference;)V

    check-cast v1, Lo/alA;

    invoke-virtual {p1, v1}, Lo/Zx;->b(Lo/alA;)V

    return-void
.end method
