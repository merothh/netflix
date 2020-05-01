.class public final Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DeadObjectException;-><init>(Lo/FileBridge;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Build;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/FileBridge;


# direct methods
.method public constructor <init>(Lo/FileBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;->c:Lo/FileBridge;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/Build;)V
    .locals 4

    const-string v0, "stateEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v0, p1, Lo/Build$TaskStackBuilder;

    if-eqz v0, :cond_0

    .line 21
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;->c:Lo/FileBridge;

    invoke-interface {p1}, Lo/FileBridge;->h()V

    goto/16 :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lo/Build$Intent;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 25
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;->c:Lo/FileBridge;

    invoke-interface {p1, v1}, Lo/FileBridge;->a(Z)V

    goto/16 :goto_0

    .line 28
    :cond_1
    instance-of v0, p1, Lo/Build$Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 29
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;->c:Lo/FileBridge;

    invoke-interface {p1, v2}, Lo/FileBridge;->a(Z)V

    goto/16 :goto_0

    .line 32
    :cond_2
    instance-of v0, p1, Lo/Build$SharedElementCallback;

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;->c:Lo/FileBridge;

    check-cast p1, Lo/Build$SharedElementCallback;

    invoke-virtual {p1}, Lo/Build$SharedElementCallback;->e()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/FileBridge;->e(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    :cond_3
    instance-of v0, p1, Lo/Build$Theme;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 40
    :cond_4
    instance-of v0, p1, Lo/Build$Application;

    if-eqz v0, :cond_5

    .line 41
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;->c:Lo/FileBridge;

    invoke-interface {v0}, Lo/FileBridge;->m_()V

    .line 42
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;->c:Lo/FileBridge;

    .line 43
    check-cast p1, Lo/Build$Application;

    invoke-virtual {p1}, Lo/Build$Application;->d()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;->c()Ljava/lang/CharSequence;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lo/Build$Application;->d()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;->a()Ljava/lang/CharSequence;

    move-result-object v2

    .line 45
    invoke-virtual {p1}, Lo/Build$Application;->d()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;->b()Landroid/net/Uri;

    move-result-object v3

    .line 46
    invoke-virtual {p1}, Lo/Build$Application;->d()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;->g()Ljava/lang/Integer;

    move-result-object p1

    .line 42
    invoke-interface {v0, v1, v2, v3, p1}, Lo/FileBridge;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/Integer;)V

    goto :goto_0

    .line 50
    :cond_5
    instance-of v0, p1, Lo/Build$CursorFactory;

    if-eqz v0, :cond_6

    .line 51
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;->c:Lo/FileBridge;

    invoke-interface {p1, v2}, Lo/FileBridge;->d(Z)V

    goto :goto_0

    .line 54
    :cond_6
    instance-of v0, p1, Lo/Build$Bitmap;

    if-eqz v0, :cond_7

    .line 55
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;->c:Lo/FileBridge;

    invoke-interface {p1, v1}, Lo/FileBridge;->d(Z)V

    goto :goto_0

    .line 58
    :cond_7
    instance-of v0, p1, Lo/Build$DatabaseErrorHandler;

    if-eqz v0, :cond_8

    .line 59
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;->c:Lo/FileBridge;

    check-cast p1, Lo/Build$DatabaseErrorHandler;

    invoke-virtual {p1}, Lo/Build$DatabaseErrorHandler;->a()F

    move-result v1

    invoke-virtual {p1}, Lo/Build$DatabaseErrorHandler;->c()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lo/FileBridge;->e(FI)V

    :cond_8
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lo/Build;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/details/MdxDetailsUIPresenter$1;->d(Lo/Build;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
