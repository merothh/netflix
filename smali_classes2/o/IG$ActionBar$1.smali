.class final Lo/IG$ActionBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IG$ActionBar;->run(Lo/Am;)V
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
        "Lio/reactivex/functions/Consumer<",
        "Lo/FC;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/IG$ActionBar;


# direct methods
.method constructor <init>(Lo/IG$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lo/IG$ActionBar$1;->d:Lo/IG$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lo/FC;

    invoke-virtual {p0, p1}, Lo/IG$ActionBar$1;->c(Lo/FC;)V

    return-void
.end method

.method public final c(Lo/FC;)V
    .locals 13

    .line 83
    instance-of v0, p1, Lo/FC$Application;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lo/IG$ActionBar$1;->d:Lo/IG$ActionBar;

    iget-object v0, v0, Lo/IG$ActionBar;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lo/IG$ActionBar$1;->d:Lo/IG$ActionBar;

    iget-object v0, v0, Lo/IG$ActionBar;->e:Lo/IG;

    .line 86
    iget-object v1, p0, Lo/IG$ActionBar$1;->d:Lo/IG$ActionBar;

    iget-object v1, v1, Lo/IG$ActionBar;->e:Lo/IG;

    invoke-static {v1}, Lo/IG;->d(Lo/IG;)Lo/IJ$ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 88
    iget-object v1, p0, Lo/IG$ActionBar$1;->d:Lo/IG$ActionBar;

    iget-object v1, v1, Lo/IG$ActionBar;->e:Lo/IG;

    invoke-static {v1}, Lo/IG;->d(Lo/IG;)Lo/IJ$ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lo/IJ$ActionBar;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    move-object v10, v1

    goto :goto_1

    .line 89
    :cond_0
    move-object v1, p1

    check-cast v1, Lo/FC$Application;

    invoke-virtual {v1}, Lo/FC$Application;->c()Lo/Bc;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lo/Bb;

    invoke-interface {v1}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 90
    check-cast p1, Lo/FC$Application;

    invoke-virtual {p1}, Lo/FC$Application;->c()Lo/Bc;

    move-result-object v7

    const/16 v11, 0x6f

    const/4 v12, 0x0

    .line 86
    invoke-static/range {v2 .. v12}, Lo/IJ$ActionBar;->a(Lo/IJ$ActionBar;ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lo/IJ$ActionBar;

    move-result-object p1

    .line 85
    invoke-static {v0, p1}, Lo/IG;->c(Lo/IG;Lo/IJ$ActionBar;)V

    goto :goto_2

    .line 89
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.servicemgr.interface_.details.ShowDetails"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_2
    iget-object v0, p0, Lo/IG$ActionBar$1;->d:Lo/IG$ActionBar;

    iget-object v0, v0, Lo/IG$ActionBar;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_4

    .line 95
    iget-object v0, p0, Lo/IG$ActionBar$1;->d:Lo/IG$ActionBar;

    iget-object v0, v0, Lo/IG$ActionBar;->e:Lo/IG;

    .line 96
    iget-object v1, p0, Lo/IG$ActionBar$1;->d:Lo/IG$ActionBar;

    iget-object v1, v1, Lo/IG$ActionBar;->e:Lo/IG;

    invoke-static {v1}, Lo/IG;->d(Lo/IG;)Lo/IJ$ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 98
    check-cast p1, Lo/FC$Application;

    invoke-virtual {p1}, Lo/FC$Application;->c()Lo/Bc;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xee

    const/4 v12, 0x0

    .line 96
    invoke-static/range {v2 .. v12}, Lo/IJ$ActionBar;->a(Lo/IJ$ActionBar;ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lo/IJ$ActionBar;

    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Lo/IG;->c(Lo/IG;Lo/IJ$ActionBar;)V

    goto :goto_2

    .line 102
    :cond_3
    instance-of v0, p1, Lo/FC$TaskDescription;

    if-eqz v0, :cond_4

    .line 103
    iget-object v0, p0, Lo/IG$ActionBar$1;->d:Lo/IG$ActionBar;

    iget-object v0, v0, Lo/IG$ActionBar;->e:Lo/IG;

    .line 104
    iget-object v1, p0, Lo/IG$ActionBar$1;->d:Lo/IG$ActionBar;

    iget-object v1, v1, Lo/IG$ActionBar;->e:Lo/IG;

    invoke-static {v1}, Lo/IG;->d(Lo/IG;)Lo/IJ$ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    .line 106
    check-cast p1, Lo/FC$TaskDescription;

    invoke-virtual {p1}, Lo/FC$TaskDescription;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    .line 104
    invoke-static/range {v2 .. v12}, Lo/IJ$ActionBar;->a(Lo/IJ$ActionBar;ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lo/IJ$ActionBar;

    move-result-object p1

    .line 103
    invoke-static {v0, p1}, Lo/IG;->c(Lo/IG;Lo/IJ$ActionBar;)V

    :cond_4
    :goto_2
    return-void
.end method
