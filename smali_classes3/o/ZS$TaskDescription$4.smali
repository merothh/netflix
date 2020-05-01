.class final Lo/ZS$TaskDescription$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZS$TaskDescription;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ZS$TaskDescription;

.field final synthetic d:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lo/ZS$TaskDescription;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lo/ZS$TaskDescription$4;->a:Lo/ZS$TaskDescription;

    iput-object p2, p0, Lo/ZS$TaskDescription$4;->d:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 5

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lo/ZS$TaskDescription$4;->a:Lo/ZS$TaskDescription;

    iget-object v0, v0, Lo/ZS$TaskDescription;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    .line 43
    iget-object v3, p0, Lo/ZS$TaskDescription$4;->a:Lo/ZS$TaskDescription;

    iget-object v3, v3, Lo/ZS$TaskDescription;->b:Lo/ZS;

    invoke-static {v3, v1}, Lo/ZS;->d(Lo/ZS;I)Lo/SyncConstValue;

    move-result-object v3

    check-cast v3, Lo/ConfirmationCallback;

    .line 44
    new-instance v4, Lo/ZS$TaskDescription$4$5;

    invoke-direct {v4, p0}, Lo/ZS$TaskDescription$4$5;-><init>(Lo/ZS$TaskDescription$4;)V

    check-cast v4, Lo/zU;

    .line 42
    invoke-interface {v2, v3, v4}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
