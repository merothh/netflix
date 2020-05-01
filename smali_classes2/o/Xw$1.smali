.class final Lo/Xw$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xw;-><init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayExperience;Lio/reactivex/subjects/Subject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Xw;

.field final synthetic d:Lcom/netflix/model/leafs/PostPlayItem;


# direct methods
.method constructor <init>(Lo/Xw;Lcom/netflix/model/leafs/PostPlayItem;)V
    .locals 0

    iput-object p1, p0, Lo/Xw$1;->b:Lo/Xw;

    iput-object p2, p0, Lo/Xw$1;->d:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lo/Xw$1;->b:Lo/Xw;

    invoke-static {p1}, Lo/Xw;->a(Lo/Xw;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    new-instance v0, Lo/UU$TypedArray;

    iget-object v1, p0, Lo/Xw$1;->d:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-direct {v0, v1}, Lo/UU$TypedArray;-><init>(Lcom/netflix/model/leafs/PostPlayItem;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lo/Xw$1;->b:Lo/Xw;

    invoke-virtual {p1}, Lo/Xw;->b()V

    return-void
.end method
