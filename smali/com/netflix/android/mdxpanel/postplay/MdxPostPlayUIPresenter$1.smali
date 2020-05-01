.class public final Lcom/netflix/android/mdxpanel/postplay/MdxPostPlayUIPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FileUriExposedException;-><init>(Lo/FileUtils;Lio/reactivex/Observable;)V
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
.field final synthetic c:Lo/FileUtils;


# direct methods
.method public constructor <init>(Lo/FileUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/postplay/MdxPostPlayUIPresenter$1;->c:Lo/FileUtils;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/Build;)V
    .locals 7

    const-string v0, "stateEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v0, p1, Lo/Build$TaskStackBuilder;

    if-eqz v0, :cond_0

    .line 21
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/postplay/MdxPostPlayUIPresenter$1;->c:Lo/FileUtils;

    invoke-interface {p1}, Lo/FileUtils;->j()V

    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lo/Build$IntentSender;

    if-eqz v0, :cond_1

    .line 25
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/postplay/MdxPostPlayUIPresenter$1;->c:Lo/FileUtils;

    invoke-interface {p1}, Lo/FileUtils;->b()V

    goto :goto_0

    .line 28
    :cond_1
    instance-of v0, p1, Lo/Build$ApplicationInfo;

    if-eqz v0, :cond_2

    .line 29
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/postplay/MdxPostPlayUIPresenter$1;->c:Lo/FileUtils;

    .line 30
    check-cast p1, Lo/Build$ApplicationInfo;

    invoke-virtual {p1}, Lo/Build$ApplicationInfo;->a()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lo/Build$ApplicationInfo;->h()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {p1}, Lo/Build$ApplicationInfo;->e()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {p1}, Lo/Build$ApplicationInfo;->c()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {p1}, Lo/Build$ApplicationInfo;->d()Z

    move-result v6

    .line 29
    invoke-interface/range {v1 .. v6}, Lo/FileUtils;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/postplay/MdxPostPlayUIPresenter$1;->c:Lo/FileUtils;

    invoke-interface {p1}, Lo/FileUtils;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lo/Build;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/postplay/MdxPostPlayUIPresenter$1;->c(Lo/Build;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
