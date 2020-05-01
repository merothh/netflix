.class final Lo/SimpleCursorAdapter$Activity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SimpleCursorAdapter$Activity;-><init>(Landroid/view/View;Lo/SimpleAdapter;Lio/reactivex/subjects/PublishSubject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lio/reactivex/subjects/PublishSubject;

.field final synthetic e:Lo/SimpleCursorAdapter$Activity;


# direct methods
.method constructor <init>(Lo/SimpleCursorAdapter$Activity;Lio/reactivex/subjects/PublishSubject;)V
    .locals 0

    iput-object p1, p0, Lo/SimpleCursorAdapter$Activity$1;->e:Lo/SimpleCursorAdapter$Activity;

    iput-object p2, p0, Lo/SimpleCursorAdapter$Activity$1;->d:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 27
    iget-object p1, p0, Lo/SimpleCursorAdapter$Activity$1;->e:Lo/SimpleCursorAdapter$Activity;

    invoke-virtual {p1}, Lo/SimpleCursorAdapter$Activity;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 28
    iget-object p1, p0, Lo/SimpleCursorAdapter$Activity$1;->d:Lio/reactivex/subjects/PublishSubject;

    iget-object v0, p0, Lo/SimpleCursorAdapter$Activity$1;->e:Lo/SimpleCursorAdapter$Activity;

    invoke-virtual {v0}, Lo/SimpleCursorAdapter$Activity;->getAdapterPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
