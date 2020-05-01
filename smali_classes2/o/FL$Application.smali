.class public final Lo/FL$Application;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL;->a(Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLio/reactivex/ObservableEmitter;Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lio/reactivex/ObservableEmitter;

.field public final synthetic d:Lo/alA;

.field private final e:Lo/alN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alN<",
            "Lo/Bc;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ObservableEmitter;Lo/alA;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lo/FL$Application;->c:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lo/FL$Application;->d:Lo/alA;

    invoke-direct {p0}, Lo/cq;-><init>()V

    .line 419
    new-instance p1, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPPrimaryData$1$onResponse$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPPrimaryData$1$onResponse$1;-><init>(Lo/FL$Application;)V

    check-cast p1, Lo/alN;

    iput-object p1, p0, Lo/FL$Application;->e:Lo/alN;

    return-void
.end method


# virtual methods
.method public b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-super {p0, p1, p2}, Lo/cq;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 443
    iget-object v0, p0, Lo/FL$Application;->e:Lo/alN;

    invoke-interface {v0, p1, p2}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-super {p0, p1, p2}, Lo/cq;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 438
    iget-object v0, p0, Lo/FL$Application;->e:Lo/alN;

    invoke-interface {v0, p1, p2}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
