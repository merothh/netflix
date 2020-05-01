.class public final Lo/Hy$Application;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Hy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private a:Lo/OY;

.field private final b:Lo/UpdateEngine;

.field private final c:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Pe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/UpdateEngine;)V
    .locals 1

    const-string v0, "eventBusFactory"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lo/FU;-><init>()V

    iput-object p1, p0, Lo/Hy$Application;->b:Lo/UpdateEngine;

    .line 80
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "PublishSubject.create<NotificationsUIEventV2>()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Hy$Application;->c:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final a(Lo/Pa;)V
    .locals 2

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lo/Hy$Application;->a:Lo/OY;

    if-nez v0, :cond_0

    const-string v1, "notificationViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lo/OY;->b(Lo/Pa;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 4

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lo/eq;->a:Lo/eq$Activity;

    invoke-virtual {v0}, Lo/eq$Activity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lo/GS$StateListAnimator;->b:I

    goto :goto_0

    :cond_0
    sget v0, Lo/GS$StateListAnimator;->a:I

    .line 93
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    .line 101
    new-instance v1, Lo/OY;

    .line 102
    move-object v2, v0

    check-cast v2, Lo/UnicodeScript;

    .line 103
    iget-object v3, p0, Lo/Hy$Application;->c:Lio/reactivex/subjects/PublishSubject;

    .line 101
    invoke-direct {v1, v2, v3, p1}, Lo/OY;-><init>(Lo/UnicodeScript;Lio/reactivex/subjects/PublishSubject;Landroid/view/View;)V

    iput-object v1, p0, Lo/Hy$Application;->a:Lo/OY;

    .line 107
    iget-object p1, p0, Lo/Hy$Application;->c:Lio/reactivex/subjects/PublishSubject;

    .line 108
    iget-object v1, p0, Lo/Hy$Application;->b:Lo/UpdateEngine;

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v1}, Lio/reactivex/subjects/PublishSubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 109
    new-instance v1, Lo/Hy$Application$Application;

    invoke-direct {v1, v0}, Lo/Hy$Application$Application;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method
