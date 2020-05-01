.class public final Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$ActionBar;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 483
    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$ActionBar;->a:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$ActionBar;->a:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-static {p1, p2}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->a(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;F)V

    .line 502
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$ActionBar;->a:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->a(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)V

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$ActionBar;->a:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    iget-object p1, p1, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->g(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object v0, Lo/CommonClock$Activity;->b:Lo/CommonClock$Activity;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 487
    :cond_1
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$ActionBar;->a:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    iget-object p1, p1, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->g(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object v0, Lo/CommonClock$Application;->b:Lo/CommonClock$Application;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 490
    :goto_0
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$ActionBar;->a:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    iget-object p1, p1, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->i(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
