.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->e(Lo/CommonClock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/CommonClock;

.field final synthetic b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;Lo/CommonClock;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$Activity;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$Activity;->a:Lo/CommonClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 5

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$Activity;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 477
    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    .line 478
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$Activity;->a:Lo/CommonClock;

    check-cast v1, Lo/CommonClock$ActionBar;

    invoke-virtual {v1}, Lo/CommonClock$ActionBar;->a()Ljava/lang/String;

    move-result-object v1

    .line 479
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$Activity;->a:Lo/CommonClock;

    check-cast v2, Lo/CommonClock$ActionBar;

    invoke-virtual {v2}, Lo/CommonClock$ActionBar;->d()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 477
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/Dn$Activity;->e(Ljava/lang/String;Ljava/lang/String;J)Lo/Dn;

    move-result-object v0

    check-cast v0, Lo/PushbackReader;

    .line 476
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    return-void
.end method
