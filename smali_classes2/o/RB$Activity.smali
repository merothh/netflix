.class public final Lo/RB$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RB;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lo/RB;


# direct methods
.method constructor <init>(Lo/RB;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lo/RB$Activity;->d:Lo/RB;

    iput-object p2, p0, Lo/RB$Activity;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 1

    .line 165
    iget-object v0, p0, Lo/RB$Activity;->d:Lo/RB;

    invoke-virtual {v0, p1}, Lo/RB;->a(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 169
    iget-object v0, p0, Lo/RB$Activity;->d:Lo/RB;

    invoke-virtual {v0}, Lo/RB;->ad_()Z

    .line 170
    iget-object v0, p0, Lo/RB$Activity;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    return-void
.end method
