.class final Lo/acw$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acw;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/acw;


# direct methods
.method constructor <init>(Lo/acw;)V
    .locals 0

    iput-object p1, p0, Lo/acw$TaskDescription;->d:Lo/acw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lo/acw$TaskDescription;->d:Lo/acw;

    invoke-virtual {p1}, Lo/acw;->m()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    iget-object v0, p0, Lo/acw$TaskDescription;->d:Lo/acw;

    invoke-virtual {v0}, Lo/acw;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->getLatestPlanID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 38
    sget-object p1, Lo/acn;->d:Lo/acn;

    iget-object v0, p0, Lo/acw$TaskDescription;->d:Lo/acw;

    invoke-virtual {v0}, Lo/acw;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->getLatestPlanID()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/acn;->d(I)V

    return-void
.end method
