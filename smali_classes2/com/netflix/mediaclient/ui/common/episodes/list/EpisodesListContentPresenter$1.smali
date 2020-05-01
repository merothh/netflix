.class public final Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dh;-><init>(Lo/Dp;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/FH;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Dh;

.field final synthetic b:Lo/Dp;


# direct methods
.method public constructor <init>(Lo/Dh;Lo/Dp;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->a:Lo/Dh;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->b:Lo/Dp;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/FH;)V
    .locals 10

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lo/FH$TaskDescription;->d:Lo/FH$TaskDescription;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->b:Lo/Dp;

    invoke-interface {p1}, Lo/Dp;->b()V

    goto/16 :goto_0

    .line 37
    :cond_0
    instance-of v0, p1, Lo/FH$PendingIntent;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->b:Lo/Dp;

    invoke-interface {v0}, Lo/Dp;->e()V

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->b:Lo/Dp;

    .line 40
    check-cast p1, Lo/FH$PendingIntent;

    invoke-virtual {p1}, Lo/FH$PendingIntent;->c()Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lo/FH$PendingIntent;->d()I

    move-result v2

    .line 42
    invoke-virtual {p1}, Lo/FH$PendingIntent;->b()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-interface {v0, v1, v2, p1}, Lo/Dp;->a(Ljava/util/List;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 45
    :cond_1
    instance-of v0, p1, Lo/FH$Application;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 46
    check-cast p1, Lo/FH$Application;

    invoke-virtual {p1}, Lo/FH$Application;->d()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->b:Lo/Dp;

    .line 48
    invoke-virtual {p1}, Lo/FH$Application;->d()I

    move-result p1

    const/4 v1, 0x0

    .line 47
    invoke-interface {v0, p1, v1}, Lo/Dp;->d(II)V

    goto/16 :goto_0

    .line 52
    :cond_2
    instance-of v0, p1, Lo/FH$StateListAnimator;

    if-eqz v0, :cond_3

    .line 53
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->a:Lo/Dh;

    .line 54
    check-cast p1, Lo/FH$StateListAnimator;

    invoke-virtual {p1}, Lo/FH$StateListAnimator;->d()I

    move-result v3

    .line 55
    invoke-virtual {p1}, Lo/FH$StateListAnimator;->c()J

    move-result-wide v4

    .line 56
    invoke-virtual {p1}, Lo/FH$StateListAnimator;->e()Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-virtual {p1}, Lo/FH$StateListAnimator;->a()Ljava/lang/Integer;

    move-result-object v7

    .line 58
    invoke-virtual {p1}, Lo/FH$StateListAnimator;->b()Ljava/lang/Integer;

    move-result-object v8

    .line 59
    invoke-virtual {p1}, Lo/FH$StateListAnimator;->h()Ljava/lang/Long;

    move-result-object v9

    .line 53
    invoke-virtual/range {v2 .. v9}, Lo/Dh;->d(IJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    goto :goto_0

    .line 61
    :cond_3
    instance-of v0, p1, Lo/FH$ActionBar;

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->a:Lo/Dh;

    check-cast p1, Lo/FH$ActionBar;

    invoke-virtual {p1}, Lo/FH$ActionBar;->c()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/Dh;->a(Z)V

    goto :goto_0

    .line 64
    :cond_4
    instance-of v0, p1, Lo/FH$LoaderManager;

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->b:Lo/Dp;

    check-cast p1, Lo/FH$LoaderManager;

    invoke-virtual {p1}, Lo/FH$LoaderManager;->b()I

    move-result p1

    invoke-interface {v0, p1}, Lo/Dp;->b(I)V

    goto :goto_0

    .line 67
    :cond_5
    instance-of v0, p1, Lo/FH$SharedElementCallback;

    if-eqz v0, :cond_6

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->b:Lo/Dp;

    invoke-interface {v0}, Lo/Dp;->j()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 69
    check-cast p1, Lo/FH$SharedElementCallback;

    invoke-virtual {p1}, Lo/FH$SharedElementCallback;->c()Lo/Ba;

    move-result-object p1

    invoke-interface {p1}, Lo/Ba;->as()I

    move-result p1

    if-eq p1, v0, :cond_8

    .line 70
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->b:Lo/Dp;

    sget-object v0, Lo/FP$TaskDescription;->c:Lo/FP$TaskDescription;

    invoke-interface {p1, v0}, Lo/Dp;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_6
    sget-object v0, Lo/FH$TaskStackBuilder;->b:Lo/FH$TaskStackBuilder;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->b:Lo/Dp;

    invoke-interface {p1}, Lo/Dp;->f()V

    goto :goto_0

    .line 76
    :cond_7
    instance-of v0, p1, Lo/FH$ClipData;

    if-eqz v0, :cond_8

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->b:Lo/Dp;

    check-cast p1, Lo/FH$ClipData;

    invoke-virtual {p1}, Lo/FH$ClipData;->b()I

    move-result v1

    invoke-virtual {p1}, Lo/FH$ClipData;->d()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lo/Dp;->d(II)V

    :cond_8
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lo/FH;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListContentPresenter$1;->a(Lo/FH;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
