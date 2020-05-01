.class final Lo/Xr$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xr;-><init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Xr;


# direct methods
.method constructor <init>(Lo/Xr;)V
    .locals 0

    iput-object p1, p0, Lo/Xr$5;->e:Lo/Xr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lo/Xr$5;->e:Lo/Xr;

    invoke-virtual {p1}, Lo/Xr;->p()Lio/reactivex/subjects/Subject;

    move-result-object p1

    .line 81
    sget-object v0, Lo/UU$ComponentCallbacks;->d:Lo/UU$ComponentCallbacks;

    .line 80
    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
