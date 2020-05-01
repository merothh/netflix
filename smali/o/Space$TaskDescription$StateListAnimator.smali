.class final Lo/Space$TaskDescription$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Space$TaskDescription;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Lo/SimpleAdapter;Lio/reactivex/subjects/PublishSubject;Lio/reactivex/subjects/PublishSubject;Lo/SlidingDrawer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Space$TaskDescription;

.field final synthetic c:Lio/reactivex/subjects/PublishSubject;

.field final synthetic e:Lo/SlidingDrawer;


# direct methods
.method constructor <init>(Lo/Space$TaskDescription;Lio/reactivex/subjects/PublishSubject;Lo/SlidingDrawer;)V
    .locals 0

    iput-object p1, p0, Lo/Space$TaskDescription$StateListAnimator;->b:Lo/Space$TaskDescription;

    iput-object p2, p0, Lo/Space$TaskDescription$StateListAnimator;->c:Lio/reactivex/subjects/PublishSubject;

    iput-object p3, p0, Lo/Space$TaskDescription$StateListAnimator;->e:Lo/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 40
    iget-object p1, p0, Lo/Space$TaskDescription$StateListAnimator;->b:Lo/Space$TaskDescription;

    invoke-virtual {p1}, Lo/Space$TaskDescription;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 41
    iget-object p1, p0, Lo/Space$TaskDescription$StateListAnimator;->c:Lio/reactivex/subjects/PublishSubject;

    iget-object v0, p0, Lo/Space$TaskDescription$StateListAnimator;->b:Lo/Space$TaskDescription;

    invoke-virtual {v0}, Lo/Space$TaskDescription;->getAdapterPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lo/Space$TaskDescription$StateListAnimator;->b:Lo/Space$TaskDescription;

    invoke-virtual {p1}, Lo/Space$TaskDescription;->d()Lo/SimpleAdapter;

    move-result-object p1

    iget-object v0, p0, Lo/Space$TaskDescription$StateListAnimator;->b:Lo/Space$TaskDescription;

    invoke-virtual {v0}, Lo/Space$TaskDescription;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/SimpleAdapter;->a(I)V

    .line 43
    iget-object p1, p0, Lo/Space$TaskDescription$StateListAnimator;->e:Lo/SlidingDrawer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/Space$TaskDescription$StateListAnimator;->b:Lo/Space$TaskDescription;

    invoke-virtual {v0}, Lo/Space$TaskDescription;->d()Lo/SimpleAdapter;

    move-result-object v0

    iget-object v1, p0, Lo/Space$TaskDescription$StateListAnimator;->b:Lo/Space$TaskDescription;

    invoke-virtual {v1}, Lo/Space$TaskDescription;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/SimpleAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SlidingDrawer;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
