.class final Lo/IG$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic e:Lo/IG;


# direct methods
.method constructor <init>(Lo/IG;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V
    .locals 0

    iput-object p1, p0, Lo/IG$ActionBar;->e:Lo/IG;

    iput-object p2, p0, Lo/IG$ActionBar;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/IG$ActionBar;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-boolean p4, p0, Lo/IG$ActionBar;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 12

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lo/IG$ActionBar;->e:Lo/IG;

    .line 75
    invoke-static {v0}, Lo/IG;->d(Lo/IG;)Lo/IJ$ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfe

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lo/IJ$ActionBar;->a(Lo/IJ$ActionBar;ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lo/IJ$ActionBar;

    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lo/IG;->c(Lo/IG;Lo/IJ$ActionBar;)V

    .line 80
    iget-object v0, p0, Lo/IG$ActionBar;->e:Lo/IG;

    invoke-static {v0}, Lo/IG;->c(Lo/IG;)Lo/FI;

    move-result-object v1

    iget-object v3, p0, Lo/IG$ActionBar;->b:Ljava/lang/String;

    iget-object v4, p0, Lo/IG$ActionBar;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v0, p0, Lo/IG$ActionBar;->e:Lo/IG;

    invoke-static {v0}, Lo/IG;->d(Lo/IG;)Lo/IJ$ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lo/IJ$ActionBar;->h()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lo/IG$ActionBar;->c:Z

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lo/FI;->d(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lo/IG$ActionBar;->e:Lo/IG;

    invoke-static {v0}, Lo/IG;->b(Lo/IG;)Lo/UpdateEngine;

    move-result-object v0

    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    new-instance v0, Lo/IG$ActionBar$1;

    invoke-direct {v0, p0}, Lo/IG$ActionBar$1;-><init>(Lo/IG$ActionBar;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 111
    sget-object v1, Lo/IG$ActionBar$3;->e:Lo/IG$ActionBar$3;

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 82
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
