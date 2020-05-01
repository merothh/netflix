.class final Lo/FI$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FI;->d(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)Lio/reactivex/Observable;
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
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic d:Lo/Am;

.field final synthetic e:Lo/FI;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/FI;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Am;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/FI$Dialog;->e:Lo/FI;

    iput-object p2, p0, Lo/FI$Dialog;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p3, p0, Lo/FI$Dialog;->d:Lo/Am;

    iput-object p4, p0, Lo/FI$Dialog;->a:Ljava/lang/String;

    iput-boolean p5, p0, Lo/FI$Dialog;->b:Z

    iput-object p6, p0, Lo/FI$Dialog;->j:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lo/FI$Dialog;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lo/FK;->d:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 125
    :cond_0
    iget-object v0, p0, Lo/FI$Dialog;->d:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lo/FI$Dialog;->a:Ljava/lang/String;

    .line 127
    iget-object v3, p0, Lo/FI$Dialog;->j:Ljava/lang/String;

    const/4 v4, 0x1

    .line 129
    iget-boolean v0, p0, Lo/FI$Dialog;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    :goto_0
    move-object v5, v0

    .line 130
    new-instance v0, Lo/FI$FragmentManager;

    iget-object v6, p0, Lo/FI$Dialog;->e:Lo/FI;

    iget-object v7, p0, Lo/FI$Dialog;->d:Lo/Am;

    iget-object v8, p0, Lo/FI$Dialog;->a:Ljava/lang/String;

    invoke-direct {v0, v6, p1, v7, v8}, Lo/FI$FragmentManager;-><init>(Lo/FI;Lio/reactivex/ObservableEmitter;Lo/Am;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Lo/zU;

    .line 125
    invoke-interface/range {v1 .. v6}, Lo/zG;->b(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    goto :goto_2

    .line 117
    :cond_2
    iget-object v0, p0, Lo/FI$Dialog;->d:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lo/FI$Dialog;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 121
    iget-boolean v0, p0, Lo/FI$Dialog;->b:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    :goto_1
    move-object v5, v0

    .line 122
    new-instance v0, Lo/FI$ActionBar;

    iget-object v6, p0, Lo/FI$Dialog;->e:Lo/FI;

    iget-object v7, p0, Lo/FI$Dialog;->d:Lo/Am;

    iget-object v8, p0, Lo/FI$Dialog;->a:Ljava/lang/String;

    invoke-direct {v0, v6, p1, v7, v8}, Lo/FI$ActionBar;-><init>(Lo/FI;Lio/reactivex/ObservableEmitter;Lo/Am;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Lo/zU;

    .line 117
    invoke-interface/range {v1 .. v6}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    .line 137
    :goto_2
    iget-object p1, p0, Lo/FI$Dialog;->d:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    new-instance v0, Lo/AutofillService;

    iget-object v1, p0, Lo/FI$Dialog;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lo/FI$Dialog;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/AutofillService;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    check-cast v0, Lo/ConfirmationCallback;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    return-void
.end method
