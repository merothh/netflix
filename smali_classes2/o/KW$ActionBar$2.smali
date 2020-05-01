.class final Lo/KW$ActionBar$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KW$ActionBar;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field final synthetic e:Lo/KW$ActionBar;


# direct methods
.method constructor <init>(Lo/KW$ActionBar;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lo/KW$ActionBar$2;->e:Lo/KW$ActionBar;

    iput-object p2, p0, Lo/KW$ActionBar$2;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/KW$ActionBar$2;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    iput-object p4, p0, Lo/KW$ActionBar$2;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 5

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lo/KW$ActionBar$2;->e:Lo/KW$ActionBar;

    iget-object v0, v0, Lo/KW$ActionBar;->e:Lo/KW;

    iget-object v1, p0, Lo/KW$ActionBar$2;->c:Ljava/lang/String;

    const-string v2, "genreId"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/KW$ActionBar$2;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    iget-object v3, p0, Lo/KW$ActionBar$2;->a:Lio/reactivex/ObservableEmitter;

    const-string v4, "subscriber"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, v1, v2, v3}, Lo/KW;->a(Lo/KW;Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
