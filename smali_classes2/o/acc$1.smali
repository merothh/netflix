.class Lo/acc$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acc;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

.field final synthetic b:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic c:Lo/acc;

.field final synthetic d:Lo/Ik;


# direct methods
.method constructor <init>(Lo/acc;Lo/Ik;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lo/acc$1;->c:Lo/acc;

    iput-object p2, p0, Lo/acc$1;->d:Lo/Ik;

    iput-object p3, p0, Lo/acc$1;->b:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p4, p0, Lo/acc$1;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1087
    iget-object v0, p0, Lo/acc$1;->d:Lo/Ik;

    iget-object v1, p0, Lo/acc$1;->b:Lcom/netflix/mediaclient/android/app/Status;

    iget-object v2, p0, Lo/acc$1;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lo/Ik;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-void
.end method
