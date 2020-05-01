.class public final Lo/Zx$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zx;->b(Ljava/lang/String;Z)Lio/reactivex/Observable;
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
.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field final synthetic e:Lo/Zx;


# direct methods
.method constructor <init>(Lo/Zx;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lo/Zx$Fragment;->e:Lo/Zx;

    iput-object p2, p0, Lo/Zx$Fragment;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lo/Zx$Fragment;->b:Z

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
            "Lo/Zx$StateListAnimator;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lo/Zx$Fragment;->e:Lo/Zx;

    new-instance v1, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;-><init>(Lo/Zx$Fragment;Ljava/lang/ref/WeakReference;)V

    check-cast v1, Lo/alA;

    invoke-virtual {p1, v1}, Lo/Zx;->b(Lo/alA;)V

    return-void
.end method
