.class final Lcom/netflix/android/mdxpanel/MdxPanelController$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/MdxPanelController;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Lo/UnicodeScript;Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/CommonClock;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/android/mdxpanel/MdxPanelController;

.field final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/MdxPanelController;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$5;->a:Lcom/netflix/android/mdxpanel/MdxPanelController;

    iput-object p2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$5;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/CommonClock;)V
    .locals 5

    .line 270
    instance-of v0, p1, Lo/CommonClock$Fragment;

    if-eqz v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$5;->a:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->c(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->j()V

    goto :goto_1

    .line 274
    :cond_0
    instance-of v0, p1, Lo/CommonClock$TaskStackBuilder;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$5;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_1

    check-cast p1, Lo/CommonClock$TaskStackBuilder;

    invoke-virtual {p1}, Lo/CommonClock$TaskStackBuilder;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$5;->a:Lcom/netflix/android/mdxpanel/MdxPanelController;

    .line 279
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$5;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v2

    .line 280
    new-instance v3, Lo/Build$CursorFactory;

    const-string v4, "it"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Lio/reactivex/Observable;

    invoke-direct {v3, v4}, Lo/Build$CursorFactory;-><init>(Lio/reactivex/Observable;)V

    check-cast v3, Lo/Build;

    invoke-virtual {v0, v3}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d(Lo/Build;)V

    .line 281
    check-cast p1, Lo/CommonClock$TaskStackBuilder;

    invoke-virtual {p1}, Lo/CommonClock$TaskStackBuilder;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 279
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    goto :goto_1

    .line 286
    :cond_2
    instance-of v0, p1, Lo/CommonClock$AssistContent;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lo/CommonClock$PictureInPictureParams;

    if-eqz v0, :cond_4

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$5;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_4

    .line 289
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 290
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$5;->a:Lcom/netflix/android/mdxpanel/MdxPanelController;

    new-instance v1, Lo/Build$Bitmap;

    instance-of p1, p1, Lo/CommonClock$PictureInPictureParams;

    invoke-direct {v1, p1}, Lo/Build$Bitmap;-><init>(Z)V

    check-cast v1, Lo/Build;

    invoke-virtual {v0, v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d(Lo/Build;)V

    .line 291
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$5;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x0

    check-cast v0, Lio/reactivex/subjects/PublishSubject;

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Lo/CommonClock;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$5;->a(Lo/CommonClock;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
