.class Lo/bM$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bV$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bM;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/bM;


# direct methods
.method constructor <init>(Lo/bM;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lo/bM$5;->e:Lo/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/bV;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 675
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "NetflixService"

    const-string v0, "agentsToInitOnErrorCallback agent inited: %s "

    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
