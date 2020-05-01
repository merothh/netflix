.class public final Lo/Rc$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rc;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lo/Rc;


# direct methods
.method constructor <init>(Lo/Rc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lo/Rc$Application;->d:Lo/Rc;

    iput-object p2, p0, Lo/Rc$Application;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 1

    .line 136
    iget-object v0, p0, Lo/Rc$Application;->d:Lo/Rc;

    invoke-virtual {v0, p1}, Lo/Rc;->a(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 140
    iget-object v0, p0, Lo/Rc$Application;->d:Lo/Rc;

    invoke-virtual {v0}, Lo/Rc;->ad_()Z

    .line 141
    iget-object v0, p0, Lo/Rc$Application;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    return-void
.end method
