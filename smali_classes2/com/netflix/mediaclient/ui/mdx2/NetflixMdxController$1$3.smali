.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b(Lo/Build$BroadcastReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Build$BroadcastReceiver;

.field final synthetic e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;Lo/Build$BroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1$3;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1$3;->a:Lo/Build$BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 3

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1$3;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    new-instance v1, Lo/Mm;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1$3;->a:Lo/Build$BroadcastReceiver;

    check-cast v2, Lo/Build$LoaderManager;

    invoke-virtual {v2}, Lo/Build$LoaderManager;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/Mm;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lo/Ms;->a(Lo/Mm;)Lo/Ms;

    move-result-object v1

    .line 255
    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v1, p1, v2}, Lo/Ms;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 p1, 0x1

    .line 256
    invoke-virtual {v1, p1}, Lo/Ms;->setCancelable(Z)V

    .line 257
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1$3;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object v2, v1

    check-cast v2, Lo/PushbackReader;

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    .line 254
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->a(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lo/Ms;)V

    return-void
.end method
