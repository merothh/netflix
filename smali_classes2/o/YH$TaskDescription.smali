.class final Lo/YH$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YH;->e(ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/YH;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lo/Yn;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/YH;ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/YH$TaskDescription;->a:Lo/YH;

    iput p2, p0, Lo/YH$TaskDescription;->e:I

    iput-object p3, p0, Lo/YH$TaskDescription;->d:Lo/Yn;

    iput-object p4, p0, Lo/YH$TaskDescription;->b:Ljava/lang/String;

    iput-object p5, p0, Lo/YH$TaskDescription;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 89
    iget-object p1, p0, Lo/YH$TaskDescription;->a:Lo/YH;

    invoke-static {p1}, Lo/YH;->d(Lo/YH;)Lo/YI;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/YI;->e()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 91
    iget-object v0, p0, Lo/YH$TaskDescription;->a:Lo/YH;

    const/4 v1, 0x0

    iget v2, p0, Lo/YH$TaskDescription;->e:I

    iget-object v3, p0, Lo/YH$TaskDescription;->d:Lo/Yn;

    iget-object v4, p0, Lo/YH$TaskDescription;->b:Ljava/lang/String;

    iget-object v5, p0, Lo/YH$TaskDescription;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lo/YH;->d(Lo/YH;Lo/YI;ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_1
    sget-object v0, Lcom/netflix/android/imageloader/api/BlurProcessor;->c:Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;

    iget-object v1, p0, Lo/YH$TaskDescription;->a:Lo/YH;

    invoke-static {v1}, Lo/YH;->c(Lo/YH;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;->c(Landroid/content/Context;)Lcom/netflix/android/imageloader/api/BlurProcessor;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->c:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    invoke-interface {v0, p1, v1}, Lcom/netflix/android/imageloader/api/BlurProcessor;->d(Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;)Lio/reactivex/Single;

    move-result-object p1

    .line 94
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lo/YH$TaskDescription;->a:Lo/YH;

    invoke-virtual {v0}, Lo/YH;->i()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/uber/autodispose/android/ViewScopeProvider;->b(Landroid/view/View;)Lcom/uber/autodispose/ScopeProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleConverter;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->as(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/SingleSubscribeProxy;

    .line 96
    new-instance v0, Lo/YH$TaskDescription$1;

    invoke-direct {v0, p0}, Lo/YH$TaskDescription$1;-><init>(Lo/YH$TaskDescription;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-interface {p1, v0}, Lcom/uber/autodispose/SingleSubscribeProxy;->e(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_1
    return-void
.end method
