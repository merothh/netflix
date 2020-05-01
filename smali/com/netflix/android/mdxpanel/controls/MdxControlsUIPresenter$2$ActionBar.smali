.class final Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a(Lo/Build;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;

.field final synthetic d:Lo/Build;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;Lo/Build;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$ActionBar;->c:Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;

    iput-object p2, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$ActionBar;->d:Lo/Build;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Long;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$ActionBar;->c:Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;

    iget-object p1, p1, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->f_()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$ActionBar;->c:Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;

    iget-object p1, p1, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2;->a:Lo/DeadSystemException;

    invoke-interface {p1}, Lo/DeadSystemException;->j()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIPresenter$2$ActionBar;->c(Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method
