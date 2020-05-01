.class final Lo/UF$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UF;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;ZZ)Lio/reactivex/Observable;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/UF;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lo/UF;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lo/UF$StateListAnimator;->b:Lo/UF;

    iput-object p2, p0, Lo/UF$StateListAnimator;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lo/UF$StateListAnimator;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lkotlin/Pair<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lcom/netflix/model/leafs/PostPlayExperience;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lo/UF$StateListAnimator;->b:Lo/UF;

    iget-object v1, p0, Lo/UF$StateListAnimator;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lo/UF$StateListAnimator;->d:Z

    invoke-static {v0, v1, v2, p1}, Lo/UF;->e(Lo/UF;Ljava/lang/String;ZLio/reactivex/ObservableEmitter;)V

    return-void
.end method
