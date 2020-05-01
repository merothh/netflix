.class final Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$Activity;->a:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$Activity;->a:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
