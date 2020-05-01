.class public final Lo/aat$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aat;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lo/aat;


# direct methods
.method constructor <init>(Lo/aat;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/aat$Application;->d:Lo/aat;

    iput-object p2, p0, Lo/aat$Application;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 10

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lo/aat$Application;->d:Lo/aat;

    invoke-virtual {v0}, Lo/aat;->y()J

    move-result-wide v0

    .line 77
    iget-object v2, p0, Lo/aat$Application;->d:Lo/aat;

    invoke-static {v2}, Lo/aat;->b(Lo/aat;)Lo/aaF;

    move-result-object v2

    iget-object v3, p0, Lo/aat$Application;->c:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0, v1}, Lo/aaF;->c(Lo/Am;Ljava/lang/String;J)Lio/reactivex/Observable;

    move-result-object v4

    .line 78
    new-instance p1, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;-><init>(Lo/aat$Application;J)V

    move-object v7, p1

    check-cast v7, Lo/alA;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
