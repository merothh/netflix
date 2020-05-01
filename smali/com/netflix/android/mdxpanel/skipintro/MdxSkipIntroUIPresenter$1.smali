.class public final Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HardwarePropertiesManager;-><init>(Lo/GraphicsEnvironment;Lio/reactivex/Observable;)V
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
.field final synthetic d:Lo/GraphicsEnvironment;


# direct methods
.method public constructor <init>(Lo/GraphicsEnvironment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIPresenter$1;->d:Lo/GraphicsEnvironment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/Build;)V
    .locals 2

    const-string v0, "stateEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v0, p1, Lo/Build$ContentResolver;

    if-eqz v0, :cond_0

    .line 21
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIPresenter$1;->d:Lo/GraphicsEnvironment;

    invoke-interface {p1}, Lo/GraphicsEnvironment;->g()V

    goto :goto_1

    .line 24
    :cond_0
    instance-of v0, p1, Lo/Build$ServiceConnection;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    instance-of v0, p1, Lo/Build$DialogInterface;

    if-eqz v0, :cond_2

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIPresenter$1;->d:Lo/GraphicsEnvironment;

    invoke-interface {p1}, Lo/GraphicsEnvironment;->c()V

    goto :goto_1

    .line 29
    :cond_2
    instance-of v0, p1, Lo/Build$PackageItemInfo;

    if-eqz v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIPresenter$1;->d:Lo/GraphicsEnvironment;

    check-cast p1, Lo/Build$PackageItemInfo;

    invoke-virtual {p1}, Lo/Build$PackageItemInfo;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/Build$PackageItemInfo;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/GraphicsEnvironment;->c(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_3
    instance-of p1, p1, Lo/Build$ColorStateList;

    if-eqz p1, :cond_4

    .line 34
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIPresenter$1;->d:Lo/GraphicsEnvironment;

    invoke-interface {p1}, Lo/GraphicsEnvironment;->h()V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lo/Build;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/skipintro/MdxSkipIntroUIPresenter$1;->c(Lo/Build;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
